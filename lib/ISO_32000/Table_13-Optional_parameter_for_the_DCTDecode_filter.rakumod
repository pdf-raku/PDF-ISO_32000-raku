use v6;
role ISO_32000::Table_13-Optional_parameter_for_the_DCTDecode_filter {
    method ColorTransform {...};
}

=begin pod

=head1 Description

Table 13 – Optional parameter for the DCTDecode filter

=head1 Methods (Entries)

=head2 ColorTransform [integer]
- (Optional) A code specifying the transformation that is performed on the sample values:
0 No transformation.
1 If the image has three colour components, RGB values is transformed to YUV before encoding and from YUV to RGB after decoding. If the image has four components, CMYK values is transformed to YUVK before encoding and from YUVK to CMYK after decoding. This option is ignored if the image has one or two colour components.
If the encoding algorithm has inserted the Adobe-defined markeracode in the encoded data indicating the ColorTransform value, then the colours is transformed, or not, after the DCT decoding has been performed according to the value provided in the encoded data and the value of this dictionary entry is ignored. If the Adobe- defined marker code in the encoded data indicating the ColorTransform value is not present then the value specified in this dictionary entry will be used. If the Adobe-defined marker code in the encoded data indicating the ColorTransform value is not present and this dictionary entry is not present in the filter dictionary then the default value of ColorTransform is 1 if the image has three components and 0 otherwise.

=end pod
