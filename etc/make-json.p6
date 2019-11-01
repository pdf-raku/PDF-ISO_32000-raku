use v6;
use LibXML;
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
    .subst(/«[shall|should]" all be"»/, 'are', :g)
    .subst(/«[shall|should]" "(also|then)" be"»/, 'is '~0, :g)
    .subst(/«[shall|should]" not"»/, 'does not', :g)
    .subst(/«[shall|should]" "(only|itself)»/, {'is ' ~$0}, :g)
    .subst(/«[shall|should]" "(denote|distinguish|never|always|satisfy|exactly)»/, {$0}, :g)
    .subst(/«[shall|should]" "(appl|specif|identif|satisf|occup)y»/, {$0 ~ 'ies'}, :g)
    .subst(/«[shall|should]" "(match|progress|do)»/, {$0 ~ 'es'}, :g)
    .subst(/«[shall|should]" "(accept|adjust|appear|assume|behave|cause|center|conform|consist|contain|continue|correspond|default|define|deliver|depend|describe|determine|disable|display|enable|exclude|exist|expect|fail|ignore|include|increase|indicate|initialize|interpret|invalidate|lie|list|make|map|mean|occur|oscillate|override|perform|permit|play|position|provide|refer|remain|replace|report|represent|respect|set|show|skip|sort|stop|take|tolerate|translate|use)»/, {$0 ~ 's'}, :g)
    .subst(/T \s* a \s* b \s* l \s* e/, 'Table', :g)
    .subst(/:s "(" (<-[)]>*?)  ")"/, { '(' ~ tidy($0) ~ ')' }, :g)
    .subst(/:s Link (Table|Annex|Figure|Bibliography|<[0..9.]>+)/, { $0 }, :g);
}

sub dump-table($_) {
    my $caption = tidy(.first('Caption'));
    my @head = .<THead/TR/TH>.map({tidy($_)});
    my @rows = .<TBody/TR>.map({
        .<TD>.map({
            my @paras = .<P>.map({tidy($_)});
            edit(@paras.join("\n"));
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
