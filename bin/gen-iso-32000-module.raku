use v6;

use PDF::ISO_32000;

sub camel($w) { $w.subst(/(.)/, {$0.uc}) }

sub build(:$caption, :@head, :@rows, :$type = 'role', Str:D :$name) {
    note "Building $name";
    my @non-idents;
    my %seen;
    say '#| ' ~ $_ with $caption;
    say "unit $type $name;";
    say '';
    if $type eq 'role' {
        say 'use PDF::COS::Tie::Hash;';
        say 'also does PDF::COS::Tie::Hash;';
    }
    elsif $type eq 'class' {
        say 'use PDF::COS::Dict;';
        say 'also is PDF::COS::Dict;';
    }
    say '';

    for @rows {
        my ($entry, $type, $desc) = .list;
        my @props;
        if ($type ~~ s/' or array'//) || ($type ~~ s/'array or '//) {
            @props.push: ':array-or-item';
        }
        
        $entry .= trim;
        $entry ~~ s:s/ \s* '(' .* ')'//;
        $entry ~~ s:g/' '(\w+)/{camel($0)}/;
            next if $entry ~~ /:i'other'|'any'|' '/ | '';

        unless %seen{$entry}++ {
            if $entry ~~ /:s^ [<ident> *% '-'] $/ {
                print 'has ';
                print $type;
                print ' $.';
                print $entry;
                print ' is entry';
                if $desc ~~ m/:i'required'/ {
                    @props.push: ':required';
                }
                if @props {
                    print '(' ~ @props.join(',') ~ ')';
                }
                print ';';
                my @desc = $desc.split: "\n";
                if @desc {
                    say "\t# " ~ $_ for @desc;
                }
                say '';
            }
            else {
                push @non-idents, $entry;
            }
        }
    }
    if @non-idents {
        warn "unhandled methods: " ~ @non-idents.map(*.raku).join(', ');
    }
}

# Build.pm can also be run standalone 
subset Type of Str where 'class'|'role'|'module';
sub MAIN(UInt :$table!, Type :$type = 'class', :$name is copy = 'ISO_32000::' ~ PDF::ISO_32000.table-index[$table]) {
    $name ~~ s/^\w+'/'//;
    my $ast = PDF::ISO_32000.[$table]
        // die "Unknown table $table";
    build( |$ast, :$name, :$type);
}

=begin pod

=head2 Name

gen-iso-32000-module.raku

=head2 Synopsis

gen-iso-32000-module.raku --table=n --type=role|class

=head2 Description

Make a rough cut at generating code for a PDF Raku role or class
mapping.

This is not a fully automated. The code will require further editing to compile and integrate
with PDF::Class, etc.

=end pod
