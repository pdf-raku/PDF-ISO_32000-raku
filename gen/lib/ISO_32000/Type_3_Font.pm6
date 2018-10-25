use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Type_3_Font ../tables/Type_3_Font_entries.html

role ISO_32000::Type_3_Font {
    method Type {...};	#| [name] (Required) The type of PDF object that this dictionary describes; shall be Font for a font dictionary.
    method Subtype {...};	#| [name] (Required) The type of font; shall be Type3 for a Type 3 font.
    method Name {...};	#| [name] (Required in PDF 1.0; optional otherwise) See Link Table 111 .
    method FontBBox {...};	#| [rectangle] (Required) A rectangle (see Link 7.9.5, "Rectangles" ) expressed in the glyph coordinate system, specifying the font bounding box. This is the smallest rectangle enclosing the shape that would result if all of the glyphs of the font were placed with their origins coincident and then filled.
	#| If all four elements of the rectangle are zero, a conforming reader shall make no assumptions about glyph sizes based on the font bounding box. If any element is nonzero, the font bounding box shall be accurate. If any glyph’s marks fall outside this bounding box, incorrect behavior may result.
    method FontMatrix {...};	#| [array] (Required) An array of six numbers specifying the font matrix, mapping glyph space to text space (see Link 9.2.4, "Glyph Positioning and Metrics" ).
	#| NOTE A common practice is to define glyphs in terms of a 1000-unit glyph coordinate system, in which case the font matrix is [ 0.001 0 0 0.001 0 0 ].
    method CharProcs {...};	#| [dictionary] (Required) A dictionary in which each key shall be a glyph name and the value associated with that key shall be a content stream that constructs and paints the glyph for that character. The stream shall include as its first operator either d0 or d1, followed by operators describing one or more graphics objects, which may include path, text, or image objects. See below for more details about Type 3 glyph descriptions.
    method Encoding {...};	#| [name or dictionary] (Required) An encoding dictionary whose Differences array shall specify the complete character encoding for this font (see Link 9.6.6, "Character Encoding" ).
    method FirstChar {...};	#| [integer] (Required) The first character code defined in the font’s Widths array.
    method LastChar {...};	#| [integer] (Required) The last character code defined in the font’s Widths array.
    method Widths {...};	#| [array] (Required; should be an indirect reference) An array of (LastChar − FirstChar + 1) widths, each element being the glyph width for the character code that equals FirstChar plus the array index. For character codes outside the range FirstChar to LastChar, the width shall be 0. These widths shall be interpreted in glyph space as specified by FontMatrix (unlike the widths of a Type 1 font, which are in thousandths of a unit of text space).
	#| If FontMatrix specifies a rotation, only the horizontal component of the transformed width shall be used. That is, the resulting displacement shall be horizontal in text space, as is the case for all simple fonts.
    method FontDescriptor {...};	#| [dictionary] (Required in Tagged PDF documents; shall be an indirect reference) A font descriptor describing the font’s default metrics other than its glyph widths (see Link 9.8, "Font Descriptors" ).
    method Resources {...};	#| [dictionary] (Optional but should be used; PDF 1.2) A list of the named resources, such as fonts and images, required by the glyph descriptions in this font (see Link 7.8.3, "Resource Dictionaries" ). If any glyph descriptions refer to named resources but this dictionary is absent, the names shall be looked up in the resource dictionary of the page on which the font is used.
    method ToUnicode {...};	#| [stream] (Optional; PDF 1.2) A stream containing a CMap file that maps character codes to Unicode values (see Link 9.10, "Extraction of Text Content" ).
}