use v6;
role ISO_32000::Table_71-Entries_in_a_DeviceN_Colour_Space_Attributes_Dictionary {
    method Subtype {...};
    method Colorants {...};
    method Process {...};
    method MixingHints {...};
}

=begin pod

=head1 Description

Table 71 – Entries in a DeviceN Colour Space Attributes Dictionary

=head1 Methods (Entries)

=head2 Subtype [name]
- (Optional; PDF 1.6) A name specifying the preferred treatment for the colour space. Values is DeviceN or NChannel. Default value: DeviceN.

=head2 Colorants [dictionary]
- (Required if Subtype is NChannel and the colour space includes spot colorants; otherwise optional) A dictionary describing the individual colorants that is used in the DeviceN colour space. For each entry in this dictionary, the key is a colorant name and the value is an array defining a Separation colour space for that colorant (see 8.6.6.4, "Separation Colour Spaces"). The key matches the colorant name given in that colour space.
This dictionary provides information about the individual colorants that may be useful to some conforming readers. In particular, the alternate colour space and tint transformation function of a Separation colour space describe the appearance of that colorant alone, whereas those of a DeviceN colour space describe only the appearance of its colorants in combination.
If Subtype is NChannel, this dictionary has entries for all spot colorants in this colour space. This dictionary may also include additional colorants not used by this colour space.

=head2 Process [dictionary]
- (Required if Subtype is NChannel and the colour space includes components of a process colour space, otherwise optional; PDF 1.6) A dictionary (see Table 72) that describes the process colour space whose components are included in this colour space.

=head2 MixingHints [dictionary]
- (Optional; PDF 1.6) A dictionary (see Table 73) that specifies optional attributes of the inks that is used in blending calculations when used as an alternative to the tint transformation function.

=end pod
