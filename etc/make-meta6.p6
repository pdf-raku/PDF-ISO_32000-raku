use v6;
use JSON::Fast;

# Build.pm can also be run standalone 
sub MAIN(IO() $meta6-in, *@sources) {
    my Hash $meta6 = from-json($meta6-in.slurp);
    my %provides = @sources.map: {
         .subst(/'.pm6'$/, '').subst(m{'/'}, '::', :g) => ("gen/lib/" ~ $_);
    }
    $meta6<provides> = %provides;
    say to-json($meta6, :sorted-keys);
}
