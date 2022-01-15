use v6;
role ISO_32000::Table_238-Additional_entries_specific_to_a_reset-form_action {
    method S {...};
    method Fields {...};
    method Flags {...};
}

=begin pod

=head1 Description

Table 238 – Additional entries specific to a reset-form action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; shallbe ResetForm for a reset-form action.

=head2 Fields [array]
- (Optional) An array identifying which fields to reset or which to exclude from resetting, depending on the setting of the Include/ Exclude flag in the Flags entry (see Table 239). Each element of the array is either an indirect reference to a field dictionary or (PDF 1.3) a text string representing the fully qualified name of a field. Elements of both kinds may be mixed in the same array.
If this entry is omitted, the Include/Exclude flag is ignored; all fields in the document’s interactive form are reset.

=head2 Flags [integer]
- (Optional; inheritable) A set of flags specifying various characteristics of the action (see Table 239). Default value: 0.

=end pod
