use v6;
role ISO_32000::Table_146-Additional_entry_in_a_soft-mask_image_dictionary {
    method Matte {...};
}

=begin pod

=head1 Description

Table 146 – Additional entry in a soft-mask image dictionary

=head1 Methods (Entries)

=head2 Matte [array]
- (Optional; PDF 1.4) An array of component values specifying the matte colour with which the image data in the parent image has been preblended. The array consists of n numbers, where n is the number of components in the colour space specified by the ColorSpace entry in the parent image’s image dictionary; the numbers is valid colour components in that colour space. If this entry is absent, the image data is not preblended.

=end pod
