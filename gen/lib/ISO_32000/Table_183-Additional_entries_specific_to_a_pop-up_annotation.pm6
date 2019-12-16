use v6;
role ISO_32000::Table_183-Additional_entries_specific_to_a_pop-up_annotation {
    method Subtype {...};
    method Parent {...};
    method Open {...};
}

=begin pod

=head1 Description

Table 183 – Additional entries specific to a pop-up annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; shallbe Popup for a pop-up annotation.

=head2 Parent [dictionary]
- (Optional; is an indirect reference) The parent annotation with which this pop-up annotation is associated.
If this entry is present, the parent annotation’s Contents, M, C, and Tentries (see Table 168) overrides those of the pop-up annotation itself.

=head2 Open [boolean]
- (Optional) A flag specifying whether the pop-up annotation shallinitially be displayed open. Default value: false (closed).

=end pod
