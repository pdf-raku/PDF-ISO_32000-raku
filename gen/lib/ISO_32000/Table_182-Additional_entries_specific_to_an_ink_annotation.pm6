use v6;
#| PDF 32000-1:2008 Table 182 – Additional entries specific to an ink annotation
role ISO_32000::Table_182-Additional_entries_specific_to_an_ink_annotation {
    method Subtype {...};
    method InkList {...};
    method BS {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Ink for an ink annotation.

=head2 InkList [array]
- (Required) An array of n arrays, each representing a stroked path. Each array is a series of alternating horizontal and vertical coordinates in default user space, specifying points along the path. When drawn, the points is connected by straight lines or curves in an implementation-dependent way.

=head2 BS [dictionary]
- (Optional) A border style dictionary (see Table 166) specifying the line width and dash pattern that is used in drawing the paths.
The annotation dictionary’s AP entry, if present, takes precedence over the InkList and BS entries; see Table 168 and 12.5.5, “Appearance Streams.”

=end pod
