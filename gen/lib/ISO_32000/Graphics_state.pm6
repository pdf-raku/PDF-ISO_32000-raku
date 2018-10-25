use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Graphics_state ../tables/Graphics_state_entries.html

role ISO_32000::Graphics_state {
    method Type {...};	#| [name] (Optional) The type of PDF object that this dictionary describes; shall be ExtGState for a graphics state parameter dictionary.
    method LW {...};	#| [number] (Optional; PDF 1.3) The line width (see Link 8.4.3.2, "Line Width" ).
    method LC {...};	#| [integer] (Optional; PDF 1.3) The line cap style (see Link 8.4.3.3, "Line Cap Style" ).
    method LJ {...};	#| [integer] (Optional; PDF 1.3) The line join style (see Link 8.4.3.4, "Line Join Style" ).
    method ML {...};	#| [number] (Optional; PDF 1.3) The miter limit (see Link 8.4.3.5, "Miter Limit" ).
    method D {...};	#| [array] (Optional; PDF 1.3) The line dash pattern, expressed as an array of the form [ dashArray dashPhase ], where dashArray shall be itself an array and dashPhase shall be an integer (see Link 8.4.3.6, "Line Dash Pattern" ).
    method RI {...};	#| [name] (Optional; PDF 1.3) The name of the rendering intent (see Link 8.6.5.8, "Rendering Intents" ).
    method OP {...};	#| [boolean] (Optional) A flag specifying whether to apply overprint (see Link 8.6.7, "Overprint Control" ). In PDF 1.2 and earlier, there is a single overprint parameter that applies to all painting operations. Beginning with PDF 1.3, there shall be two separate overprint parameters: one for stroking and one for all other painting operations. Specifying an OP entry shall set both parameters unless there is also an op entry in the same graphics state parameter dictionary, in which case the OP entry shall set only the overprint parameter for stroking.
    method op {...};	#| [boolean] (Optional; PDF 1.3) A flag specifying whether to apply overprint (see Link 8.6.7, "Overprint Control" ) for painting operations other than stroking. If this entry is absent, the OP entry, if any, shall also set this parameter.
    method OPM {...};	#| [integer] (Optional; PDF 1.3) The overprint mode (see Link 8.6.7, "Overprint Control" ).
    method Font {...};	#| [array] (Optional; PDF 1.3) An array of the form [ font size ], where font shall be an indirect reference to a font dictionary and size shall be a number expressed in text space units. These two objects correspond to the operands of the Tf operator (see Link 9.3, "Text State Parameters and Operators" ); however, the first operand shall be an indirect object reference instead of a resource name.
    method BG {...};	#| [function] (Optional) The black-generation function, which maps the interval [ 0.0 1.0 ] to the interval [ 0.0 1.0 ] (see Link 10.3.4, "Conversion from DeviceRGB to DeviceCMYK" ).
    method BG2 {...};	#| [function or name] (Optional; PDF 1.3) Same as BG except that the value may also be the name Default, denoting the black-generation function that was in effect at the start of the page. If both BG and BG2 are present in the same graphics state parameter dictionary, BG2 shall take precedence.
    method UCR {...};	#| [function] (Optional) The undercolor-removal function, which maps the interval [ 0.0 1.0 ] to the interval [ −1.0 1.0 ] (see Link 10.3.4, "Conversion from DeviceRGB to DeviceCMYK" ).
    method UCR2 {...};	#| [function or name] (Optional; PDF 1.3) Same as UCR except that the value may also be the name Default, denoting the undercolor-removal function that was in effect at the start of the page. If both UCR and UCR2 are present in the same graphics state parameter dictionary, UCR2 shall takeprecedence.
    method TR {...};	#| [function, array, or name] (Optional) The transfer function, which maps the interval [ 0.0 1.0 ] to the interval [ 0.0 1.0 ] (see Link 10.4, "Transfer Functions" ). The value shall be either a single function (which applies to all process colorants) or an array of four functions (which apply to the process colorants individually). The name Identity may be used to represent the identity function.
    method TR2 {...};	#| [function, array, or name] (Optional; PDF 1.3) Same as TR except that the value may also be the name Default, denoting the transfer function that was in effect at the start of the page. If both TR and TR2 are present in the same graphics state parameter dictionary, TR2 shall take precedence.
    method HT {...};	#| [dictionary, stream, or name] (Optional) The halftone dictionary or stream (see Link 10.5, "Halftones" ) or the name Default, denoting the halftone that was in effect at the start of the page.
    method FL {...};	#| [number] (Optional; PDF 1.3) The flatness tolerance (see Link 10.6.2, "Flatness Tolerance" ).
    method SM {...};	#| [number] (Optional; PDF 1.3) The smoothness tolerance (see Link 10.6.3, "Smoothness Tolerance" ).
    method SA {...};	#| [boolean] (Optional) A flag specifying whether to apply automatic stroke adjustment (see Link 10.6.5, "Automatic Stroke Adjustment" ).
    method BM {...};	#| [name or array] (Optional; PDF 1.4) The current blend mode to be used in the transparent imaging model (see Link 11.3.5, "Blend Mode" and Link 11.6.3, "Specifying Blending Colour Space and Blend Mode" ).
    method SMask {...};	#| [dictionary or name] (Optional; PDF 1.4) The current soft mask, specifying the mask shape or mask opacity values that shall be used in the transparent imaging model (see Link 11.3.7.2, "Source Shape and Opacity" and Link 11.6.4.3, "Mask Shape and Opacity" ).
	#| Although the current soft mask is sometimes referred to as a “soft clip,” altering it with the gs operator completely replaces the old value with the new one, rather than intersecting the two as is done with the current clipping path parameter (see Link 8.5.4, "Clipping Path Operators" ).
    method CA {...};	#| [number] (Optional; PDF 1.4) The current stroking alpha constant, specifying the constant shape or constant opacity value that shall be used for stroking operations in the transparent imaging model (see Link 11.3.7.2, "Source Shape and Opacity" and Link 11.6.4.4, "Constant Shape and Opacity" ).
    method ca {...};	#| [number] (Optional; PDF 1.4) Same as CA, but for nonstroking operations.
    method AIS {...};	#| [boolean] (Optional; PDF 1.4) The alpha source flag (“alpha is shape”), specifying whether the current soft mask and alpha constant shall beinterpreted as shape values (true) or opacity values (false).
    method TK {...};	#| [boolean] (Optional; PDF 1.4) The text knockout flag, shall determine the behaviour of overlapping glyphs within a text object in the transparent imaging model (see Link 9.3.8, "Text Knockout" ).
}
