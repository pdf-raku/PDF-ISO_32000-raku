use v6;
role ISO_32000::Table_65-Entries_in_a_Lab_Colour_Space_Dictionary {
    method WhitePoint {...};
    method BlackPoint {...};
    method Range {...};
}

=begin pod

=head1 Description

Table 65 – Entries in a Lab Colour Space Dictionary

=head1 Methods (Entries)

=head2 WhitePoint [array]
- (Required) An array of three numbers [ XW YW ZW ] that specifies the tristimulus value, in the CIE 1931 XYZ space, of the diffuse white point; see 8.6.5.3, "CalRGB Colour Spaces" for further discussion. The numbers XW and ZW is positive, and YW is 1.0.

=head2 BlackPoint [array]
- (Optional) An array of three numbers [ XB YB ZB ] that specifies the tristimulus value, in the CIE 1931 XYZ space, of the diffuse black point; see 8.6.5.3, "CalRGB Colour Spaces" for further discussion. All three of these numbers is non-negative. Default value: [ 0.0 0.0 0.0 ].

=head2 Range [array]
- (Optional) An array of four numbers [ amin amax bmin bmax] that specifies the range of valid values for the a* and b* (B and C) components of the colour space—that is,
amina* amax≤≤
and
bminb* bmax≤≤
Component values falling outside the specified range is adjusted to the nearest valid value without error indication.
Default value: [−100 100 −100 100 ].

=end pod
