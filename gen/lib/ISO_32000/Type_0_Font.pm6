use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Type_0_Font ../tables/Type_0_Font_entries.html

role ISO_32000::Type_0_Font {
    method Type {...};	#| [name] (Required) The type of PDF object that this dictionary describes; shall be Font for a font dictionary.
    method Subtype {...};	#| [name] (Required) The type of font; shall be Type0 for a Type 0 font.
    method BaseFont {...};	#| [name] (Required) The name of the font. If the descendant is a Type 0 CIDFont, this name should be the concatenation of the CIDFont’s BaseFont name, a hyphen, and the CMap name given in the Encoding entry (or the CMapName entry in the CMap). If the descendant is a Type 2 CIDFont, this name should be the same as the CIDFont’s BaseFont name.
	#| NOTE In principle, this is an arbitrary name, since there is no font program associated directly with a Type 0 font dictionary. The conventions described here ensure maximum compatibility with existing readers.
    method Encoding {...};	#| [name or stream] (Required) The name of a predefined CMap, or a stream containing a CMap that maps character codes to font numbers and CIDs. If the descendant is a Type 2 CIDFont whose associated TrueType font program is not embedded in the PDF file, the Encoding entry shall be a predefined CMap name (see Link 9.7.4.2, "Glyph Selection in CIDFonts" ).
    method DescendantFonts {...};	#| [array] (Required) A one-element array specifying the CIDFont dictionary that is the descendant of this Type 0 font.
    method ToUnicode {...};	#| [stream] (Optional) A stream containing a CMap file that maps character codes to Unicode values (see Link 9.10, "Extraction of Text Content" ).
}
