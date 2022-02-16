use v6;
role ISO_32000::Table_312-Entries_in_a_ThreeD_node_dictionary {
    method Type {...};
    method N {...};
    method O {...};
    method V {...};
    method M {...};
}

=begin pod

=head1 Description

Table 312 – Entries in a 3D node dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DNode for a 3D node dictionary.

=head2 N [text string]
- (Required) The name of the node being described by the node dictionary. If the Subtype of the corresponding 3D Stream is U3D, this entry corresponds to the field Node block name, as described in the Universal 3D file format specification (see Bibliography). In the future, nodes may be described using other 3D conventions.
NOTE When comparing this entry to node names for a particular convention (such as Universal 3D), conforming readers translates between the PDF text encoding used by PDF and the character encoding specified in the 3D stream.

=head2 O [number]
- (Optional) A number in the range [0, 1] indicating the opacity of the geometry supplied by this node using a standard additive blend mode.
If this entry is absent, the viewer uses the opacity specified for the parent node or for the 3D artwork (in ascending order).

=head2 V [boolean]
- (Optional) A flag indicating the visibility of this node. If true, then the node is visible. If false, then the node is not visible.
If this entry is absent, the viewer uses the visibility specified for the parent node or for the 3D artwork (in ascending order).

=head2 M [array]
- (Optional) A 12-element 3D transformation matrix that specifies the position and orientation of this node, relative to its parent, in world coordinates (see 13.6.5, “Coordinate Systems for 3D”).

=end pod
