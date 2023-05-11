use v6;
role ISO_32000::Table_124-Additional_font_descriptor_entries_for_CIDFonts {
    method Style {...};
    method Lang {...};
    method FD {...};
    method CIDSet {...};
}

=begin pod

=head1 Description

Table 124 – Additional font descriptor entries for CIDFonts

=head1 Methods (Entries)

=head2 Style [dictionary]
- (Optional) A dictionary containing entries that describe the style of the glyphs in the font (see 9.8.3.2, "Style").

=head2 Lang [name]
- (Optional; PDF 1.5) A name specifying the language of the font, which may be used for encodings where the language is not implied by the encoding itself. The value is one of the codes defined by Internet RFC 3066, Tags for the Identification of Languages or (PDF 1.0) 2-character language codes defined by ISO 639 (see the Bibliography). If this entry is absent, the language is considered to be unknown.

=head2 FD [dictionary]
- (Optional) A dictionary whose keys identify a class of glyphs in a CIDFont. Each value is a dictionary containing entries that overrides the corresponding values in the main font descriptor dictionary for that class of glyphs (see 9.8.3.3, "FD").

=head2 CIDSet [stream]
- (Optional) A stream identifying which CIDs are present in the CIDFont file. If this entry is present, the CIDFont contains only a subset of the glyphs in the character collection defined by the CIDSystemInfo dictionary. If it is absent, the only indication of a CIDFont subset is the subset tag in the FontName entry (see 9.6.4, "Font Subsets").
The stream’s data is organized as a table of bits indexed by CID. The bits is stored in bytes with the high-order bit first. Each bit corresponds to a CID. The most significant bit of the first byte corresponds to CID 0, the next bit to CID 1, and so on.

=end pod
