use v6;
#| PDF 32000-1:2008 Table 242 – Entries in the FDF catalog dictionary
role ISO_32000::Table_242-Entries_in_the_FDF_catalog_dictionary {
    method Version {...};
    method FDF {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Version [name]
- (Optional; PDF 1.4) The version of the FDF specification to which this FDF file conforms (for example, 1.4) if later than the version specified in the file’s header (see FDF Header in 12.7.7.2, “FDF File Structure”). If the header specifies a later version, or if this entry is absent, the document conforms to the version specified in the header.
The value of this entry is a name object, not a number, and therefore is preceded by a slash character (/) when written in the FDF file (for example, /1.4).

=head2 FDF [dictionary]
- (Required) The FDF dictionary for this file (see Table 243).

=end pod
