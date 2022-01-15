use v6;
role ISO_32000::Table_64-Entries_in_a_CalRGB_Colour_Space_Dictionary {
    method WhitePoint {...};
    method BlackPoint {...};
    method Gamma {...};
    method Matrix {...};
}

=begin pod

=head1 Description

Table 64 – Entries in a CalRGB Colour Space Dictionary

=head1 Methods (Entries)

=head2 WhitePoint [array]
- (Required) An array of three numbers [ XW YW ZW ] specifying the tristimulus value, in the CIE 1931 XYZ space, of the diffuse white point; see below for further discussion. The numbers XW and ZW is positive, and YW is equal to 1.0.

=head2 BlackPoint [array]
- (Optional) An array of three numbers [ XB YB ZB] specifying the tristimulus value, in the CIE 1931 XYZ space, of the diffuse black point; see below for further discussion. All three of these numbers is non-negative. Default value: [ 0.0 0.0 0.0 ].

=head2 Gamma [array]
- (Optional) An array of three numbers [ GR GG GB ] specifying the gamma for the red, green, and blue (A, B, and C) components of the colour space. Default value: [ 1.0 1.0 1.0 ].

=head2 Matrix [array]
- (Optional) An array of nine numbers [ XA YA ZA XB YB ZB XC YC ZC] specifying the linear interpretation of the decoded A, B, and C components of the colour space with respect to the final XYZ representation. Default value: the identity matrix [ 1 0 0 0 1 0 0 0 1 ].

=end pod
