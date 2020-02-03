use v6;
role ISO_32000::Table_250-Entries_in_an_FDF_named_page_reference_dictionary {
    method Name {...};
    method F {...};
}

=begin pod

=head1 Description

Table 250 – Entries in an FDF named page reference dictionary

=head1 Methods (Entries)

=head2 Name [string]
- (Required) The name of the referenced page.

=head2 F [file specification]
- (Optional) The file containing the named page. If this entry is absent, it is assumed that the page resides in the associated PDF file.

=end pod
