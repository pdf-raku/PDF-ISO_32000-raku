use v6;
role ISO_32000::Table_36-Entries_in_a_name_tree_node_dictionary {
    method Kids {...};
    method Names {...};
    method Limits {...};
}

=begin pod

=head1 Description

Table 36 – Entries in a name tree node dictionary

=head1 Methods (Entries)

=head2 Kids [array]
- (Root and intermediate nodes only; required in intermediate nodes; present in the root node if and only if Names is not present) Shall be an array of indirect references to the immediate children of this node. The children may be intermediate or leaf nodes.

=head2 Names [array]
- (Root and leaf nodes only; required in leaf nodes; present in the root node if and only if Kids is not present) Shall be an array of the form
[ key1 value1 key2 value2 … keyn valuen]
where each keyi is a string and the corresponding valuei is the object associated with that key. The keys is sorted in lexical order, as described below.

=head2 Limits [array]
- (Intermediate and leaf nodes only; required) Shall be an array of two strings, that specifies the (lexically) least and greatest keys included in the Names array of a leaf node or in the Names arrays of any leaf nodes that are descendants of an intermediate node.

=end pod
