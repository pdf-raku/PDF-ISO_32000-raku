use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Transparency_group_additional ../tables/Transparency_group_additional_entries.html

role ISO_32000::Transparency_group_additional {
    method S {...};	#| [name] (Required) The group subtype, which identifies the type of group whose attributes this dictionary describes; shall be Transparency for a transparency group.
    method CS {...};	#| [name or array] (Sometimes required) The group colour space, which is used for the following purposes:
	#| • As the colour space into which colours shall be converted when painted into the group
	#| • As the blending colour space in which objects shall be composited within the group (see Link “Blending Colour Space” )
	#| • As the colour space of the group as a whole when it in turn is painted as an object onto its backdrop The group colour space shall be any device or CIE-based colour space that treats its components as independent additive or subtractive values in the range 0.0 to 1.0, subject to the restrictions described in Link Span Span These restrictions exclude Lab and lightness- chromaticity ICCBased colour spaces, as well as the special colour spaces Pattern, Indexed, Separation, and DeviceN. Device colour spaces shall be subject to remapping according to the DefaultGray, DefaultRGB, and DefaultCMYK entries in the ColorSpace subdictionary of the current resource dictionary (see Link Span ). Ordinarily, the CS entry may be present only for isolated transparency groups (those for which I is true), and even then it is optional. However, this entry shall be present in the group attributes dictionary for any transparency group XObject that has no parent group or page from which to inherit—in particular, one that is the value of the G entry in a soft-mask dictionary of subtype Luminosity (see Link Span ). Additionally, the CS entry may be present in the group attributes dictionary associated with a page object, even if I is false or absent. In the normal case in which the page is imposed directly on the output medium, the page group is effectively isolated regardless of the I value, and the specified CS value shall therefore be honoured. But if the page is in turn used as an element of some other page and if the group is non-isolated, CS shall be ignored and the colour space shall be inherited from the actual backdrop with which the page is composited (see Link Span Span ). Default value: the colour space of the parent group or page into which this transparency group is painted. (The parent’s colour space in turn may be either explicitly specified or inherited.) For a transparency group XObject used as an annotation appearance (see Link Span ), the default colour space shall be inherited from the page on which the annotation appears.
    method I {...};	#| [boolean] (Optional) A flag specifying whether the transparency group is isolated (see Link “Isolated Groups” ). If this flag is true, objects within the group shall be composited against a fully transparent initial backdrop; if false, they shall be composited against the group’s backdrop. Default value: false.
	#| In the group attributes dictionary for a page, the interpretation of this entry shall be slightly altered. In the normal case in which the page is imposed directly on the output medium, the page group is effectively isolated and the specified I value shall be ignored. But if the page is in turn used as an element of some other page, it shall be treated as if it were a transparency group XObject; the I value shall be interpreted in the normal way to determine whether the page group is isolated.
    method K {...};	#| [boolean] (Optional) A flag specifying whether the transparency group is a knockout group (see Link “Knockout Groups” ). If this flag is false, later objects within the group shall be composited with earlier ones with which they overlap; if true, they shall be composited with the group’s initial backdrop and shall overwrite (“knock out”) any earlier overlapping objects. Default value: false.
}
