use v6;
role ISO_32000::Table_130-Entries_in_a_type_1_halftone_dictionary {
    method Type {...};
    method HalftoneType {...};
    method HalftoneName {...};
    method Frequency {...};
    method Angle {...};
    method SpotFunction {...};
    method AccurateScreens {...};
    method TransferFunction {...};
}

=begin pod

=head1 Description

Table 130 – Entries in a type 1 halftone dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Halftone for a halftone dictionary.

=head2 HalftoneType [integer]
- (Required) A code identifying the halftone type that this dictionary describes; is 1 for this type of halftone.

=head2 HalftoneName [byte string]
- (Optional) The name of the halftone dictionary.

=head2 Frequency [number]
- (Required) The screen frequency, measured in halftone cells per inch in device space.

=head2 Angle [number]
- (Required) The screen angle, in degrees of rotation counterclockwise with respect to the device coordinate system.
NOTE Most output devices have left-handed device spaces. On such devices, a counterclockwise angle in device space corresponds to a clockwise angle in default user space and on the physical medium.

=head2 SpotFunction [function or name]
- (Required) A function object defining the order in which device pixels within a screen cell is adjusted for different gray levels, or the name of one of the predefined spot functions (see Table 128).

=head2 AccurateScreens [boolean]
- (Optional) A flag specifying whether to invoke a special halftone algorithm that is extremely precise but computationally expensive; see Note 1 for further discussion. Default value: false.

=head2 TransferFunction [function or name]
- (Optional) A transfer function, which overrides the current transfer function in the graphics state for the same component. This entry is present if the dictionary is a component of a type 5 halftone (see “Type 5 Halftones” in 10.5.5.6) and represents either a nonprimary or nonstandard primary colour component (see 10.4, "Transfer Functions"). The name Identity may be used to specify the identity function.

=end pod
