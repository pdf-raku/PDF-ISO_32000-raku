use v6;
role ISO_32000::Table_247-Entries_in_an_icon_fit_dictionary {
    method SW {...};
    method S {...};
    method A {...};
    method FB {...};
}

=begin pod

=head1 Description

Table 247 – Entries in an icon fit dictionary

=head1 Methods (Entries)

=head2 SW [name]
- (Optional) The circumstances under which the icon is scaled inside the annotation rectangle:
A Always scale.
B Scale only when the icon is bigger than the annotation rectangle.
S Scale only when the icon is smaller than the annotation rectangle.
N Never scale.
Default value: A.

=head2 S [name]
- (Optional) The type of scaling that is used:
A Anamorphic scaling: Scale the icon to fill the annotation rectangle exactly, without regard to its original aspect ratio (ratio of width to height).
P Proportional scaling: Scale the icon to fit the width or height of the annotation rectangle while maintaining the icon’s original aspect ratio. If the required horizontal and vertical scaling factors are different, use the smaller of the two, centering the icon within the annotation rectangle in the other dimension.
Default value: P.

=head2 A [array]
- (Optional) An array of two numbers that is between 0.0 and 1.0 indicating the fraction of leftover space to allocate at the left and bottom of the icon. A value of [ 0.0 0.0 ] positions the icon at the bottom-left corner of the annotation rectangle. A value of [ 0.5 0.5 ] centers it within the rectangle. This entry is used only if the icon is scaled proportionally. Default value: [ 0.5 0.5 ].

=head2 FB [boolean]
- (Optional; PDF 1.5) If true, indicates that the button appearance is scaled to fit fully within the bounds of the annotation without taking into consideration the line width of the border. Default value: false.

=end pod
