use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Structure_element_access_additional ../tables/Structure_element_access_additional_entries.html

#| PDF 32000-1:2008 Table 326 – Additional dictionary entries for structure element access
role ISO_32000::Structure_element_access_additional {
    method StructParent {...};
    method StructParents {...};

=begin pod

=head1 Methods (Entries)

=head2 StructParent [integer]
- (Required for all objects that are structural content items; PDF 1.3) The integer key of this object’s entry in the structural parent tree.

=head2 StructParents [integer]
- (Required for all content streams containing marked-content sequences that are structural content items; PDF 1.3) The integer key of this object’s entry in the structural parent tree.
At most one of these two entries is present in a given object. An object may be either a content item in its entirety or a container for marked-content sequences that are content items, but not both.

=end pod
}