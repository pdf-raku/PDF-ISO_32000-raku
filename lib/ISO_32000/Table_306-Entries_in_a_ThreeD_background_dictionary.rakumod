use v6;
role ISO_32000::Table_306-Entries_in_a_ThreeD_background_dictionary {
    method Type {...};
    method Subtype {...};
    method CS {...};
    method C {...};
    method EA {...};
}

=begin pod

=head1 Description

Table 306 – Entries in a 3D background dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DBG for a 3D background dictionary.

=head2 Subtype [name]
- (Optional) The type of background. The only valid value is SC (solid colour), which indicates a single opaque colour. Default value: SC.

=head2 CS [name or array]
- (Optional) The colour space of the background. The only valid value is the name DeviceRGB. Default value: DeviceRGB.
PDF consumers is prepared to encounter other values that may be supported in future versions of PDF.

=head2 C [(various)]
- (Optional) The colour of the background, in the colour space defined by CS. Default value: an array [1 1 1] representing the colour white when the value of CS is DeviceRGB.

=head2 EA [boolean]
- (Optional) If true, the background applies to the entire annotation; if false, the background applies only to the rectangle specified by the annotation’s 3D view box (the 3DB entry in Table 298). Default value: false.

=end pod
