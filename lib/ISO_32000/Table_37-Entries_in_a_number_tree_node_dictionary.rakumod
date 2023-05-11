use v6;
role ISO_32000::Table_37-Entries_in_a_number_tree_node_dictionary {
    method Kids {...};
    method Nums {...};
    method Limits {...};
}

=begin pod

=head1 Description

Table 37 – Entries in a number tree node dictionary

=head1 Methods (Entries)

=head2 Kids [array]
- (Root and intermediate nodes only; required in intermediate nodes; present in the root node if and only if Nums is not present) Shall be an array of indirect references to the immediate children of this node. The children may be intermediate or leaf nodes.

=head2 Nums [array]
- (Root and leaf nodes only; is required in leaf nodes; present in the root node if and only if Kids is not present) Shall be an array of the form
[ key1 value1 key2 value2 … keyn valuen]
where each keyi is an integer and the corresponding valuei is the object associated with that key. The keys is sorted in numerical order, analogously to the arrangement of keys in a name tree as described in 7.9.6, "Name Trees."

=head2 Limits [array]
- (Shall be present in Intermediate and leaf nodes only) Shall be an array of two integers, that specifies the (numerically) least and greatest keys included in the Nums array of a leaf node or in the Nums arrays of any leaf nodes that are descendants of an intermediate node.

=end pod
