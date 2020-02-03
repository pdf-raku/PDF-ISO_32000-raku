use v6;
role ISO_32000::Table_132-Additional_entries_specific_to_a_type_10_halftone_dictionary {
    method Type {...};
    method HalftoneType {...};
    method HalftoneName {...};
    method Xsquare {...};
    method Ysquare {...};
    method TransferFunction {...};
}

=begin pod

=head1 Description

Table 132 – Additional entries specific to a type 10 halftone dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Halftone for a halftone dictionary.

=head2 HalftoneType [integer]
- (Required) A code identifying the halftone type that this dictionary describes; is 10 for this type of halftone.

=head2 HalftoneName [byte string]
- (Optional) The name of the halftone dictionary.

=head2 Xsquare [integer]
- (Required) The side of square X, in device pixels; see below.

=head2 Ysquare [integer]
- (Required) The side of square Y, in device pixels; see below.

=head2 TransferFunction [function or name]
- (Optional) A transfer function, which overrides the current transfer function in the graphics state for the same component. This entry is present if the dictionary is a component of a type 5 halftone (see “Type 5 Halftones” in 10.5.5.6) and represents either a nonprimary or nonstandard primary colour component (see 10.4, "Transfer Functions"). The name Identity may be used to specify the identity function.

=end pod
