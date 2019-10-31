use v6;
use LibXML::Document;
use LibXML::Node;
use JSON::Fast;

multi sub tidy(LibXML::Node $_) {
    tidy(.text);
}

multi sub tidy(Str() $_) {
    .trim
    .subst(/[\n|\s]+/, ' ', :g);
}

sub edit($_) {
    .subst(/«[shall|should]" be"»/, 'is', :g)
    .subst(/«[shall|should]" have"»/, 'has', :g)
    .subst(/«[shall|should]" not be"»/, 'is not', :g)
    .subst(/«[shall|should]" apply"»/, 'applies', :g)
    .subst(/«[shall|should]" "(behave|refer|remain)»/, {$0 ~ 's'}, :g)
    .subst(/T \s* a \s* b \s* l \s* e/, 'Table', :g)
    .subst(/:s "(" (<-[)]>*?)  ")"/, { '(' ~ tidy($0) ~ ')' }, :g)
    .subst(/:s Link (Table|Annex|Figure|Bibliography|<[0..9.]>+)/, { $0 }, :g);
}

sub dump-table($_) {
    my $caption = tidy(.first('Caption'));
    my @head = .<THead/TR/TH>.map({tidy($_)});
    my @rows = .<TBody/TR>.map({
        .<TD>.map({
            edit(.<P>.map({tidy($_)}).join("\n"));
        });
    });
    %( :table{ :$caption, :@head, :@rows } );
}

sub MAIN(IO() $html-table) {
    my LibXML::Document $doc .= parse($html-table.slurp);
    with $doc.first('//Table') {
        say to-json( dump-table($_), :sorted-keys );
    }
    else {
        die "no 'Table' found";
    }
}
