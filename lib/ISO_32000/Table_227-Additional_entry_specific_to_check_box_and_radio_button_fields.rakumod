use v6;
role ISO_32000::Table_227-Additional_entry_specific_to_check_box_and_radio_button_fields {
    method Opt {...};
}

=begin pod

=head1 Description

Table 227 – Additional entry specific to check box and radio button fields

=head1 Methods (Entries)

=head2 Opt [array of text strings]
- (Optional; inheritable; PDF 1.4) An array containing one entry for each widget annotation in the Kids array of the radio button or check box field. Each entry is a text string representing the on state of the corresponding widget annotation.
When this entry is present, the names used to represent the on state in the AP dictionary of each annotation (for example, /1, /2) numerical position (starting with 0) of the annotation in the Kids array, encoded as a name object. This allows distinguishing between the annotations even if two or more of them have the same value in the Opt array.

=end pod
