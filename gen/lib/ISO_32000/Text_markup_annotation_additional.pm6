use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Text_markup_annotation_additional ../../resources/ISO_32000/Text_markup_annotation_additional_entries.json

#| PDF 32000-1:2008 Table 179 – Additional entries specific to text markup annotations
role ISO_32000::Text_markup_annotation_additional {
    method Subtype {...};
    method QuadPoints {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; shallbe Highlight, Underline, Squiggly, or StrikeOut for a highlight, underline, squiggly-underline, or strikeout annotation, respectively.

=head2 QuadPoints [array]
- (Required) An array of 8 × n numbers specifying the coordinates of nquadrilaterals in default user space. Each quadrilateral shall encompasses a word or group of contiguous words in the text underlying the annotation. The coordinates for each quadrilateral is given in the order
x 1 y 1 x 2 y 2 x 3 y 3 x 4 y 4
specifying the quadrilateral’s four vertices in counterclockwise order (see Figure 64). The text is oriented with respect to the edge connecting points (x 1 , y 1) and (x 2 , y 2).
The annotation dictionary’s AP entry, if present, shall take precedence over QuadPoints; see Table 168 and 12.5.5, “Appearance Streams.”

=end pod
