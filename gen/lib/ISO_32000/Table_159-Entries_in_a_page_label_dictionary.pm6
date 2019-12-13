use v6;
role ISO_32000::Table_159-Entries_in_a_page_label_dictionary {
    method Type {...};
    method S {...};
    method P {...};
    method St {...};
}

=begin pod

=head1 Description

Table 159 – Entries in a page label dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is PageLabel for a page label dictionary.

=head2 S [name]
- (Optional) The numbering style that is used for the numeric portion of each page label:
D Decimal arabic numerals
R Uppercase roman numerals
r Lowercase roman numerals
A Uppercase letters (A to Z for the first 26 pages, AA to ZZ for the next 26, and so on)
a Lowercase letters (a to z for the first 26 pages, aa to zz for the next 26, and so on)
There is no default numbering style; if no S entry is present, page labels consists solely of a label prefix with no numeric portion.
NOTE If the P entry (next) specifies the label prefix Contents, each page is simply labeled Contents with no page number. (If the P entry is also missing or empty, the page label is an empty string.)

=head2 P [text string]
- (Optional) The label prefix for page labels in this range.

=head2 St [integer]
- (Optional) The value of the numeric portion for the first page label in the range. Subsequent pages is numbered sequentially from this value, which is greater than or equal to 1. Default value: 1.

=end pod
