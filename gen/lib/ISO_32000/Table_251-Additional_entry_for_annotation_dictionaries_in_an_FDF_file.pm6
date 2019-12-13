use v6;
#| PDF 32000-1:2008 Table 251 – Additional entry for annotation dictionaries in an FDF file
role ISO_32000::Table_251-Additional_entry_for_annotation_dictionaries_in_an_FDF_file {
    method Page {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Page [integer]
- (Required for annotations in FDF files) The ordinal page number on which this annotation appears, where page 0 is the first page.

=end pod
