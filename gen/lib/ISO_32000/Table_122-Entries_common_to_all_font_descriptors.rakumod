use v6;
role ISO_32000::Table_122-Entries_common_to_all_font_descriptors {
    method Type {...};
    method FontName {...};
    method FontFamily {...};
    method FontStretch {...};
    method FontWeight {...};
    method Flags {...};
    method FontBBox {...};
    method ItalicAngle {...};
    method Ascent {...};
    method Descent {...};
    method Leading {...};
    method CapHeight {...};
    method XHeight {...};
    method StemV {...};
    method StemH {...};
    method AvgWidth {...};
    method MaxWidth {...};
    method MissingWidth {...};
    method FontFile {...};
    method FontFile2 {...};
    method FontFile3 {...};
    method CharSet {...};
}

=begin pod

=head1 Description

Table 122 – Entries common to all font descriptors

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is FontDescriptor for a font descriptor.

=head2 FontName [name]
- (Required) The PostScript name of the font. This name is the same as the value of BaseFont in the font or CIDFont dictionary that refers to this font descriptor.

=head2 FontFamily [byte string]
- (Optional; PDF 1.5; is used for Type 3 fonts in Tagged PDF documents) A byte string specifying the preferred font family name.
EXAMPLE 1 For the font Times Bold Italic, the FontFamily is Times.

=head2 FontStretch [name]
- (Optional; PDF 1.5; is used for Type 3 fonts in Tagged PDF documents) The font stretch value. It is one of these names (ordered from narrowest to widest): UltraCondensed, ExtraCondensed, Condensed, SemiCondensed, Normal, SemiExpanded, Expanded, ExtraExpanded or UltraExpanded.
The specific interpretation of these values varies from font to font.
EXAMPLE 2Condensed in one font may appear most similar to Normal in another.

=head2 FontWeight [number]
- (Optional; PDF 1.5; is used for Type 3 fonts in Tagged PDF documents) The weight (thickness) component of the fully-qualified font name or font specifier. The possible values is 100, 200, 300, 400, 500, 600, 700, 800, or 900, where each number indicates a weight that is at least as dark as its predecessor. A value of 400 indicates a normal weight; 700 indicates bold.
The specific interpretation of these values varies from font to font.
EXAMPLE 3 300 in one font may appear most similar to 500 in another.

=head2 Flags [integer]
- (Required) A collection of flags defining various characteristics of the font (see 9.8.2, "Font Descriptor Flags").

=head2 FontBBox [rectangle]
- (Required, except for Type 3 fonts) A rectangle (see 7.9.5, "Rectangles"), expressed in the glyph coordinate system, that specifies the font bounding box. This is the smallest rectangle enclosing the shape that would result if all of the glyphs of the font were placed with their origins coincident and then filled.

=head2 ItalicAngle [number]
- (Required) The angle, expressed in degrees counterclockwise from the vertical, of the dominant vertical strokes of the font.
EXAMPLE 4 The 9-o’clock position is 90 degrees, and the 3- o’clock position is –90 degrees. The value is negative for fonts that slope to the right, as almost all italic fonts do.

=head2 Ascent [number]
- (Required, except for Type 3 fonts) The maximum height above the baseline reached by glyphs in this font. The height of glyphs for accented characters is excluded.

=head2 Descent [number]
- (Required, except for Type 3 fonts) The maximum depth below the baseline reached by glyphs in this font. The value is a negative number.

=head2 Leading [number]
- (Optional) The spacing between baselines of consecutive lines of text. Default value: 0.

=head2 CapHeight [number]
- (Required for fonts that have Latin characters, except for Type 3 fonts) The vertical coordinate of the top of flat capital letters, measured from the baseline.

=head2 XHeight [number]
- (Optional) The font’s x height: the vertical coordinate of the top of flat nonascending lowercase letters (like the letter x), measured from the baseline, in fonts that have Latin characters. Default value: 0.

=head2 StemV [number]
- (Required, except for Type 3 fonts) The thickness, measured horizontally, of the dominant vertical stems of glyphs in the font.

=head2 StemH [number]
- (Optional) The thickness, measured vertically, of the dominant horizontal stems of glyphs in the font. Default value: 0.

=head2 AvgWidth [number]
- (Optional) The average width of glyphs in the font. Default value: 0.

=head2 MaxWidth [number]
- (Optional) The maximum width of glyphs in the font. Default value: 0.

=head2 MissingWidth [number]
- (Optional) The width to use for character codes whose widths are not specified in a font dictionary’s Widths array. This has a predictable effect only if all such codes map to glyphs whose actual widths are the same as the value of the MissingWidth entry. Default value: 0.

=head2 FontFile [stream]
- (Optional) A stream containing a Type 1 font program (see 9.9, "Embedded Font Programs").

=head2 FontFile2 [stream]
- (Optional; PDF 1.1) A stream containing a TrueType font program (see 9.9, "Embedded Font Programs").

=head2 FontFile3 [stream]
- (Optional; PDF 1.2) A stream containing a font program whose format is specified by the Subtype entry in the stream dictionary (see Table 126).


=head2 CharSet [ASCII string or byte string]
- (Optional; meaningful only in Type 1 fonts; PDF 1.1) A string listing the character names defined in a font subset. The names in this string is in PDF syntax—that is, each name preceded by a slash (/). The names may appear in any order. The name . notdef is omitted; it exists in the font subset. If this entry is absent, the only indication of a font subset is the subset tag in the FontName entry (see 9.6.4, "Font Subsets").

=end pod
