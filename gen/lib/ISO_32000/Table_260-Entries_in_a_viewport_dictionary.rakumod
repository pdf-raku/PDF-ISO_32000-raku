use v6;
role ISO_32000::Table_260-Entries_in_a_viewport_dictionary {
    method Type {...};
    method BBox {...};
    method Name {...};
    method Measure {...};
}

=begin pod

=head1 Description

Table 260 – Entries in a viewport dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; is Viewport for a viewport dictionary.

=head2 BBox [rectangle]
- (Required) A rectangle in default user space coordinates specifying the location of the viewport on the page.
The two coordinate pairs of the rectangle is specified in normalized form; that is, lower-left followed by upper-right, relative to the measuring coordinate system. This ordering determines the orientation of the measuring coordinate system (that is, the direction of the positive x and y axes) in this viewport, which may have a different rotation from the page.
The coordinates of this rectangle are independent of the origin of the measuring coordinate system, specified in the O entry (see Table 262) of the measurement dictionary specified by Measure.

=head2 Name [text string]
- (Optional) A descriptive text string or title of the viewport, intended for use in a user interface.

=head2 Measure [dictionary]
- (Optional) A measure dictionary (see Table 261) that specifies the scale and units that applies to measurements taken on the contents within the viewport.

=end pod
