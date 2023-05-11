use v6;
role ISO_32000::Table_213-Additional_entries_specific_to_a_set-OCG-state_action {
    method S {...};
    method State {...};
    method PreserveRB {...};
}

=begin pod

=head1 Description

Table 213 – Additional entries specific to a set-OCG-state action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is SetOCGState for a set-OCG-state action.

=head2 State [array]
- (Required) An array consisting of any number of sequences beginning with a name object (ON, OFF, or Toggle) followed by one or more optional content group dictionaries. The array elements is processed from left to right; each name is applied to the subsequent groups until the next name is encountered:
ON sets the state of subsequent groups to ON
OFF sets the state of subsequent groups to OFF
Toggle reverses the state of subsequent groups.

=head2 PreserveRB [boolean]
- (Optional) If true, indicates that radio-button state relationships between optional content groups (as specified by the RBGroups entry in the current configuration dictionary; see Table 101) is preserved when the states in the State array are applied. That is, if a group is set to ON (either by ON or Toggle) during processing of the State array, any other groups belonging to the same radio-button group is turned OFF. If a group is set to OFF, there is no effect on other groups.
If PreserveRB is false, radio-button state relationships, if any, is ignored.
Default value: true.

=end pod
