use Test;
plan 6;
use PDF::ISO_32000;

my %table = PDF::ISO_32000.table: "Info_entries";
is %table<caption>, "Table 317 – Entries in the document information dictionary", "table caption";
is-deeply %table<head>, $["Key", "Type", "Value"], "table head";
is +%table<rows>, 9, "row count";
is +%table<rows>[0], 3, "column count";
is-deeply %table<rows>[0], $["Title", "text string", "(Optional; PDF 1.1) The document’s title."], "first row";

my @index = PDF::ISO_32000.index;
is @index[317], 'Info_entries';