use v6;
role ISO_32000::Table_326-Additional_dictionary_entries_for_structure_element_access {
    method StructParent {...};
    method StructParents {...};
}

=begin pod

=head1 Description

Table 326 – Additional dictionary entries for structure element access

=head1 Methods (Entries)

=head2 StructParent [integer]
- (Required for all objects that are structural content items; PDF 1.3) The integer key of this object’s entry in the structural parent tree.

=head2 StructParents [integer]
- (Required for all content streams containing marked-content sequences that are structural content items; PDF 1.3) The integer key of this object’s entry in the structural parent tree.
At most one of these two entries is present in a given object. An object may be either a content item in its entirety or a container for marked-content sequences that are content items, but not both.

=end pod
