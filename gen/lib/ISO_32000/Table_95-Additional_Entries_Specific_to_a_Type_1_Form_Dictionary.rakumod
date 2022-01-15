use v6;
role ISO_32000::Table_95-Additional_Entries_Specific_to_a_Type_1_Form_Dictionary {
    method Type {...};
    method Subtype {...};
    method FormType {...};
    method BBox {...};
    method Matrix {...};
    method Resources {...};
    method Group {...};
    method Ref {...};
    method Metadata {...};
    method PieceInfo {...};
    method LastModified {...};
    method StructParent {...};
    method StructParents {...};
    method OPI {...};
    method OC {...};
    method Name {...};
}

=begin pod

=head1 Description

Table 95 – Additional Entries Specific to a Type 1 Form Dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is XObject for a form XObject.

=head2 Subtype [name]
- (Required) The type of XObject that this dictionary describes; shall beForm for a form XObject.

=head2 FormType [integer]
- (Optional) A code identifying the type of form XObject that this dictionary describes. The only valid value is 1. Default value: 1.

=head2 BBox [rectangle]
- (Required) An array of four numbers in the form coordinate system (see above), giving the coordinates of the left, bottom, right, and top edges, respectively, of the form XObject’s bounding box. These boundaries is used to clip the form XObject and to determine its size for caching.

=head2 Matrix [array]
- (Optional) An array of six numbers specifying the form matrix, which maps form space into user space (see 8.3.4, "Transformation Matrices"). Default value: the identity matrix [ 1 0 0 1 0 0 ].

=head2 Resources [dictionary]
- (Optional but strongly recommended; PDF 1.2) A dictionary specifying any resources (such as fonts and images) required by the form XObject (see 7.8, "Content Streams and Resources").
In a PDF whose version is 1.1 and earlier, all named resources used in the form XObject is included in the resource dictionary of each page object on which the form XObject appears, regardless of whether they also appear in the resource dictionary of the form XObject. These resources is also specified in the form XObject’s resource dictionary as well, to determine which resources are used inside the form XObject. If a resource is included in both dictionaries, it has the same name in both locations.
In PDF 1.2 and later versions, form XObjects may be independent of the content streams in which they appear, and this is strongly recommended although not required. In an independent form XObject, the resource dictionary of the form XObject is required and contains all named resources used by the form XObject. These resources is not promoted to the outer content stream’s resource dictionary, although that stream’s resource dictionary refers to the form XObject.

=head2 Group [dictionary]
- (Optional; PDF 1.4) A group attributes dictionary indicating that the contents of the form XObject is treated as a group and specifying the attributes of that group (see 8.10.3, "Group XObjects").
If a Ref entry (see below) is present, the group attributes shall also apply to the external page imported by that entry, which allows such an imported page to be treated as a group without further modification.

=head2 Ref [dictionary]
- (Optional; PDF 1.4) A reference dictionary identifying a page to be imported from another PDF file, and for which the form XObject serves as a proxy (see 8.10.4, "Reference XObjects").

=head2 Metadata [stream]
- (Optional; PDF 1.4) A metadata stream containing metadata for the form XObject (see 14.3.2, "Metadata Streams").

=head2 PieceInfo [dictionary]
- (Optional; PDF 1.3) A page-piece dictionary associated with the form XObject (see 14.5, "Page-Piece Dictionaries").

=head2 LastModified [date]
- (Required if PieceInfo is present; optional otherwise; PDF 1.3) The date and time (see 7.9.4, "Dates") when the form XObject’s contents were most recently modified. If a page-piece dictionary (PieceInfo) is present, the modification date is used to ascertain which of the application data dictionaries it contains correspond to the current content of the form (see 14.5, "Page-Piece Dictionaries").

=head2 StructParent [integer]
- (Required if the form XObject is a structural content item; PDF 1.3)The integer key of the form XObject’s entry in the structural parent tree (see 14.7.4.4, "Finding Structure Elements from Content Items").

=head2 StructParents [integer]
- (Required if the form XObject contains marked-content sequences that are structural content items; PDF 1.3) The integer key of the form XObject’s entry in the structural parent tree (see 14.7.4.4, "Finding Structure Elements from Content Items").
At most one of the entries StructParent or StructParents shall bepresent. A form XObject is either a content item in its entirety or a container for marked-content sequences that are content items, but not both.

=head2 OPI [dictionary]
- (Optional; PDF 1.2) An OPI version dictionary for the form XObject (see 14.11.7, "Open Prepress Interface (OPI)").

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group or optional content membership dictionary (see 8.11, "Optional Content") specifying the optional content properties for the form XObject. Before the form is processed, its visibility is determined based on this entry. If it is determined to be invisible, the entire form is skipped, as if there were no Do operator to invoke it.

=head2 Name [name]
- (Required in PDF 1.0; optional otherwise) The name by which this form XObject is referenced in the XObject subdictionary of the current resource dictionary (see 7.8.3, "Resource Dictionaries").
NOTE This entry is obsolescent and its use is no longer recommended.

=end pod
