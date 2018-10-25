use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Text_markup_annotation_additional ../tables/Text_markup_annotation_additional_entries.html

role ISO_32000::Text_markup_annotation_additional {
    method Subtype {...};	#| [name] (Required) The type of annotation that this dictionary describes; shallbe Highlight, Underline, Squiggly, or StrikeOut for a highlight, underline, squiggly-underline, or strikeout annotation, respectively.
    method QuadPoints {...};	#| [array] (Required) An array of 8 × n numbers specifying the coordinates of nquadrilaterals in default user space. Each quadrilateral shall encompasses a word or group of contiguous words in the text underlying the annotation. The coordinates for each quadrilateral shall be given in the order
	#| x 1 y 1 x 2 y 2 x 3 y 3 x 4 y 4
	#| specifying the quadrilateral’s four vertices in counterclockwise order (see Link Figure 64 ). The text shall be oriented with respect to the edge connecting points (x 1 , y 1 ) and (x 2 , y 2 ).
	#| The annotation dictionary’s AP entry, if present, shall take precedence over QuadPoints; see Link Ta b l e 168 and Link 12.5.5, “Appearance Streams.”
}
