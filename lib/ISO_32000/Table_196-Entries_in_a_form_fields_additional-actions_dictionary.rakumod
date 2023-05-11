use v6;
role ISO_32000::Table_196-Entries_in_a_form_fields_additional-actions_dictionary {
    method K {...};
    method F {...};
    method V {...};
    method C {...};
}

=begin pod

=head1 Description

Table 196 – Entries in a form field’s additional-actions dictionary

=head1 Methods (Entries)

=head2 K [dictionary]
- (Optional; PDF 1.3) A JavaScript action that is performed when the user modifies a character in a text field or combo box or modifies the selection in a scrollable list box. This action may check the added text for validity and reject or modify it.

=head2 F [dictionary]
- (Optional; PDF 1.3) A JavaScript action that is performed before the field is formatted to display its value. This action may modify the field’s value before formatting.

=head2 V [dictionary]
- (Optional; PDF 1.3) A JavaScript action that is performed when the field’s value is changed. This action may check the new value for validity. (The name V stands for “validate.”)

=head2 C [dictionary]
- (Optional; PDF 1.3) A JavaScript action that is performed to recalculate the value of this field when that of another field changes. (The name C stands for “calculate.”) The order in which the document’s fields are recalculated is defined by the CO entry in the interactive form dictionary (see 12.7.2, “Interactive Form Dictionary”).

=end pod
