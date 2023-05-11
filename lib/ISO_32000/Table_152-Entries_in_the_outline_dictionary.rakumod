use v6;
role ISO_32000::Table_152-Entries_in_the_outline_dictionary {
    method Type {...};
    method First {...};
    method Last {...};
    method Count {...};
}

=begin pod

=head1 Description

Table 152 – Entries in the outline dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Outlines for an outline dictionary.

=head2 First [dictionary]
- (Required if there are any open or closed outline entries; is an indirect reference) An outline item dictionary representing the first top- level item in the outline.

=head2 Last [dictionary]
- (Required if there are any open or closed outline entries; is an indirect reference) An outline item dictionary representing the last top- level item in the outline.

=head2 Count [integer]
- (Required if the document has any open outline entries) Total number of visible outline items at all levels of the outline. The value cannot be negative.
This entry is omitted if there are no open outline items.

=end pod
