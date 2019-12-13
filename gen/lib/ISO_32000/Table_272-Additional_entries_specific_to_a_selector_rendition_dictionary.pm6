use v6;
#| PDF 32000-1:2008 Table 272 – Additional entries specific to a selector rendition dictionary
role ISO_32000::Table_272-Additional_entries_specific_to_a_selector_rendition_dictionary {
    method R {...};
}

=begin pod

=head1 Methods (Entries)

=head2 R [array]
- (Required) An array of rendition objects. The first viable media rendition object found in the array, or nested within a selector rendition in the array, is used. An empty array is legal.

=end pod
