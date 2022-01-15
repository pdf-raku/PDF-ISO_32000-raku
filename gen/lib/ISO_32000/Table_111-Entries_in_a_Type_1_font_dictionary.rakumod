use v6;
role ISO_32000::Table_111-Entries_in_a_Type_1_font_dictionary {
    method Type {...};
    method Subtype {...};
    method Name {...};
    method BaseFont {...};
    method FirstChar {...};
    method LastChar {...};
    method Widths {...};
    method FontDescriptor {...};
    method Encoding {...};
    method ToUnicode {...};
}

=begin pod

=head1 Description

Table 111 – Entries in a Type 1 font dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Font for a font dictionary.

=head2 Subtype [name]
- (Required) The type of font; is Type1 for a Type 1 font.

=head2 Name [name]
- (Required in PDF 1.0; optional otherwise) The name by which this font is referenced in the Font subdictionary of the current resource dictionary.
This entry is obsolete and is not used.

=head2 BaseFont [name]
- (Required) The PostScript name of the font. For Type 1 fonts, this is always the value of the FontName entry in the font program; for more information, see Section 5.2 of the PostScript Language Reference, Third Edition. The PostScript name of the font may be used to find the font program in the conforming reader or its environment. It is also the name that is used when printing to a PostScript output device.

=head2 FirstChar [integer]
- (Required except for the standard 14 fonts) The first character code defined in the font’s Widths array.
Beginning with PDF 1.5, the special treatment given to the standard 14 fonts is deprecated. Conforming writers represents all fonts using a complete font descriptor. For backwards capability, conforming readers shall still provide the special treatment identified for the standard 14 fonts.

=head2 LastChar [integer]
- (Required except for the standard 14 fonts) The last character code defined in the font’s Widths array.
Beginning with PDF 1.5, the special treatment given to the standard 14 fonts is deprecated. Conforming writers represents all fonts using a complete font descriptor. For backwards capability, conforming readers shall still provide the special treatment identified for the standard 14 fonts.

=head2 Widths [array]
- (Required except for the standard 14 fonts; indirect reference preferred) An array of (LastChar − FirstChar + 1) widths, each element being the glyph width for the character code that equals FirstChar plus the array index. For character codes outside the range FirstChar to LastChar, the value of MissingWidth from the FontDescriptor entry for this font is used. The glyph widths is measured in units in which 1000 units correspond to 1 unit in text space. These widths is consistent with the actual widths given in the font program. For more information on glyph widths and other glyph metrics, see 9.2.4, "Glyph Positioning and Metrics".
Beginning with PDF 1.5, the special treatment given to the standard 14 fonts is deprecated. Conforming writers represents all fonts using a complete font descriptor. For backwards capability, conforming readers shall still provide the special treatment identified for the standard 14 fonts.

=head2 FontDescriptor [dictionary]
- (Required except for the standard 14 fonts; is an indirect reference) A font descriptor describing the font’s metrics other than its glyph widths (see 9.8, "Font Descriptors"”\).
For the standard 14 fonts, the entries FirstChar, LastChar, Widths, and FontDescriptor shall either all be present or all be absent. Ordinarily, these dictionary keys may be absent; specifying them enables a standard font to be overridden; see 9.6.2.2, "Standard Type 1 Fonts (Standard 14 Fonts)".
Beginning with PDF 1.5, the special treatment given to the standard 14 fonts is deprecated. Conforming writers represents all fonts using a complete font descriptor. For backwards capability, conforming readers shall still provide the special treatment identified for the standard 14 fonts.

=head2 Encoding [name or dictionary]
- (Optional) A specification of the font’s character encoding if different from its built-in encoding. The value of Encoding is either the name of a predefined encoding (MacRomanEncoding, MacExpertEncoding, or WinAnsiEncoding, as described in Annex D) or an encoding dictionary that specifies differences from the font’s built-in encoding or from a specified predefined encoding (see 9.6.6, "Character Encoding").

=head2 ToUnicode [stream]
- (Optional; PDF 1.2) A stream containing a CMap file that maps character codes to Unicode values (see 9.10, "Extraction of Text Content").

=end pod
