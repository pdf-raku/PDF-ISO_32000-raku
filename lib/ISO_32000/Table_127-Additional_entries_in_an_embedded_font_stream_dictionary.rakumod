use v6;
role ISO_32000::Table_127-Additional_entries_in_an_embedded_font_stream_dictionary {
    method Length1 {...};
    method Length2 {...};
    method Length3 {...};
    method Subtype {...};
    method Metadata {...};
}

=begin pod

=head1 Description

Table 127 – Additional entries in an embedded font stream dictionary

=head1 Methods (Entries)

=head2 Length1 [integer]
- (Required for Type 1 and TrueType fonts) The length in bytes of the clear-text portion of the Type 1 font program, or the entire TrueType font program, after it has been decoded using the filters specified by the stream’s Filter entry, if any.

=head2 Length2 [integer]
- (Required for Type 1 fonts) The length in bytes of the encrypted portion of the Type 1 font program after it has been decoded using the filters specified by the stream’s Filter entry.

=head2 Length3 [integer]
- (Required for Type 1 fonts) The length in bytes of the fixed-content portion of the Type 1 font program after it has been decoded using the filters specified by the stream’s Filter entry. If Length3 is 0, it indicates that the 512 zeros and cleartomark have not been included in the FontFile font program and is added by the conforming reader.

=head2 Subtype [name]
- (Required if referenced from FontFile3; PDF 1.2) A name specifying the format of the embedded font program. The name is Type1C for Type 1 compact fonts, CIDFontType0C for Type 0 compact CIDFonts, or OpenType for OpenType fonts.

=head2 Metadata [stream]
- (Optional; PDF 1.4) A metadata stream containing metadata for the embedded font program (see 14.3.2, "Metadata Streams").

=end pod
