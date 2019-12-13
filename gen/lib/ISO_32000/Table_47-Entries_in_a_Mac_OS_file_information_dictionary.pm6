use v6;
#| PDF 32000-1:2008 Table 47 – Entries in a Mac OS file information dictionary
role ISO_32000::Table_47-Entries_in_a_Mac_OS_file_information_dictionary {
    method Subtype {...};
    method Creator {...};
    method ResFork {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Subtype [integer]
- (Optional) The embedded file’s file type. It is encoded as an integer according to Mac OS conventions: a 4-character ASCII text literal, that is a 32-bit integer, with the high-order byte first.
EXAMPLE The file type “CARO” is represented as the hexadecimal integer 4341524F, which is expressed in decimal as 1128354383.

=head2 Creator [integer]
- (Optional) The embedded file’s creator signature is encoded in the same way as Subtype.

=head2 ResFork [stream]
- (Optional) The binary contents of the embedded file’s resource fork.

=end pod
