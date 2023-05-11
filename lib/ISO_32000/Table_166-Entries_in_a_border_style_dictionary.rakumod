use v6;
role ISO_32000::Table_166-Entries_in_a_border_style_dictionary {
    method Type {...};
    method W {...};
    method S {...};
    method D {...};
}

=begin pod

=head1 Description

Table 166 – Entries in a border style dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Border for a border style dictionary.

=head2 W [number]
- (Optional) The border width in points. If this value is 0, no border shall drawn. Default value: 1.

=head2 S [name]
- (Optional) The border style:
S (Solid) A solid rectangle surrounding the annotation.
D (Dashed) A dashed rectangle surrounding the annotation. The dash pattern may be specified by the D entry.
B (Beveled) A simulated embossed rectangle that appears to be raised above the surface of the page.
I (Inset) A simulated engraved rectangle that appears to be recessed below the surface of the page.
U (Underline) A single line along the bottom of the annotation rectangle.
A conforming reader tolerates other border styles that it does not recognize and uses the default value.

=head2 D [array]
- (Optional) A dash array defining a pattern of dashes and gaps that is used in drawing a dashed border (border style D in the S entry). The dash array is specified in the same format as in the line dash pattern parameter of the graphics state (see 8.4.3.6, “Line Dash Pattern”). The dash phase is not specified and is assumed to be 0.
EXAMPLE A D entry of [ 3 2 ] specifies a border drawn with 3-point dashes alternating with 2-point gaps. Default value: [ 3 ].

=end pod
