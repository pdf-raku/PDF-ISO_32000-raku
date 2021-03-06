use v6;
role ISO_32000::Table_179-Additional_entries_specific_to_text_markup_annotations {
    method Subtype {...};
    method QuadPoints {...};
}

=begin pod

=head1 Description

Table 179 – Additional entries specific to text markup annotations

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; shallbe Highlight, Underline, Squiggly, or StrikeOut for a highlight, underline, squiggly-underline, or strikeout annotation, respectively.

=head2 QuadPoints [array]
- (Required) An array of 8 × n numbers specifying the coordinates of nquadrilaterals in default user space. Each quadrilateral shall encompasses a word or group of contiguous words in the text underlying the annotation. The coordinates for each quadrilateral is given in the order
x 1 y 1 x 2 y 2 x 3 y 3 x 4 y 4
specifying the quadrilateral’s four vertices in counterclockwise order (see Figure 64). The text is oriented with respect to the edge connecting points (x 1 , y 1) and (x 2 , y 2).
The annotation dictionary’s AP entry, if present, takes precedence over QuadPoints; see Table 168 and 12.5.5, “Appearance Streams.”

=end pod
