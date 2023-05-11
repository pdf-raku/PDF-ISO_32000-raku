use v6;
role ISO_32000::Table_361-Entries_in_a_box_style_dictionary {
    method C {...};
    method W {...};
    method S {...};
    method D {...};
}

=begin pod

=head1 Description

Table 361 – Entries in a box style dictionary

=head1 Methods (Entries)

=head2 C [array]
- (Optional) An array of three numbers in the range 0.0 to 1.0, representing the components in the DeviceRGB colour space of the colour to be used for displaying the guidelines. Default value: [ 0.0 0.0 0.0 ].

=head2 W [number]
- (Optional) The guideline width in default user space units. Default value: 1.

=head2 S [name]
- (Optional) The guideline style:
S (Solid) A solid rectangle.
D (Dashed) A dashed rectangle. The dash pattern is specified by the D entry.
Other guideline styles may be defined in the future. Default value: S.

=head2 D [array]
- (Optional) A dash array defining a pattern of dashes and gaps to be used in drawing dashed guidelines (guideline style D). The dash array is specified in default user space units, in the same format as in the line dash pattern parameter of the graphics state (see 8.4.3.6, “Line Dash Pattern”). The dash phase is not specified and is assumed to be 0.
EXAMPLE A D entry of [ 3 2 ] specifies guidelines drawn with 3-point dashes alternating with 2-point gaps. Default value: [ 3 ].

=end pod
