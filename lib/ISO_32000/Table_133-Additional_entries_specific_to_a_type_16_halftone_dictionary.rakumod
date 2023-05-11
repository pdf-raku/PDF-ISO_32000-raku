use v6;
role ISO_32000::Table_133-Additional_entries_specific_to_a_type_16_halftone_dictionary {
    method Type {...};
    method HalftoneType {...};
    method HalftoneName {...};
    method Width {...};
    method Height {...};
    method Width2 {...};
    method Height2 {...};
    method TransferFunction {...};
}

=begin pod

=head1 Description

Table 133 – Additional entries specific to a type 16 halftone dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Halftone for a halftone dictionary.

=head2 HalftoneType [integer]
- (Required) A code identifying the halftone type that this dictionary describes; is 16 for this type of halftone.

=head2 HalftoneName [byte string]
- (Optional) The name of the halftone dictionary.

=head2 Width [integer]
- (Required) The width of the first (or only) rectangle in the threshold array, in device pixels.

=head2 Height [integer]
- (Required) The height of the first (or only) rectangle in the threshold array, in device pixels.

=head2 Width2 [integer]
- (Optional) The width of the optional second rectangle in the threshold array, in device pixels. If this entry is present, the Height2 entry is present as well. If this entry is absent, the Height2 entry is also absent, and the threshold array has only one rectangle.

=head2 Height2 [integer]
- (Optional) The height of the optional second rectangle in the threshold array, in device pixels.

=head2 TransferFunction [function or name]
- (Optional) A transfer function, which overrides the current transfer function in the graphics state for the same component. This entry is present if the dictionary is a component of a type 5 halftone (see 10.5.5.6, "Type 5 Halftones") and represents either a nonprimary or nonstandard primary colour component (see 10.4, "Transfer Functions"). The name Identity may be used to specify the identity function.

=end pod
