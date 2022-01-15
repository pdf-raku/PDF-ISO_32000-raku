use v6;
role ISO_32000::Table_117-Entries_in_a_CIDFont_dictionary {
    method Type {...};
    method Subtype {...};
    method BaseFont {...};
    method CIDSystemInfo {...};
    method FontDescriptor {...};
    method DW {...};
    method W {...};
    method DW2 {...};
    method W2 {...};
    method CIDToGIDMap {...};
}

=begin pod

=head1 Description

Table 117 – Entries in a CIDFont dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Font for a CIDFont dictionary.

=head2 Subtype [name]
- (Required) The type of CIDFont is CIDFontType0 or CIDFontType2.

=head2 BaseFont [name]
- (Required) The PostScript name of the CIDFont. For Type 0 CIDFonts, this is the value of the CIDFontName entry in the CIDFont program. For Type 2 CIDFonts, it is derived the same way as for a simple TrueType font; see 9.6.3, "TrueType Fonts". In either case, the name may have a subset prefix if appropriate; see 9.6.4, "Font Subsets".

=head2 CIDSystemInfo [dictionary]
- (Required) A dictionary containing entries that define the character collection of the CIDFont. See Table 116.

=head2 FontDescriptor [dictionary]
- (Required; is an indirect reference) A font descriptor describing the CIDFont’s default metrics other than its glyph widths (see 9.8, "Font Descriptors").

=head2 DW [integer]
- (Optional) The default width for glyphs in the CIDFont (see 9.7.4.3, "Glyph Metrics in CIDFonts"). Default value: 1000 (defined in user units).

=head2 W [array]
- (Optional) A description of the widths for the glyphs in the CIDFont.
NOTE The array’s elements have a variable format that can specify individual widths for consecutive CIDs or one width for a range of CIDs (see 9.7.4.3, "Glyph Metrics in CIDFonts"). Default value: none (the DW value is used for all glyphs).

=head2 DW2 [array]
- (Optional; applies only to CIDFonts used for vertical writing) An array of two numbers specifying the default metrics for vertical writing (see 9.7.4.3, "Glyph Metrics in CIDFonts"). Default value: [ 880 −1000 ].

=head2 W2 [array]
- (Optional; applies only to CIDFonts used for vertical writing) A description of the metrics for vertical writing for the glyphs in the CIDFont (see 9.7.4.3, "Glyph Metrics in CIDFonts"). Default value: none (the DW2 value is used for all glyphs).

=head2 CIDToGIDMap [stream or name]
- (Optional; Type 2 CIDFonts only) A specification of the mapping from CIDs to glyph indices. If the value is a stream, the bytes in the stream contains the mapping from CIDs to glyph indices: the glyph index for a particular CID value c is a 2-byte value stored in bytes 2 × c and 2 × c + 1, where the first byte is the high-order byte. If the value of CIDToGIDMap is a name, it is Identity, indicating that the mapping between CIDs and glyph indices is the identity mapping. Default value: Identity.
This entry may appear only in a Type 2 CIDFont whose associated TrueType font program is embedded in the PDF file.

=end pod
