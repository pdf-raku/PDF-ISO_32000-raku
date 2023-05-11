use v6;
role ISO_32000::Table_121-Entries_in_a_Type_0_font_dictionary {
    method Type {...};
    method Subtype {...};
    method BaseFont {...};
    method Encoding {...};
    method DescendantFonts {...};
    method ToUnicode {...};
}

=begin pod

=head1 Description

Table 121 – Entries in a Type 0 font dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Font for a font dictionary.

=head2 Subtype [name]
- (Required) The type of font; is Type0 for a Type 0 font.

=head2 BaseFont [name]
- (Required) The name of the font. If the descendant is a Type 0 CIDFont, this name is the concatenation of the CIDFont’s BaseFont name, a hyphen, and the CMap name given in the Encoding entry (or the CMapName entry in the CMap). If the descendant is a Type 2 CIDFont, this name is the same as the CIDFont’s BaseFont name.
NOTE In principle, this is an arbitrary name, since there is no font program associated directly with a Type 0 font dictionary. The conventions described here ensure maximum compatibility with existing readers.

=head2 Encoding [name or stream]
- (Required) The name of a predefined CMap, or a stream containing a CMap that maps character codes to font numbers and CIDs. If the descendant is a Type 2 CIDFont whose associated TrueType font program is not embedded in the PDF file, the Encoding entry is a predefined CMap name (see 9.7.4.2, "Glyph Selection in CIDFonts").

=head2 DescendantFonts [array]
- (Required) A one-element array specifying the CIDFont dictionary that is the descendant of this Type 0 font.

=head2 ToUnicode [stream]
- (Optional) A stream containing a CMap file that maps character codes to Unicode values (see 9.10, "Extraction of Text Content").

=end pod
