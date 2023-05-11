use v6;
role ISO_32000::Table_307-Entries_in_a_render_mode_dictionary {
    method Type {...};
    method Subtype {...};
    method AC {...};
    method FC {...};
    method O {...};
    method CV {...};
}

=begin pod

=head1 Description

Table 307 – Entries in a render mode dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DRenderMode.

=head2 Subtype [name]
- (Required) The type of render mode described by this dictionary; see Table 308 for specific values. If an unrecognized value is encountered, then this render mode dictionary is ignored.

=head2 AC [array]
- (Optional) An array that specifies the auxiliary colour that is used when rendering the 3D image. The first entry in the array is a colour space; the subsequent entries is values specifying colour values in that colour space. The interpretation of this entry depends on the render mode specified by the Subtype entry, but it is often used to specify a colour for drawing points or edges.
The only valid colour space is DeviceRGB. If a colour space other than DeviceRGB is specified, this entry is ignored and the default value is used.
Default value: [/DeviceRGB 0 0 0] representing the colour black.

=head2 FC [name or array]
- (Optional) A name or array that specifies the face color to be used when rendering the 3D image. This entry is relevant only when Subtype has a value of Illustration.
If the value of FC is an array, the first entry in the array is a colour space and the subsequent entries is values specifying values in that colour space. The only valid colour space is DeviceRGB. Any colour space other than DeviceRGB is ignored and the default value is used.
If the value of FC is a name, it describes a colour. The only valid name value shall BG, specifying the current background colour in use for displaying the artwork. If a name other than BG is encountered, this entry is ignored and the background colour for the host annotation is used (see Table 189).
Default value: BG

=head2 O [number]
- (Optional) A number specifying the opacity of the added transparency applied by some render modes, using a standard additive blend.
Default value: 0.5

=head2 CV [number]
- (Optional) A number specifying the angle, in degrees, that is used as the crease value when determining silhouette edges. If two front-facing faces share an edge and the angle between the normals of those faces is greater than or equal to the crease value, then that shared edge is considered a silhouette edge.
Default value: 45

=end pod
