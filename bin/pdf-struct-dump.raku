#!/usr/bin/env perl6
use v6;

use PDF::Class;
use PDF::Annot;
use PDF::Catalog;
use PDF::MCR;
use PDF::NumberTree :NumberTree;
use PDF::OBJR;
use PDF::Page;
use PDF::StructTreeRoot;
use PDF::StructElem :StructElemChild;

use PDF::Font::Loader;
use PDF::Font::Loader::Dict;
use PDF::Content;
use PDF::Content::Graphics;
use PDF::IO;

constant StandardTag = PDF::StructTreeRoot::StandardStructureType;
subset Number of Int where { !.defined || $_ > 0 };

my $*class-map;
my StandardTag %*role-map;
my NumberTree $*parent-tree;

sub html-escape(Str $_) {
    .trans:
        /\&/ => '&amp;',
        /\</ => '&lt;',
        /\>/ => '&gt;',
}

sub MAIN(Str $infile,              #= input PDF
	 Str :$password = '',      #= password for the input PDF, if encrypted
         Number :$page,            #= page to dump
         Number :$*max-depth = 16, #= depth to ascend/descend struct tree
         Str    :$*search-tag,     #= Struct tags to select
         Number :$*select,         #= Match number to select
         UInt   :$obj-num,         #= Direct select by object number
         UInt   :$gen-num = 0,     #= Direct select generation number
         Bool   :$*render = True,  #= include rendered content
         Bool   :$*atts = True,    #= include attributes in tags
         Bool   :$*debug,          #= write extra debugging information
    ) {

    my PDF::IO $input .= coerce(
       $infile eq '-'
           ?? $*IN.slurp-rest( :bin ) # sequential access
           !! $infile.IO              # random access
    );

    my PDF::Class $pdf .= open( $input, :$password );
    my PDF::Catalog $catalog = $pdf.catalog;
    my PDF::StructTreeRoot $root =  $pdf.catalog.StructTreeRoot
        // die "document does not contain marked content: $infile";

    $*class-map = $_ with $root.ClassMap;
    %*role-map = $_ with $root.RoleMap;
    $*parent-tree = .number-tree with $root.ParentTree;

    with $page {
        warn "*** Adding Page $_ ***"
            if $*debug;
        my PDF::Page $Pg = $pdf.page($_)
            // die "no page number: $_";
        my @plan;
        @plan.push: deref($Pg);
        @plan = search-up(@plan, ($*search-tag // 'Table'), $*max-depth);
        @plan = @plan[$_ - 1] with $*select;
        for @plan -> $p {
            dump-struct($_, :depth(0)) with $p;
        }
    }
    else {
        my $start = $obj-num
            ?? PDF::COS.coerce( $pdf.reader.ind-obj($obj-num, $gen-num).object,
                                PDF::StructElem)
            !! $root;

        dump-struct($start);
    }
}

sub pad(UInt $depth, Str $s = '') { ('  ' x $depth) ~ $s }

multi sub search-up(@plan, $, 1) {
    @plan;
}

multi sub search-up(@plan where .elems < 1, $, $) {
    @plan;
}

multi sub search-up(@plan, $search-tag, $depth) {
    my @parents;
    my @found;
    my %seen;
    for @plan -> $p {
        my $n = $p ~~ List ?? $p.elems !! 1;
        for 0 ..^ $n {
            with $p[$_] {
                with .?structure-type -> $tag {
                    push(@found, $_)
                        if $tag eq $search-tag || %*role-map{$tag} ~~ $search-tag;
                }
                with .?P {
                    push(@parents, $_)
                        unless %seen{.obj-num}++;
                }
            }
        }
    }
    @found || search-up(@parents, $search-tag, $depth - 1);
}

multi sub dump-struct(PDF::StructTreeRoot $root, :$depth = 0) {
    with $root.K -> $k {
        my $elems = $k ~~ List ?? $k.elems !! 1;
        for 0 ..^ $elems {
            my StructElemChild $c = $k[$_];
            dump-struct($c, :$depth);
        }
    }
}

# page tags hashed by MCID
constant Tags = Hash[PDF::Content::Tag];
my Tags %graphics-tags{PDF::Content::Graphics};

my class Cache {
    has %.font{Any};
}
my Cache $cache .= new;

sub load-font(Hash $dict) {
    $cache.font{$dict} //= do {
        my %opts = PDF::Font::Loader::Dict.load-font-opts: :$dict;
        PDF::Font::Loader.load-font: |%opts;
    }
}

class TextDecoder {
    use PDF::Content::Ops :OpCode;
    has Hash @!save;
    has $.current-font;
    method current-font { $!current-font[0] }
    method callback{
        sub ($op, *@args) {
            my $method = OpCode($op).key;
            self."$method"(|@args)
                if $method ~~ 'Save'|'Restore'|'SetFont'|'ShowText'|'ShowSpaceText'|'Do';
        }
    }
    method render($obj) {
        my $decoder = self;
        $_ .= new without $decoder;
        my &callback = $decoder.callback;
        $obj.render(:!tidy, :!strict, :&callback);
    }
    method Save()      {
        @!save.push: %( :$!current-font );
    }
    method Restore()   {
        if @!save {
            with @!save.pop {
                $!current-font = .<current-font>;
            }
        }
    }
    method SetFont(Str $font-key, Numeric $font-size) {
        with $*gfx.resource-entry('Font', $font-key) -> $dict {
            $!current-font = load-font($dict);
        }
        else {
            warn "unable to locate Font in resource dictionary: $font-key";
            $!current-font = PDF::Content::Util::Font.core-font('courier');
        }
    }
    method ShowText($text-encoded) {
        .children.push: $!current-font.decode($text-encoded, :str)
            with $*gfx.open-tags.tail;
    }
    method ShowSpaceText(List $text) {
        with $*gfx.open-tags.tail -> $tag {
            my Str $last := ' ';
            my @chunks = $text.map: {
                when Str {
                    $last := $!current-font.decode($_, :str);
                }
                when $_ <= -120 && !($last ~~ /\s$/) {
                    # assume implicit space
                    ' '
                }
                default { '' }
            }
            $tag.children.push: @chunks.join;
        }
    }
    method Do($key) {
        warn "todo Do $key";;
    }
}

sub graphics-tags($obj) {
    return unless $*render;
    %graphics-tags{$obj} //= do {
        $*ERR.print: '.';
        my $gfx = TextDecoder.render($obj);
        my PDF::Content::Tag % = $gfx.tags.grep(*.mcid.defined).map({.mcid => $_ });
    }
}

