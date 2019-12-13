use v6;
#| PDF 32000-1:2008 Table 207 – Entry in a URI dictionary
role ISO_32000::Table_207-Entry_in_a_URI_dictionary {
    method Base {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Base [ASCII string]
- (Optional) The base URI that is used in resolving relative URI references. URI actions within the document may specify URIs in partial form, to be interpreted relative to this base address. If no base URI is specified, such partial URIs is interpreted relative to the location of the document itself. The use of this entry is parallel to that of the body element <BASE >, as described in the HTML 4.01 Specification (see the Bibliography).

=end pod
