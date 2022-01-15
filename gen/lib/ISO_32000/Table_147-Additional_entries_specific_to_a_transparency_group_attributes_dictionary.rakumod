use v6;
role ISO_32000::Table_147-Additional_entries_specific_to_a_transparency_group_attributes_dictionary {
    method S {...};
    method CS {...};
    method I {...};
    method K {...};
}

=begin pod

=head1 Description

Table 147 – Additional entries specific to a transparency group attributes dictionary

=head1 Methods (Entries)

=head2 S [name]
- (Required) The group subtype, which identifies the type of group whose attributes this dictionary describes; is Transparency for a transparency group.

=head2 CS [name or array]
- (Sometimes required) The group colour space, which is used for the following purposes:
• As the colour space into which colours is converted when painted into the group
• As the blending colour space in which objects is composited within the group (see “Blending Colour Space”)
• As the colour space of the group as a whole when it in turn is painted as an object onto its backdrop The group colour space is any device or CIE-based colour space that treats its components as independent additive or subtractive values in the range 0.0 to 1.0, subject to the restrictions described in 11.3.4, "Blending Colour Space." These restrictions exclude Lab and lightness-chromaticity ICCBased colour spaces, as well as the special colour spaces Pattern, Indexed, Separation, and DeviceN. Device colour spaces is subject to remapping according to the DefaultGray, DefaultRGB, and DefaultCMYK entries in the ColorSpace subdictionary of the current resource dictionary (see “Default Colour Spaces”). Ordinarily, the CS entry may be present only for isolated transparency groups (those for which I is true), and even then it is optional. However, this entry is present in the group attributes dictionary for any transparency group XObject that has no parent group or page from which to inherit—in particular, one that is the value of the G entry in a soft-mask dictionary of subtype Luminosity (see “Soft-Mask Dictionaries”). Additionally, the CS entry may be present in the group attributes dictionary associated with a page object, even if I is false or absent. In the normal case in which the page is imposed directly on the output medium, the page group is effectively isolated regardless of the I value, and the specified CS value shall therefore be honoured. But if the page is in turn used as an element of some other page and if the group is non- isolated, CS is ignored and the colour space is inherited from the actual backdrop with which the page is composited (see “Page Group”). Default value: the colour space of the parent group or page into which this transparency group is painted. (The parent’s colour space in turn may be either explicitly specified or inherited.) For a transparency group XObject used as an annotation appearance (see “Appearance Streams”), the default colour space is inherited from the page on which the annotation appears.

=head2 I [boolean]
- (Optional) A flag specifying whether the transparency group is isolated (see “Isolated Groups”). If this flag is true, objects within the group is composited against a fully transparent initial backdrop; if false, they is composited against the group’s backdrop. Default value: false.
In the group attributes dictionary for a page, the interpretation of this entry is slightly altered. In the normal case in which the page is imposed directly on the output medium, the page group is effectively isolated and the specified I value is ignored. But if the page is in turn used as an element of some other page, it is treated as if it were a transparency group XObject; the I value is interpreted in the normal way to determine whether the page group is isolated.

=head2 K [boolean]
- (Optional) A flag specifying whether the transparency group is a knockout group (see “Knockout Groups”). If this flag is false, later objects within the group is composited with earlier ones with which they overlap; if true, they is composited with the group’s initial backdrop and shall overwrite (“knock out”) any earlier overlapping objects. Default value: false.

=end pod
