use v6;
role ISO_32000::Table_112-Entries_in_a_Type_3_font_dictionary {
    method Type {...};
    method Subtype {...};
    method Name {...};
    method FontBBox {...};
    method FontMatrix {...};
    method CharProcs {...};
    method Encoding {...};
    method FirstChar {...};
    method LastChar {...};
    method Widths {...};
    method FontDescriptor {...};
    method Resources {...};
    method ToUnicode {...};
}

=begin pod

=head1 Description

Table 112 – Entries in a Type 3 font dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Font for a font dictionary.

=head2 Subtype [name]
- (Required) The type of font; is Type3 for a Type 3 font.

=head2 Name [name]
- (Required in PDF 1.0; optional otherwise) See Table 111 .

=head2 FontBBox [rectangle]
- (Required) A rectangle (see 7.9.5, "Rectangles") expressed in the glyph coordinate system, specifying the font bounding box. This is the smallest rectangle enclosing the shape that would result if all of the glyphs of the font were placed with their origins coincident and then filled.
If all four elements of the rectangle are zero, a conforming reader makes no assumptions about glyph sizes based on the font bounding box. If any element is nonzero, the font bounding box is accurate. If any glyph’s marks fall outside this bounding box, incorrect behavior may result.

=head2 FontMatrix [array]
- (Required) An array of six numbers specifying the font matrix, mapping glyph space to text space (see 9.2.4, "Glyph Positioning and Metrics").
NOTE A common practice is to define glyphs in terms of a 1000-unit glyph coordinate system, in which case the font matrix is [ 0.001 0 0 0.001 0 0 ].

=head2 CharProcs [dictionary]
- (Required) A dictionary in which each key is a glyph name and the value associated with that key is a content stream that constructs and paints the glyph for that character. The stream includes as its first operator either d0 or d1, followed by operators describing one or more graphics objects, which may include path, text, or image objects. See below for more details about Type 3 glyph descriptions.

=head2 Encoding [name or dictionary]
- (Required) An encoding dictionary whose Differences array specifies the complete character encoding for this font (see 9.6.6, "Character Encoding").

=head2 FirstChar [integer]
- (Required) The first character code defined in the font’s Widths array.

=head2 LastChar [integer]
- (Required) The last character code defined in the font’s Widths array.

=head2 Widths [array]
- (Required; is an indirect reference) An array of (LastChar − FirstChar + 1) widths, each element being the glyph width for the character code that equals FirstChar plus the array index. For character codes outside the range FirstChar to LastChar, the width is 0. These widths is interpreted in glyph space as specified by FontMatrix (unlike the widths of a Type 1 font, which are in thousandths of a unit of text space).
If FontMatrix specifies a rotation, only the horizontal component of the transformed width is used. That is, the resulting displacement is horizontal in text space, as is the case for all simple fonts.

=head2 FontDescriptor [dictionary]
- (Required in Tagged PDF documents; is an indirect reference) A font descriptor describing the font’s default metrics other than its glyph widths (see 9.8, "Font Descriptors").

=head2 Resources [dictionary]
- (Optional but is used; PDF 1.2) A list of the named resources, such as fonts and images, required by the glyph descriptions in this font (see 7.8.3, "Resource Dictionaries"). If any glyph descriptions refer to named resources but this dictionary is absent, the names is looked up in the resource dictionary of the page on which the font is used.

=head2 ToUnicode [stream]
- (Optional; PDF 1.2) A stream containing a CMap file that maps character codes to Unicode values (see 9.10, "Extraction of Text Content").

=end pod
