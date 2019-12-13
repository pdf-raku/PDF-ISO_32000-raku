use v6;
#| PDF 32000-1:2008 Table 315 – Additional entries in a metadata stream dictionary
role ISO_32000::Table_315-Additional_entries_in_a_metadata_stream_dictionary {
    method Type {...};
    method Subtype {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Metadata for a metadata stream.

=head2 Subtype [name]
- (Required) The type of metadata stream that this dictionary describes; is XML.

=end pod
