use v6;
#| PDF 32000-1:2008 Table 199 – Additional entries specific to a go-to action
role ISO_32000::Table_199-Additional_entries_specific_to_a_go-to_action {
    method S {...};
    method D {...};
}

=begin pod

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is GoTofor a go-to action.

=head2 D [name, byte string, or array]
- (Required) The destination to jump to (see 12.3.2, “Destinations”).

=end pod
