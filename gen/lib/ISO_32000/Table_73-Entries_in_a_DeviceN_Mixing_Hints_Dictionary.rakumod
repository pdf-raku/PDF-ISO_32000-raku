use v6;
role ISO_32000::Table_73-Entries_in_a_DeviceN_Mixing_Hints_Dictionary {
    method Solidities {...};
    method PrintingOrder {...};
    method DotGain {...};
}

=begin pod

=head1 Description

Table 73 – Entries in a DeviceN Mixing Hints Dictionary

=head1 Methods (Entries)

=head2 Solidities [dictionary]
- (Optional) A dictionary specifying the solidity of inks that is used in blending calculations when used as an alternative to the tint transformation function. For each entry, the key is a colorant name, and the value is a number between 0.0 and 1.0. This dictionary need not contain entries for all colorants used in this colour space; it may also include additional colorants not used by this colour space.
A value of 1.0 simulates an ink that completely covers the inks beneath; a value of 0.0 simulates a transparent ink that completely reveals the inks beneath. An entry with a key of Default specifies a value that is used by all components in the associated DeviceN colour space for which a solidity value is not explicitly provided. If Default is not present, the default value for unspecified colorants is 0.0; conforming readers may choose to use other values.
If this entry is present, PrintingOrder is also present.

=head2 PrintingOrder [array]
- (Required if Solidities is present) An array of colorant names, specifying the order in which inks is laid down. Each component in the names array of the DeviceN colour space appears in this array (although the order is unrelated to the order specified in the namesarray). This entry may also list colorants unused by this specific DeviceN instance.

=head2 DotGain [dictionary]
- (Optional) A dictionary specifying the dot gain of inks that is used in blending calculations when used as an alternative to the tint transformation function. Dot gain (or loss) represents the amount by which a printer’s halftone dots change as the ink spreads and is absorbed by paper.
For each entry, the key is a colorant name, and the value is a function that maps values in the range 0 to 1 to values in the range 0 to 1. The dictionary may list colorants unused by this specific DeviceNinstance and need not list all colorants. An entry with a key of Defaultshall specify a function to be used by all colorants for which a dot gain function is not explicitly specified.
Conforming readers may ignore values in this dictionary when other sources of dot gain information are available, such as ICC profiles associated with the process colour space or tint transformation functions associated with individual colorants.

=end pod
