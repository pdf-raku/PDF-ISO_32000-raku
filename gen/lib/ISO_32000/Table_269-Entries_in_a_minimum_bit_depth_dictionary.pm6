use v6;
#| PDF 32000-1:2008 Table 269 – Entries in a minimum bit depth dictionary
role ISO_32000::Table_269-Entries_in_a_minimum_bit_depth_dictionary {
    method Type {...};
    method V {...};
    method M {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MinBitDepth for a minimum bit depth dictionary.

=head2 V [integer]
- (Required) A positive integer (0 or greater) specifying the minimum screen depth (in bits) of the monitor for the rendition to be viable. A negative value is not allowed.

=head2 M [integer]
- (Optional) A monitor specifier (see Table 270) that specifies which monitor the value of V is tested against. If the value is unrecognized, the object is not viable.
Default value: 0.

=end pod
