use v6;

# Build.pm can also be run standalone 
sub MAIN(IO() $readme-in, *@sources) {
    say '';
    say "ISO_32000 Role|Entry";
    say "----|-----";
    my %entries;
    for @sources.sort {
        my $role-name = .subst(/'.pm6'$/, '').subst(m{'/'}, '::', :g);
        my $role-name-short = $role-name.split('::')[1];
        my $link = "/gen/lib/" ~ $_;
        my $ref = "[$role-name-short]($link)";
        my @entries = (require ::($role-name)).^methods.map: {'/' ~ .name};
        say "$ref|{@entries.join: ' '}";
        %entries{$_}.push($ref)
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
