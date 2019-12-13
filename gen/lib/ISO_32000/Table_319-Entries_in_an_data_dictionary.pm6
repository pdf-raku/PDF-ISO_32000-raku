use v6;
#| PDF 32000-1:2008 Table 319 – Entries in an data dictionary
role ISO_32000::Table_319-Entries_in_an_data_dictionary {
    method LastModified {...};
    method Private {...};
}

=begin pod

=head1 Methods (Entries)

=head2 LastModified [date]
- (Required) The date and time when the contents of the document, page, or form were most recently modified by this conforming product.

=head2 Private [(any)]
- (Optional) Any private data appropriate to the conforming product, typically in the form of a dictionary.

=end pod
