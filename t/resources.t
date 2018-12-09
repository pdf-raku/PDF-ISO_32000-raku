use Test;
plan 7;
use PDF::ISO_32000;

my %table = PDF::ISO_32000.table: "Info_entries";
is %table<caption>, "Table 317 – Entries in the document information dictionary", "table caption";
is-deeply %table<head>, $["Key", "Type", "Value"], "table head";
is +%table<rows>, 9, "row count";
is +%table<rows>[0], 3, "column count";
is-deeply %table<rows>[0], $["Title", "text string", "(Optional; PDF 1.1) The document’s title."], "first row";

my @index = PDF::ISO_32000.table-index;
is @index[317], 'Info_entries', '.table-index()';

warn PDF::ISO_32000.appendix.perl;
my $app-a1 = PDF::ISO_32000.appendix<A.1>;
is $app-a1, "blah";
is PDF::ISO_32000.table($app-a1)<caption>, "Table A.1 – PDF content stream operators", "Appendix lookup";