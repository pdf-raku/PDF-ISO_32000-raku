use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Data ../tables/Data_entries.html

#| PDF 32000-1:2008 Table 319 – Entries in an data dictionary
role ISO_32000::Data {
    method LastModified {...};
    method Private {...};

=begin pod

=head1 Methods (Entries)

=head2 LastModified [date]
- (Required) The date and time when the contents of the document, page, or form were most recently modified by this conforming product.

=head2 Private [(any)]
- (Optional) Any private data appropriate to the conforming product, typically in the form of a dictionary.

=end pod
}