sub atts-str(%atts) {
    %atts.pairs.sort.map({ " {.key}=\"{.value}\"" }).join;
}

multi sub dump-struct(PDF::StructElem $node, :$tags is copy = %(), :$depth is copy = 0) {
    say pad($depth, "<!-- struct elem {$node.obj-num} {$node.gen-num} R ({$node.WHAT.^name})) -->")
        if $*debug;
    $tags = graphics-tags($_) with $node.Pg;
    my $name = $node.structure-type;
    my $att = do if $*atts {
        my %attributes;
        for $node.attribute-dicts -> $atts {
            %attributes{$_} = $atts{$_}
                for $atts.keys
        }
        unless %attributes {
            for $node.class-map-keys {
                with $*class-map{$_} -> $class {
                    %attributes{$_} = $class{$_}
                        for $class.keys
                }
            }
        }
        with %*role-map{$name} {
            %attributes<class> //= $name;
            $name = $_;
        }
        %attributes<O>:delete;
        atts-str(%attributes);
    }
    else {
        $name = $_
            with %*role-map{$name};
        ''
    }
    $depth++;

    if $depth >= $*max-depth {
        say pad($depth, "<$name$att/> <!-- depth exceeded, see {$node.obj-num} {$node.gen-num} R -->");
    }
    else {
        with $node.ActualText {
            say pad($depth, '<!-- actual text -->')
            if $*debug;
            given trim($_) {
                if $_ eq '' {
                    say pad($depth, "<$name$att/>")
                        unless $name eq 'Span';
                }
                else {
                    say pad($depth, $name eq 'Span' ?? $_ !! "<$name$att>{html-escape($_) }</$name>")
                }
            }
        }
        else {
            with $node.K -> $k {
                my $elems = $k ~~ List ?? $k.elems !! 1;
                say pad($depth, "<$name$att>")
                    unless $name eq 'Span';
        
                for 0 ..^ $elems {
                    my StructElemChild $c = $k[$_];
                    dump-struct($c, :$tags, :$depth);
                }

                say pad($depth, "</$name>")
                    unless $name eq 'Span';
            }
            else {
                say pad($depth, "<$name$att/>")
                    unless $name eq 'Span';
            }
        }
    }
}

