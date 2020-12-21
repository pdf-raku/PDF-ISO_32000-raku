use v6;

use JSON::Fast;

sub camel($w) { $w.subst(/(.)/, {$0.uc}) }

sub build(:$caption, :@head, :@rows) {
    note "Building $*role-name";
    {
        say 'use v6;';
        my @pod;
        my @non-idents;
        my %seen;
        say "role $*role-name \{";
        for @rows {
            my ($entry, $type, $desc) = .list;
            $entry = $entry.trim;
            $entry ~~ s:s/ \s* '(' .* ')'//;
            $entry ~~ s:g/' '(\w+)/{camel($0)}/;
            next if $entry ~~ /:i'other'|'any'|' '/ | '';
            @pod.push: %( :$entry, :$type, :$desc );

            unless %seen{$entry}++ {
                if $entry ~~ /:s^ [<ident> *% '-'] $/ {
                    say "    method $entry \{...\};";
                }
                else {
                    push @non-idents, $entry;
                }
            }
        }
        if @non-idents {
            say '    INIT {';
            say "        for { @non-idents.map(*.perl).join(', ') } \{";
            say '            my &m = method {...};';
            say '            &m.set_name($_);';
            say '            $?ROLE.^add_method($_, &m);';
            say '        }';
            say '    }';
        }
        say '}';

        # 2nd pass. output POD
        say '';
        say '=begin pod';
        say '';
        say '=head1 Description';
        say '';
        say $caption;
        say '';
        if @pod {
            say '=head1 Methods (Entries)';

            for @pod -> % ( :$entry!, :$type, :$desc is copy) {
                say '';
                say "=head2 $entry [$type]";
                with $desc {
                    # to avoid confusing POD
                    s:g/^^'='/V<=>/;
                    say "- $_";
                }
            }
        }
        say '';
        say '=end pod';
    }
}

multi sub grok(Str :$name!, :@data, :attr($)) {
    $name => [ @data.map: {|grok(|$_)} ];
}

# Build.pm can also be run standalone 
sub MAIN(IO() $json, Str :$*role-name!) {
    my $ast = from-json($json.IO.slurp);
    build( |$ast<table>);
}
