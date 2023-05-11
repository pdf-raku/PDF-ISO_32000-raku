use v6;
role ISO_32000::Table_91-Entries_in_an_Alternate_Image_Dictionary {
    method Image {...};
    method DefaultForPrinting {...};
    method OC {...};
}

=begin pod

=head1 Description

Table 91 – Entries in an Alternate Image Dictionary

=head1 Methods (Entries)

=head2 Image [stream]
- (Required) The image XObject for the alternate image.

=head2 DefaultForPrinting [boolean]
- (Optional) A flag indicating whether this alternate image is the default version to be used for printing. At most one alternate for a given base image is so designated. If no alternate has this entry set to true, the base image is used for printing by a conforming reader.

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group (see 8.11.2, "Optional Content Groups") or optional content membership dictionary (see 8.11.2.2, "Optional Content Membership Dictionaries") that facilitates the selection of which alternate image to use.

=end pod
