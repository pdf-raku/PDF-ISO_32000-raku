use v6;
role ISO_32000::Table_240-Additional_entries_specific_to_an_import-data_action {
    method S {...};
    method F {...};
}

=begin pod

=head1 Description

Table 240 – Additional entries specific to an import-data action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is ImportData for an import-data action.

=head2 F [file specification]
- (Required) The FDF file from which to import the data.

=end pod
