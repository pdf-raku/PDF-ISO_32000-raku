use v6;
role ISO_32000::Table_63-Entries_in_a_CalGray_Colour_Space_Dictionary {
    method WhitePoint {...};
    method BlackPoint {...};
    method Gamma {...};
}

=begin pod

=head1 Description

Table 63 – Entries in a CalGray Colour Space Dictionary

=head1 Methods (Entries)

=head2 WhitePoint [array]
- (Required) An array of three numbers [ XW YW ZW ] specifying the tristimulus value, in the CIE 1931 XYZ space, of the diffuse white point; see 8.6.5.3, "CalRGB Colour Spaces", for further discussion. The numbers XW and ZW is positive, and YW is equal to 1.0.

=head2 BlackPoint [array]
- (Optional) An array of three numbers [ XB YB ZB ] specifying the tristimulus value, in the CIE 1931 XYZ space, of the diffuse black point; see 8.6.5.3, "CalRGB Colour Spaces", for further discussion. All three of these numbers is non-negative. Default value: [ 0.0 0.0 0.0 ].

=head2 Gamma [number]
- (Optional) A number G defining the gamma for the gray (A)component. G is positive and is generally greater than or equal to 1. Default value: 1.

=end pod
