use v6;
#| PDF 32000-1:2008 Table 46 – Entries in an embedded file parameter dictionary
role ISO_32000::Table_46-Entries_in_an_embedded_file_parameter_dictionary {
    method Size {...};
    method CreationDate {...};
    method ModDate {...};
    method Mac {...};
    method CheckSum {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Size [integer]
- (Optional) The size of the uncompressed embedded file, in bytes.

=head2 CreationDate [date]
- (Optional) The date and time when the embedded file was created.

=head2 ModDate [date]
- (Optional) The date and time when the embedded file was last modified.

=head2 Mac [dictionary]
- (Optional) A subdictionary containing additional information specific to Mac OS files (see Table 47).

=head2 CheckSum [string]
- (Optional) A 16-byte string that is the checksum of the bytes of the uncompressed embedded file. The checksum is calculated by applying the standard MD5 message-digest algorithm (described in Internet RFC 1321, The MD5 Message-Digest Algorithm; see the Bibliography) to the bytes of the embedded file stream.

=end pod
