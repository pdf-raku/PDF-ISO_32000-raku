use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::CIDFont_descriptor_additional ../tables/CIDFont_descriptor_additional_entries.html

role ISO_32000::CIDFont_descriptor_additional {
    method Style {...};	#| [dictionary] (Optional) A dictionary containing entries that describe the style of the glyphs in the font (see Link 9.8.3.2, "Style" ).
    method Lang {...};	#| [name] (Optional; PDF 1.5) A name specifying the language of the font, which may be used for encodings where the language is not implied by the encoding itself. The value shall be one of the codes defined by Internet RFC 3066, Tags for the Identification of Languages or (PDF 1.0) 2-character language codes defined by ISO 639 (see the Link Bibliography ). If this entry is absent, the language shall be considered to be unknown.
    method FD {...};	#| [dictionary] (Optional) A dictionary whose keys identify a class of glyphs in a CIDFont. Each value shall be a dictionary containing entries that shall override the corresponding values in the main font descriptor dictionary for that class of glyphs (see Link 9.8.3.3, "FD" ).
    method CIDSet {...};	#| [stream] (Optional) A stream identifying which CIDs are present in the CIDFont file. If this entry is present, the CIDFont shall contain only a subset of the glyphs in the character collection defined by the CIDSystemInfo dictionary. If it is absent, the only indication of a CIDFont subset shall be the subset tag in the FontName entry (see Link 9.6.4, "Font Subsets" ).
	#| The stream’s data shall be organized as a table of bits indexed by CID. The bits shall be stored in bytes with the high-order bit first. Each bit shall correspond to a CID. The most significant bit of the first byte shall correspond to CID 0, the next bit to CID 1, and so on.
}
