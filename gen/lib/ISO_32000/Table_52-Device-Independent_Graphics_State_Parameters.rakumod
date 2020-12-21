use v6;
role ISO_32000::Table_52-Device-Independent_Graphics_State_Parameters {
    method CTM {...};
    method clippingPath {...};
    method colorSpace {...};
    method color {...};
    method textState {...};
    method lineWidth {...};
    method lineCap {...};
    method lineJoin {...};
    method miterLimit {...};
    method dashPattern {...};
    method renderingIntent {...};
    method strokeAdjustment {...};
    method blendMode {...};
    method softMask {...};
    method alphaConstant {...};
    method alphaSource {...};
}

=begin pod

=head1 Description

Table 52 – Device-Independent Graphics State Parameters

=head1 Methods (Entries)

=head2 CTM [array]
- The current transformation matrix, which maps positions from user coordinates to device coordinates (see 8.3, "Coordinate Systems"). This matrix is modified by each application of the coordinate transformation operator, cm. Initial value: a matrix that transforms default user coordinates to device coordinates.

=head2 clippingPath [(internal)]
- The current clipping path, which defines the boundary against which all output is cropped (see 8.5.4, "Clipping Path Operators"). Initial value: the boundary of the entire imageable portion of the output page.

=head2 colorSpace [name or array]
- The current colour space in which colour values shall beinterpreted (see 8.6, "Colour Spaces"). There are two separate colour space parameters: one for stroking and one for all other painting operations. Initial value: DeviceGray.

=head2 color [(various)]
- The current colour to be used during painting operations (see 8.6, "Colour Spaces"). The type and interpretation of this parameter depend on the current colour space; for most colour spaces, a colour value consists of one to four numbers. There are two separate colour parameters: one for stroking and one for all other painting operations. Initial value: black.

=head2 textState [(various)]
- A set of nine graphics state parameters that pertain only to the painting of text. These include parameters that select the font, scale the glyphs to an appropriate size, and accomplish other effects. The text state parameters are described in 9.3, "Text State Parameters and Operators" .

=head2 lineWidth [number]
- The thickness, in user space units, of paths to be stroked (see 8.4.3.2, "Line Width"). Initial value: 1.0.

=head2 lineCap [integer]
- A code specifying the shape of the endpoints for any open path that is stroked (see 8.4.3.3, "Line Cap Style"). Initial value: 0, for square butt caps.

=head2 lineJoin [integer]
- A code specifying the shape of joints between connected segments of a stroked path (see 8.4.3.4, "Line Join Style"). Initial value: 0, for mitered joins.

=head2 miterLimit [number]
- The maximum length of mitered line joins for stroked paths (see 8.4.3.5, "Miter Limit"). This parameter limits the length of “spikes” produced when line segments join at sharp angles. Initial value: 10.0, for a miter cutoff below approximately 11.5 degrees.

=head2 dashPattern [array and number]
- A description of the dash pattern to be used when paths are stroked (see 8.4.3.6, "Line Dash Pattern"). Initial value: a solid line.

=head2 renderingIntent [name]
- The rendering intent to be used when converting CIE-based colours to device colours (see 8.6.5.8, "Rendering Intents"). Initial value: RelativeColorimetric.

=head2 strokeAdjustment [boolean]
- (PDF 1.2) A flag specifying whether to compensate for possible rasterization effects when stroking a path with a line width that is small relative to the pixel resolution of the output device (see 10.6.5, "Automatic Stroke Adjustment").
NOTE This is considered a device-independent parameter, even though the details of its effects are device-dependent. Initial value: false.

=head2 blendMode [name or array]
- (PDF 1.4) The current blend mode to be used in the transparent imaging model (see 11.3.5, "Blend Mode" and 11.6.3, "Specifying Blending Colour Space and Blend Mode"). A conforming reader shall implicitly reset this parameter to its initial value at the beginning of execution of a transparency group XObject (see 11.6.6, "Transparency Group XObjects"). Initial value: Normal.

=head2 softMask [dictionary or name]
- (PDF 1.4) A soft-mask dictionary (see 11.6.5.2, "Soft-Mask Dictionaries") specifying the mask shape or mask opacity values to be used in the transparent imaging model (see 11.3.7.2, "Source Shape and Opacity" and 11.6.4.3, "Mask Shape and Opacity"), or the name None if no such mask is specified. A conforming reader shall implicitly reset this parameter implicitly reset to its initial value at the beginning of execution of a transparency group XObject (see 11.6.6, "Transparency Group XObjects"). Initial value: None.

=head2 alphaConstant [number]
- (PDF 1.4) The constant shape or constant opacity value to be used in the transparent imaging model (see 11.3.7.2, "Source Shape and Opacity" and 11.6.4.4, "Constant Shape and Opacity"). There are two separate alpha constant parameters: one for stroking and one for all other painting operations. A conforming reader shall implicitly reset this parameter to its initial value at the beginning of execution of a transparency group XObject (see 11.6.6, "Transparency Group XObjects"). Initial value: 1.0.

=head2 alphaSource [boolean]
- (PDF 1.4) A flag specifying whether the current soft mask and alpha constant parameters is interpreted as shape values (true) or opacity values (false). This flag also governs the interpretation of the SMask entry, if any, in an image dictionary (see 8.9.5, "Image Dictionaries"). Initial value: false.

=end pod
