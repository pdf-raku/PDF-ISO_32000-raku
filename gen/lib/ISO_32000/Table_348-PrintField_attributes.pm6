use v6;
role ISO_32000::Table_348-PrintField_attributes {
    method Role {...};
    method checked {...};
    method Desc {...};
}

=begin pod

=head1 Description

Table 348 – PrintField attributes

=head1 Methods (Entries)

=head2 Role [name]
- (Optional; not inheritable) The type of form field represented by this graphic. The value of Role is one of the following, and a conforming reader interprets its meaning as defined herein.
rbRadio button
cbCheck box
pbPush button
tvText-value field
The tv role is used for interactive fields whose values have been converted to text in the non-interactive document. The text that is the value of the field is the content of the Form element (see Table 340).
NOTE 1 Examples include text edit fields, numeric fields, password fields, digital signatures, and combo boxes. Default value: None specified.

=head2 checked [name]
- (Optional; not inheritable) The state of a radio button or check box field. The value is one of: on, off (default), or neutral.
NOTE 2 The case (capitalization) used for this key does not conform to the same conventions used elsewhere in this standard.

=head2 Desc [text string]
- (Optional; not inheritable) The alternate name of the field.
NOTE 3 Similar to the value supplied in the TU entry of the field dictionary for interactive fields (see Table 220).

=end pod
