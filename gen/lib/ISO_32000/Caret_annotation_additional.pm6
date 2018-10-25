use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Caret_annotation_additional ../tables/Caret_annotation_additional_entries.html

role ISO_32000::Caret_annotation_additional {
    method Subtype {...};	#| [name] (Required) The type of annotation that this dictionary describes; shall be Caret for a caret annotation.
    method RD {...};	#| [rectangle] (Optional; PDF 1.5) A set of four numbers that shall describe the numerical differences between two rectangles: the Rect entry of the annotation and the actual boundaries of the underlying caret. Such a difference can occur. When a paragraph symbol specified by Sy is displayed along with the caret.
	#| The four numbers shall correspond to the differences in default user space between the left, top, right, and bottom coordinates of Rect and those of the caret, respectively. Each value shall be greater than or equal to 0. The sum of the top and bottom differences shall be less than the height of Rect, and the sum of the left and right differences shall be less than the width of Rect.
    method Sy {...};	#| [name] (Optional) A name specifying a symbol that shall be associated with the caret:
	#| P A new paragraph symbol (¶) should be associated with the caret.
	#| None No symbol should be associated with the caret.
	#| Default value: None.
}
