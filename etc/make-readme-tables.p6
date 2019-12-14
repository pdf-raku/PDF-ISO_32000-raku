use v6;

# Build.pm can also be run standalone 
sub MAIN(*@sources) {
    say '';
    say "ISO_32000 Reference|Entries";
    say "----|-----";
    my %entries;
    @sources .= sort( -> $k {with ($k ~~ /<?after Table_>\d+/) {sprintf("%05d", .Int)} else { $k }} );

    for @sources {
        next unless .defined;
        my $io = .IO;
        die "no such file: '$_'" unless $io.e;
        my $iso-ref = $io.slurp.lines.grep(/'Table'/)[0];
        s/'#|' .* 'Table'/Table/ with $iso-ref;
        my $role-name = .subst(/^'lib/'/,'').subst(/'.pm6'$/, '').subst(m{'/'}, '::', :g);
        my $role-name-short = $role-name.split('::')[1];
        my $link = "gen/lib/" ~ $_;
        my $role-ref = "[$iso-ref]($link)";
        my $role = try (require ::($role-name));
        die "failed to compile ::($role-name): $_" with $!;
        my @entries = $role.^methods.map: {'/' ~ .name};
        say "$role-ref|{@entries.join: ' '}";
        %entries{$_}.push($role-ref)
            for @entries;
    }
    say '';
    say '## Entry to role mappings';
    say '';
    say "Entry|ISO_32000 Roles";
    say "----|-----";
    say "{.key}|{.value.join: ' '}"
        for %entries.pairs.sort;
}
