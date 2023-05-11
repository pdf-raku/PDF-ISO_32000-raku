use v6;
role ISO_32000::Table_180-Additional_entries_specific_to_a_caret_annotation {
    method Subtype {...};
    method RD {...};
    method Sy {...};
}

=begin pod

=head1 Description

Table 180 – Additional entries specific to a caret annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Caret for a caret annotation.

=head2 RD [rectangle]
- (Optional; PDF 1.5) A set of four numbers that describes the numerical differences between two rectangles: the Rect entry of the annotation and the actual boundaries of the underlying caret. Such a difference can occur. When a paragraph symbol specified by Sy is displayed along with the caret.
The four numbers corresponds to the differences in default user space between the left, top, right, and bottom coordinates of Rect and those of the caret, respectively. Each value is greater than or equal to 0. The sum of the top and bottom differences is less than the height of Rect, and the sum of the left and right differences is less than the width of Rect.

=head2 Sy [name]
- (Optional) A name specifying a symbol that is associated with the caret:
P A new paragraph symbol (¶) is associated with the caret.
None No symbol is associated with the caret.
Default value: None.

=end pod
