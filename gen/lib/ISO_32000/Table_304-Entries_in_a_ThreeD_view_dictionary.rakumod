use v6;
role ISO_32000::Table_304-Entries_in_a_ThreeD_view_dictionary {
    method Type {...};
    method XN {...};
    method IN {...};
    method MS {...};
    method C2W {...};
    method U3DPath {...};
    method CO {...};
    method P {...};
    method O {...};
    method BG {...};
    method RM {...};
    method LS {...};
    method SA {...};
    method NA {...};
    method NR {...};
}

=begin pod

=head1 Description

Table 304 – Entries in a 3D view dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DView for a 3D view dictionary.

=head2 XN [text string]
- (Required) The external name of the view, suitable for presentation in a user interface.

=head2 IN [text string]
- (Optional) The internal name of the view, used to refer to the view from other objects, such as the go-to-3D-view action (see 12.6.4.15, “Go-To- 3D-View Actions”).

=head2 MS [name]
- (Optional) A name specifying how the 3D camera-to-world transformation matrix is determined. The following values are valid:
M Indicates that the C2W entry specifies the matrix
U3D Indicates that the view node selected by the U3DPath entry specifies the matrix.
If omitted, the view specified in the 3D artwork is used.

=head2 C2W [array]
- (Required if the value of MS is M, ignored otherwise) A 12-element 3D transformation matrix that specifies a position and orientation of the camera in world coordinates.

=head2 U3DPath [text string or array]
- (Required if the value of MS is U3D, ignored otherwise) A sequence of one or more text strings used to access a view node within the 3D artwork. The first string in the array is a node ID for the root view node, and each subsequent string is the node ID for a child of the view node specified by the prior string. Each view node specifies a 3D transformation matrix (see 13.6.5, “Coordinate Systems for 3D”); the concatenation of all the matrices forms the camera-to-world matrix.
Conforming writers specifies only a single text string, not an array, for this entry.
NOTE Do not confuse View Nodes with nodes. A View Node is a parameter in the 3D artwork that specifies a view, while a node is a PDF dictionary that specifies 3D graphic objects or collections thereof.

=head2 CO [number]
- (Optional; used only if MS is present) A non-negative number indicating a distance in the camera coordinate system along the z axis to the center of orbit for this view; see discussion following this Table. If this entry is not present, the conforming reader determines the center of orbit.

=head2 P [dictionary]
- (Optional) A projection dictionary (see 13.6.4.2, “Projection Dictionaries”) that defines the projection of coordinates in the 3D artwork (already transformed into camera coordinates) onto the target coordinate system of the annotation.
Default value: a projection dictionary where the value of Subtype is Perspective, the value of FOV is 90, and all other entries take their default values.

=head2 O [stream]
- (Optional; meaningful only if MS and P are present) A form XObject that is used to overlay 2D graphics on top of the rendered 3D artwork (see 13.6.6, “3D Markup”).

=head2 BG [dictionary]
- (Optional) A background dictionary that defines the background over which the 3D artwork is drawn (see 13.6.4.3, “3D Background Dictionaries”). Default value: a background dictionary whose entries take their default values.

=head2 RM [dictionary]
- (Optional; PDF 1.7) A render mode dictionary that specifies the render mode to use when rendering 3D artwork with this view (see 13.6.4.4, “3D Render Mode Dictionaries”). If omitted, the render mode specified in the 3D artwork is used.

=head2 LS [dictionary]
- (Optional; PDF 1.7) A lighting scheme dictionary that specifies the lighting scheme to be used when rendering 3D artwork with this view (see 13.6.4.5, “3D Lighting Scheme Dictionaries”). If omitted, the lighting scheme specified in the 3D artwork is used.

=head2 SA [array]
- (Optional; PDF 1.7) An array that contains cross section dictionaries (see 13.6.4.6, “3D Cross Section Dictionaries”). Each cross section dictionary provides parameters for applying a cross section to the 3D artwork when using this view. An empty array signifies that no cross sections is displayed.

=head2 NA [array]
- (Optional; PDF 1.7; meaningful only if NR is present) An array that contains 3D node dictionaries (see 13.6.4.7, “3D Node Dictionaries”). Each node dictionary may contain entries that change the node’s state, including its opacity and its position in world space. This entry and the NR entry specify how the state of each node is changed.
If a node dictionary is present more than once, only the last such dictionary (using a depth-first traversal) is used.

=head2 NR [boolean]
- (Optional; PDF 1.7) Specifies whether nodes specified in the NA array is returned to their original states (as specified in the 3D artwork) before applying transformation matrices and opacity settings specified in the node dictionaries. If true, the artwork’s 3D node parameters is restored to their original states and then the dictionaries specified by the NA array is applied. If false, the dictionaries specified by the NA array is applied to the current states of the nodes.
In addition to the parameters specified by a 3D node dictionary, this flag should also apply to any runtime parameters used by a conforming reader.
Default value: false

=end pod
