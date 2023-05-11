use v6;
role ISO_32000::Table_311-Entries_in_a_ThreeD_cross_section_dictionary {
    method Type {...};
    method C {...};
    method O {...};
    method PO {...};
    method PC {...};
    method IV {...};
    method IC {...};
}

=begin pod

=head1 Description

Table 311 – Entries in a 3D cross section dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DCrossSection for a 3D cross section dictionary.

=head2 C [array]
- (Optional) A three element array specifying the center of rotation on the cutting plane in world space coordinates (see 13.6.5, “Coordinate Systems for 3D”).
Default value: [0 0 0] specifying a cutting plane rotating about the origin of the world space.

=head2 O [array]
- (Required) A three-element array specifying the orientation of the cutting plane in world space, where each value represents the orientation in relation to the X, Y, and Z axes, respectively (see 13.6.5, “Coordinate Systems for 3D”). Exactly one of the values is null, indicating an initial state of the cutting plane that is perpendicular to the corresponding axis and clipping all geometry on the positive side of that axis. The other two values is numbers indicating the rotation of the plane, in degrees, around their corresponding axes. The order in which these rotations are applied matches the order in which the values appear in the array.
Default value: [null 0 0] specifying a cutting plane that is perpendicular to the X axis and coplanar with the Y and Z axes.

=head2 PO [number]
- (Optional) A number in the range [0, 1] indicating the opacity of the cutting plane using a standard additive blend mode.
Default value: 0.5

=head2 PC [array]
- (Optional) An array that specifies the colour for the cutting plane. The first entry in the array is a colour space, and the remaining entries are values in that colour space. The only valid colour space is DeviceRGB. If a colour space other than DeviceRGB is specified, this entry is ignored and the default value is used.
Default value: [/DeviceRGB 1 1 1] representing the colour white.

=head2 IV [boolean]
- (Optional) A flag indicating the visibility of the intersection of the cutting plane with any 3D geometry. If true, then the intersection is visible. If false, then the intersection is not visible.
Default value: false

=head2 IC [array]
- (Optional) An array that specifies the colour for the cutting plane’s intersection with the 3D artwork. The first entry in the array is a colour space, and the remaining entries are values in that colour space. The only valid colour space is DeviceRGB. If a colour space other than DeviceRGB is specified, this entry is ignored and the default value is used. This entry is meaningful only if IV is true.
Default value: [/DeviceRGB 0 1 0] representing the colour green.

=end pod
