use v6;
role ISO_32000::Table_199-Additional_entries_specific_to_a_go-to_action {
    method S {...};
    method D {...};
}

=begin pod

=head1 Description

Table 199 – Additional entries specific to a go-to action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is GoTo for a go-to action.

=head2 D [name, byte string, or array]
- (Required) The destination to jump to (see 12.3.2, “Destinations”).

=end pod