multi sub dump-struct(PDF::OBJR $_, :$tags is copy, :$depth!) {
    say pad($depth, "<!-- OBJR {.obj-num} {.gen-num} R -->")
        if $*debug;
    $tags = graphics-tags($_) with .Pg;
    dump-struct($_, :$tags, :$depth) with .Obj;
}

my %deref{Any};
subset StructNode of Hash where PDF::Page|PDF::StructElem;
sub deref(StructNode $_) {
    %deref{$_} //= do with .struct-parent -> $i {
        with $*parent-tree {.[$i + 0]}
    } // $_;
}

multi sub dump-struct(UInt $mcid, :$tags is copy, :$depth!) {
    say pad($depth, "<!-- mcid $mcid -->")
        if $*debug;
    return unless $*render;
    with $tags{$mcid} -> $tag {
        dump-tag($tag, :$depth);
    }
    else {
        warn "unable to resolve marked content $mcid";
    }
}

multi sub dump-struct(PDF::MCR $_, :$tags is copy, :$depth!) {
    return unless $*render;
    say pad($depth, "<!-- MCR {.obj-num} {.gen-num} R -->")
        if $*debug;
    $tags = graphics-tags($_) with .Pg;
    my UInt $mcid := .MCID;
    with .Stm {
        warn "can't handle marked content streams yet";
    }
    else {
        with $tags{$mcid} -> $tag {
            dump-tag($tag, :$depth);
        }
        else {
            warn "unable to resolve marked content $mcid";
        }
    }
}

multi sub dump-struct(StructNode $_ where !(%deref{$_}:exists), |c) {
    dump-struct( deref($_), |c);
}

multi sub dump-struct(PDF::Field $_, :$tags is copy, :$depth!) {
    warn "todo: dump field obj";
}

multi sub dump-struct(PDF::Annot $_, :$tags is copy, :$depth!) {
    warn "todo: dump annot obj: " ~ .perl;
}

multi sub dump-struct(List $a, :$depth!, |c) {
    say pad($depth, "<!-- struct list {$a.obj-num} {$a.gen-num} R -->")
        if $*debug;
    for $a.keys {
        dump-struct($_, :$depth, |c)
            with $a[$_];
    }
}

multi sub dump-struct($_, :$tags, :$depth) is default {
    die "unknown struct elem of type {.WHAT.^name}";
    say pad($depth, .perl);
}

sub tag-text(PDF::Content::Tag $tag, :$depth!) is default {
    # join text strings. discard this, and child marked content tags for now
    my @text = $tag.children.map: {
        when PDF::Content::Tag {
            my $text = trim(tag-text($_, :$depth));
            .name eq 'Document'
            ?? $text
            !! ($text ?? "<{.name}>" ~ $text ~ "</{.name}>" !! "</{.name}>");
        }
        when Str { html-escape($_) }
        default { '???' }
    }
    @text.join;
}

sub dump-tag(PDF::Content::Tag $tag, :$depth!) is default {
    say pad($depth, tag-text($tag, :$depth));
}

=begin pod

=head1 SYNOPSIS

pdf-struct-dump.p6 [options] file.pdf

Options:
   --password          password for an encrypted PDF
   --max-depth=n       maximum tag-depth to descend
   --page=p            dump page number p  
   --search-tag=name   tag to select
   --/render           omit rendered content
   --atts              include attributes in tags

=head1 DESCRIPTION

Locates and dumps structure elements from a tagged PDF.

Currently:

  - being used to extract tables from the PDF32000 specification for documentation and checking purposes.

  - produces raw tagged output in an XML/SGMLish format.

Only some PDF files contain tagged PDF. pdf-info.p6 can be
used to check this:

    % pdf-info.p6 my-doc.pdf | grep Tagged:
    Tagged:     yes

=head1 TODO

  - considering both JSON and HTML as targets.

=end pod
