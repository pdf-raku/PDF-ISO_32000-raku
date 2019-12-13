use v6;
#| PDF 32000-1:2008 Table 215 – Additional entries specific to a transition action
role ISO_32000::Table_215-Additional_entries_specific_to_a_transition_action {
    method S {...};
    method Trans {...};
}

=begin pod

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Transfor a transition action.

=head2 Trans [dictionary]
- (Required) The transition to use for the update of the display (see Table 162).

=end pod
