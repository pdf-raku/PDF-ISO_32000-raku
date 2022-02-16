use v6;
role ISO_32000::Table_305-Entries_in_a_projection_dictionary {
    method Subtype {...};
    method CS {...};
    method F {...};
    method N {...};
    method FOV {...};
    method PS {...};
    method OS {...};
    method OB {...};
}

=begin pod

=head1 Description

Table 305 – Entries in a projection dictionary

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of projection. Valid values is O (orthographic) or P (perspective).

=head2 CS [name]
- (Optional) The clipping style. Valid values is XNF (explicit near/far) or ANF (automatic near/far). Default value: ANF.

=head2 F [number]
- (Optional; meaningful only if the value of CS is XNF) The far clipping distance, expressed in the camera coordinate system. No parts of objects whose z coordinates are greater than the value of this entry are drawn. If this entry is absent, no far clipping occurs.

=head2 N [number]
- (Meaningful only if the value of CS is XNF; required if the value of Subtype is P) The near clipping distance, expressed in the camera coordinate system. No parts of objects whose z coordinates are less than the value of this entry are drawn. If Subtype is P, the value is positive; if Subtype is O, the value is non-negative, and the default value is 0.

=head2 FOV [number]
- (Required if Subtype is P, ignored otherwise) A number between 0 and 180, inclusive, specifying the field of view of the virtual camera, in degrees. It defines a cone in 3D space centered around the z axis and a circle where the cone intersects the near clipping plane. The circle, along with the value of PS, specify the scaling of the projected artwork when rendered in the 2D plane of the annotation.

=head2 PS [number or name]
- (Optional; meaningful only if Subtype is P) An object that specifies the scaling used when projecting the 3D artwork onto the annotation’s target coordinate system. It defines the diameter of the circle formed by the intersection of the near plane and the cone specified by FOV. The value may be one of the following:
• A positive number that explicitly specifies the diameter as a distance in the annotation’s target coordinate system.
• A name specifying that the diameter is set to the width (W), height (H), minimum of width and height (Min), or maximum of width and height (Max) of the annotation’s 3D view box. Default value: W.

=head2 OS [number]
- (Optional; meaningful only if Subtype is O) A positive number that specifies the scale factor to be applied to both the x and y coordinates when projecting onto the annotation’s target coordinate system (the z coordinate is discarded). Default value: 1.

=head2 OB [name]
- (Optional; PDF 1.7; meaningful only if Subtype is O) A name that specifies a strategy for binding (scaling to fit) the near plane’s x and y coordinates onto the annotation’s target coordinate system. The scaling specified in this entry is applied in addition to the scaling factor specified by the OS entry. The value may be one of the following:
W Scale to fit the width of the annotation
HScale to fit the height of the annotation
MinScale to fit the lesser of width or height of the annotation
MaxScale to fit the greater of width or height of the annotation
Absolute No scaling occurs due to binding.
Default value: Absolute.

=end pod
