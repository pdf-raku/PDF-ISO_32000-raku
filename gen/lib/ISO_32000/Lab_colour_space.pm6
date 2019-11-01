use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Lab_colour_space ../../resources/ISO_32000/Lab_colour_space_entries.json

#| PDF 32000-1:2008 Table 65 – Entries in a Lab Colour Space Dictionary
role ISO_32000::Lab_colour_space {
    method WhitePoint {...};
    method BlackPoint {...};
    method Range {...};
}

=begin pod

=head1 Methods (Entries)

=head2 WhitePoint [array]
- (Required) An array of three numbers [ X W Y W Z W ] that specifies the tristimulus value, in the CIE 1931 XYZ space, of the diffuse white point; see 8.6.5.3, "CalRGB Colour Spaces" for further discussion. The numbers X W and Z W is positive, and Y W is 1.0.

=head2 BlackPoint [array]
- (Optional) An array of three numbers [ X B Y B Z B ] that specifies the tristimulus value, in the CIE 1931 XYZ space, of the diffuse black point; see 8.6.5.3, "CalRGB Colour Spaces" for further discussion. All three of these numbers is non-negative. Default value: [ 0.0 0.0 0.0 ].

=head2 Range [array]
- (Optional) An array of four numbers [ a min a max b min b max ] that specifies the range of valid values for the a* and b* (B and C) components of the colour space—that is,
amina* amax≤≤
and
bminb* bmax≤≤
Component values falling outside the specified range is adjusted to the nearest valid value without error indication.
Default value: [−100 100 −100 100 ].

=end pod
