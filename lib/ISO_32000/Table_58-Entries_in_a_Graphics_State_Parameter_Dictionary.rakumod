use v6;
role ISO_32000::Table_58-Entries_in_a_Graphics_State_Parameter_Dictionary {
    method Type {...};
    method LW {...};
    method LC {...};
    method LJ {...};
    method ML {...};
    method D {...};
    method RI {...};
    method OP {...};
    method op {...};
    method OPM {...};
    method Font {...};
    method BG {...};
    method BG2 {...};
    method UCR {...};
    method UCR2 {...};
    method TR {...};
    method TR2 {...};
    method HT {...};
    method FL {...};
    method SM {...};
    method SA {...};
    method BM {...};
    method SMask {...};
    method CA {...};
    method ca {...};
    method AIS {...};
    method TK {...};
}

=begin pod

=head1 Description

Table 58 – Entries in a Graphics State Parameter Dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; is ExtGState for a graphics state parameter dictionary.

=head2 LW [number]
- (Optional; PDF 1.3) The line width (see 8.4.3.2, "Line Width").

=head2 LC [integer]
- (Optional; PDF 1.3) The line cap style (see 8.4.3.3, "Line Cap Style").

=head2 LJ [integer]
- (Optional; PDF 1.3) The line join style (see 8.4.3.4, "Line Join Style").

=head2 ML [number]
- (Optional; PDF 1.3) The miter limit (see 8.4.3.5, "Miter Limit").

=head2 D [array]
- (Optional; PDF 1.3) The line dash pattern, expressed as an array of the form [ dashArray dashPhase ], where dashArray is itself an array and dashPhase is an integer (see 8.4.3.6, "Line Dash Pattern").

=head2 RI [name]
- (Optional; PDF 1.3) The name of the rendering intent (see 8.6.5.8, "Rendering Intents").

=head2 OP [boolean]
- (Optional) A flag specifying whether to apply overprint (see 8.6.7, "Overprint Control"). In PDF 1.2 and earlier, there is a single overprint parameter that applies to all painting operations. Beginning with PDF 1.3, there is two separate overprint parameters: one for stroking and one for all other painting operations. Specifying an OP entry sets both parameters unless there is also an op entry in the same graphics state parameter dictionary, in which case the OP entry sets only the overprint parameter for stroking.

=head2 op [boolean]
- (Optional; PDF 1.3) A flag specifying whether to apply overprint (see 8.6.7, "Overprint Control") for painting operations other than stroking. If this entry is absent, the OP entry, if any, shall also set this parameter.

=head2 OPM [integer]
- (Optional; PDF 1.3) The overprint mode (see 8.6.7, "Overprint Control").

=head2 Font [array]
- (Optional; PDF 1.3) An array of the form [ font size ], where font is an indirect reference to a font dictionary and size is a number expressed in text space units. These two objects correspond to the operands of the Tf operator (see 9.3, "Text State Parameters and Operators"); however, the first operand is an indirect object reference instead of a resource name.

=head2 BG [function]
- (Optional) The black-generation function, which maps the interval [ 0.0 1.0 ] to the interval [ 0.0 1.0 ] (see 10.3.4, "Conversion from DeviceRGB to DeviceCMYK").

=head2 BG2 [function or name]
- (Optional; PDF 1.3) Same as BG except that the value may also be the name Default, denoting the black-generation function that was in effect at the start of the page. If both BG and BG2 are present in the same graphics state parameter dictionary, BG2 takes precedence.

=head2 UCR [function]
- (Optional) The undercolor-removal function, which maps the interval [ 0.0 1.0 ] to the interval [ −1.0 1.0 ] (see 10.3.4, "Conversion from DeviceRGB to DeviceCMYK").

=head2 UCR2 [function or name]
- (Optional; PDF 1.3) Same as UCR except that the value may also be the name Default, denoting the undercolor-removal function that was in effect at the start of the page. If both UCR and UCR2 are present in the same graphics state parameter dictionary, UCR2 takes precedence.

=head2 TR [function, array, or name]
- (Optional) The transfer function, which maps the interval [ 0.0 1.0 ] to the interval [ 0.0 1.0 ] (see 10.4, "Transfer Functions"). The value is either a single function (which applies to all process colorants) or an array of four functions (which apply to the process colorants individually). The name Identity may be used to represent the identity function.

=head2 TR2 [function, array, or name]
- (Optional; PDF 1.3) Same as TR except that the value may also be the name Default, denoting the transfer function that was in effect at the start of the page. If both TR and TR2 are present in the same graphics state parameter dictionary, TR2 takes precedence.

=head2 HT [dictionary, stream, or name]
- (Optional) The halftone dictionary or stream (see 10.5, "Halftones") or the name Default, denoting the halftone that was in effect at the start of the page.

=head2 FL [number]
- (Optional; PDF 1.3) The flatness tolerance (see 10.6.2, "Flatness Tolerance").

=head2 SM [number]
- (Optional; PDF 1.3) The smoothness tolerance (see 10.6.3, "Smoothness Tolerance").

=head2 SA [boolean]
- (Optional) A flag specifying whether to apply automatic stroke adjustment (see 10.6.5, "Automatic Stroke Adjustment").

=head2 BM [name or array]
- (Optional; PDF 1.4) The current blend mode to be used in the transparent imaging model (see 11.3.5, "Blend Mode" and 11.6.3, "Specifying Blending Colour Space and Blend Mode").

=head2 SMask [dictionary or name]
- (Optional; PDF 1.4) The current soft mask, specifying the mask shape or mask opacity values that is used in the transparent imaging model (see 11.3.7.2, "Source Shape and Opacity" and 11.6.4.3, "Mask Shape and Opacity").
Although the current soft mask is sometimes referred to as a “soft clip,” altering it with the gs operator completely replaces the old value with the new one, rather than intersecting the two as is done with the current clipping path parameter (see 8.5.4, "Clipping Path Operators").

=head2 CA [number]
- (Optional; PDF 1.4) The current stroking alpha constant, specifying the constant shape or constant opacity value that is used for stroking operations in the transparent imaging model (see 11.3.7.2, "Source Shape and Opacity" and 11.6.4.4, "Constant Shape and Opacity").

=head2 ca [number]
- (Optional; PDF 1.4) Same as CA, but for nonstroking operations.

=head2 AIS [boolean]
- (Optional; PDF 1.4) The alpha source flag (“alpha is shape”), specifying whether the current soft mask and alpha constant is interpreted as shape values (true) or opacity values (false).

=head2 TK [boolean]
- (Optional; PDF 1.4) The text knockout flag, determines the behaviour of overlapping glyphs within a text object in the transparent imaging model (see 9.3.8, "Text Knockout").

=end pod
