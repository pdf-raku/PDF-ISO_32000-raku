use v6;
role ISO_32000::Table_345-Standard_layout_attributes_specific_to_inline-level_structure_elements {
    method BaselineShift {...};
    method LineHeight {...};
    method TextDecorationColor {...};
    method TextDecorationThickness {...};
    method TextDecorationType {...};
    method RubyAlign {...};
    method RubyPosition {...};
    method GlyphOrientationVertical {...};
}

=begin pod

=head1 Description

Table 345 – Standard layout attributes specific to inline-level structure elements

=head1 Methods (Entries)

=head2 BaselineShift [number]
- (Optional; not inheritable) The distance, in default user space units, by which the element’s baseline is shifted relative to that of its parent element. The shift direction is the opposite of the block-progression direction specified by the prevailing WritingMode attribute (see “General Layout Attributes” in 14.8.5.4, “Layout Attributes”). Thus, positive values shall shift the baseline toward the before edge and negative values toward the after edge of the reference area (upward and downward, respectively, in Western writing systems). Default value: 0.
The shifted element may be a superscript, a subscript, or an inline graphic. The shift applies to the element, its content, and all of its descendants. Any further baseline shift applied to a child of this element is measured relative to the shifted baseline of this (parent) element.

=head2 LineHeight [number or name]
- (Optional; inheritable) The element’s preferred height, measured in default user space units in the block-progression direction. The height of a line is determined by the largest LineHeight value for any complete or partial ILSE that it contains.
The name Normal or Auto in place of a numeric value indicates that no specific height constraint is to be imposed. The element’s height is set to a reasonable value based on the content’s font size:
Normal Adjust the line height to include any nonzero value specified for BaselineShift.
Auto Adjustment for the value of BaselineShift is not made.
Default value: Normal.
This attribute applies to all ILSEs (including implicit ones) that are children of this element or of its nested ILSEs, if any. It does not apply to nested BLSEs.
When translating to a specific export format, the values Normal and Auto, if specified, is used directly if they are available in the target format. The meaning of the term “reasonable value” is left to the conforming reader to determine. It is approximately 1.2 times the font size, but this value can vary depending on the export format.
NOTE 1 In the absence of a numeric value for LineHeight or an explicit value for the font size, a reasonable method of calculating the line height from the information in a Tagged PDF file is to find the difference between the associated font’s Ascent and Descent values (see 9.8, “Font Descriptors”), map it from glyph space to default user space (see 9.4.4, “Text Space Details”), and use the maximum resulting value for any character in the line.

=head2 TextDecorationColor [array]
- (Optional; inheritable; PDF 1.5) The colour to be used for drawing text decorations. The value is an array of three numbers in the range 0.0 to 1.0, representing the red, green, and blue values, respectively, of an RGB colour space. If this attribute is not specified, the border colour for this element is the current fill colour in effect at the start of its associated content.

=head2 TextDecorationThickness [number]
- (Optional; inheritable; PDF 1.5) The thickness of each line drawn as part of the text decoration. The value is a non-negative number in default user space units representing the thickness (0 is interpreted as the thinnest possible line). If this attribute is not specified, it is derived from the current stroke thickness in effect at the start of the element’s associated content, transformed into default user space units.

=head2 TextDecorationType [name]
- (Optional; not inheritable) The text decoration, if any, to be applied to the element’s text.
None No text decoration
Underline A line below the text
Overline A line above the text
LineThrough A line through the middle of the text
Default value: None.
This attribute applies to all text content items that are children of this element or of its nested ILSEs, if any. The attribute does not apply to nested BLSEs or to content items other than text.
The colour, position, and thickness of the decoration is uniform across all children, regardless of changes in colour, font size, or other variations in the content’s text characteristics.

=head2 RubyAlign [name]
- (Optional; inheritable; PDF 1.5) The justification of the lines within a ruby assembly:
Start The content is aligned on the start edge in the inline-progression direction.
Center The content is centered in the inline-progression direction.
End The content is aligned on the end edge in the inline-progression direction.
Justify The content is expanded to fill the available width in the inline-progression direction.
Distribute The content is expanded to fill the available width in the inline-progression direction. However, space is also inserted at the start edge and end edge of the text. The spacing is distributed using a 1:2:1 (start:infix:end) ratio. It is changed to a 0:1:1 ratio if the ruby appears at the start of a text line or to a 1:1:0 ratio if the ruby appears at the end of the text line.
Default value: Distribute.
This attribute may be specified on the RB and RT elements. When a ruby is formatted, the attribute is applied to the shorter line of these two elements. (If the RT element has a shorter width than the RB element, the RT element is aligned as specified in its RubyAlign attribute.)

=head2 RubyPosition [name]
- (Optional; inheritable; PDF 1.5) The placement of the RT structure element relative to the RB element in a ruby assembly:
Before The RT content is aligned along the before edge of the element.
After The RT content is aligned along the after edge of the element.
Warichu The RT and associated RP elements is formatted as a warichu, following the RB element.
Inline The RT and associated RP elements is formatted as a parenthesis comment, following the RB element.
Default value: Before.

=head2 GlyphOrientationVertical [name]
- (Optional; inheritable; PDF 1.5) Specifies the orientation of glyphs when the inline-progression direction is top to bottom or bottom to top.
This attribute may take one of the following values:
angle A number representing the clockwise rotation in degrees of the top of the glyphs relative to the top of the reference area. Shall be a multiple of 90 degrees between -180 and +360.
AutoSpecifies a default orientation for text, depending on whether it is fullwidth (as wide as it is high). Fullwidth Latin and fullwidth ideographic text (excluding ideographic punctuation) is set with an angle of 0. Ideographic punctuation and other ideographic characters having alternate horizontal and vertical forms uses the vertical form of the glyph. Non-fullwidth text is set with an angle of 90.
Default value: Auto.
NOTE 2 This attribute is used most commonly to differentiate between the preferred orientation of alphabetic (non- ideographic) text in vertically written Japanese documents (Auto or 90) and the orientation of the ideographic characters and/or alphabetic (non- ideographic) text in western signage and advertising (90). This attribute shall affect both the alignment and width of the glyphs. If a glyph is perpendicular to the vertical baseline, its horizontal alignment point is aligned with the alignment baseline for the script to which the glyph belongs. The width of the glyph area is determined from the horizontal width font characteristic for the glyph.

=end pod
