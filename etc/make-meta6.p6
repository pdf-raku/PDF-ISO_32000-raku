use v6;
use JSON::Fast;

# Build.pm can also be run standalone 
sub MAIN(IO() $meta6-in, *@sources) {
    my Hash $meta6 = from-json($meta6-in.slurp);
    my %provides;
    my @resources;
    my @resource-index;
    for @sources.sort {
        when /'.pm6'$/ {
            my $role-name = .subst(/'.pm6'$/, '').subst(m{'/'}, '::', :g);
            %provides{$role-name} = ("gen/lib/" ~ $_);
        }
        when /'.json'$/ {
            with from-json( "../../resources/$_".IO.slurp)<table> -> $table {
                with $table<caption> -> $caption {
                    @resource-index[$0.Int] = .subst(/^'ISO_32000/'/,'').subst(/'.json'$/,'')
                        if $caption ~~ /:s Table (\d+)/;
                }
            }
            @resources.push: $_;
        }
    }
    given "ISO_32000-index.json" {
        "../../resources/$_".IO.spurt: to-json(@resource-index);
        @resources.unshift: $_;
    }
    %provides<PDF::ISO_32000> = 'lib/PDF/ISO_32000.pm6';
    $meta6<provides> = %provides;
    $meta6<resources> = @resources;
    say to-json($meta6, :sorted-keys);
}
