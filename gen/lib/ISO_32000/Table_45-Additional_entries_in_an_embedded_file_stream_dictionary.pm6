use v6;
role ISO_32000::Table_45-Additional_entries_in_an_embedded_file_stream_dictionary {
    method Type {...};
    method Subtype {...};
    method Params {...};
}

=begin pod

=head1 Description

Table 45 – Additional entries in an embedded file stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is EmbeddedFile for an embedded file stream.

=head2 Subtype [name]
- (Optional) The subtype of the embedded file. The value of this entry is a first-class name, as defined in Annex E . Names without a registered prefix conforms to the MIME media type names defined in Internet RFC 2046, Multipurpose Internet Mail Extensions (MIME), Part Two: Media Types (see the Bibliography), with the provision that characters not allowed in names uses the 2-character hexadecimal code format described in 7.3.5, "Name Objects."

=head2 Params [dictionary]
- (Optional) An embedded file parameter dictionary that contains additional file-specific information (see Table 46).

=end pod
