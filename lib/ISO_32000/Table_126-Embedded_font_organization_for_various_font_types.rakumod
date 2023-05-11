use v6;
role ISO_32000::Table_126-Embedded_font_organization_for_various_font_types {
    method FontFile {...};
    method FontFile2 {...};
    method FontFile3 {...};
}

=begin pod

=head1 Description

Table 126 – Embedded font organization for various font types

=head1 Methods (Entries)

=head2 FontFile [—]
- Type 1 font program, in the original (noncompact) format described in Adobe Type 1 Font Format. This entry may appear in the font descriptor for a Type1 or MMType1 font dictionary.

=head2 FontFile2 [—]
- (PDF 1.1) TrueType font program, as described in the TrueType Reference Manual. This entry may appear in the font descriptor for a TrueType font dictionary or (PDF 1.3) for a CIDFontType2 CIDFont dictionary.

=head2 FontFile3 [Type1C
]
- (PDF 1.2) Type 1–equivalent font program represented in the Compact Font Format (CFF), as described in Adobe Technical Note 5176, The Compact Font Format Specification. This entry may appear in the font descriptor for a Type1 or MMType1 font dictionary.

=head2 FontFile3 [CIDFontType0C]
- (PDF 1.3) Type 0 CIDFont program represented in the Compact Font Format (CFF), as described in Adobe Technical Note 5176, The Compact Font Format Specification. This entry may appear in the font descriptor for a CIDFontType0 CIDFont dictionary.

=head2 FontFile3 [OpenType]
- (PDF 1.6) OpenType® font program, as described in the OpenType Specification v.1.4 (see the Bibliography). OpenType is an extension of TrueType that allows inclusion of font programs that use the Compact Font Format (CFF).
A FontFile3 entry with an OpenType subtype may appear in the font descriptor for these types of font dictionaries:
•A TrueType font dictionary or a CIDFontType2 CIDFont dictionary, if the embedded font program contains a “glyf” table. In addition to the “glyf” table, the font program must include these tables: “head”, “hhea”, “hmtx”, “loca”, and “maxp”. The “cvt ” (notice the trailing SPACE), “fpgm”, and “prep” tables must also be included if they are required by the font instructions.
•A CIDFontType0 CIDFont dictionary, if the embedded font program contains a “CFF ” table (notice the trailing SPACE) with a Top DICT that uses CIDFont operators (this is equivalent to subtype CIDFontType0C). In addition to the “CFF ” table, the font program must include the “cmap” table.
•A Type1 font dictionary or CIDFontType0 CIDFont dictionary, if the embedded font program contains a “CFF ” table without CIDFont operators. In addition to the “CFF ” table, the font program must include the “cmap” table.
The OpenType Specification describes a set of required tables; however, not all tables are required in the font file, as described for each type of font dictionary that can include this entry.
NOTE The absence of some optional tables (such as those used for advanced line layout) may prevent editing of text containing the font.

=end pod
