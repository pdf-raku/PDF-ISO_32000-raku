use v6;
role ISO_32000::Table_164-Entries_common_to_all_annotation_dictionaries {
    method Type {...};
    method Subtype {...};
    method Rect {...};
    method Contents {...};
    method P {...};
    method NM {...};
    method M {...};
    method F {...};
    method AP {...};
    method AS {...};
    method Border {...};
    method C {...};
    method StructParent {...};
    method OC {...};
}

=begin pod

=head1 Description

Table 164 – Entries common to all annotation dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Annot for an annotation dictionary.

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; see Table 169 for specific values.

=head2 Rect [rectangle]
- (Required) The annotation rectangle, defining the location of the annotation on the page in default user space units.

=head2 Contents [text string]
- (Optional) Text that is displayed for the annotation or, if this type of annotation does not display text, an alternate description of the annotation’s contents in human-readable form. In either case, this text is useful when extracting the document’s contents in support of accessibility to users with disabilities or for other purposes (see 14.9.3, “Alternate Descriptions”). See 12.5.6, “Annotation Types” for more details on the meaning of this entry for each annotation type.

=head2 P [dictionary]
- (Optional except as noted below; PDF 1.3; not used in FDF files) An indirect reference to the page object with which this annotation is associated.
This entry is present in screen annotations associated with rendition actions (PDF 1.5; see 12.5.6.18, “Screen Annotations” and 12.6.4.13, “Rendition Actions”).

=head2 NM [text string]
- (Optional; PDF 1.4) The annotation name, a text string uniquely identifying it among all the annotations on its page.

=head2 M [date or text string]
- (Optional; PDF 1.1) The date and time when the annotation was most recently modified. The format is a date string as described in 7.9.4, “Dates,” but conforming readers accepts and display a string in any format.

=head2 F [integer]
- (Optional; PDF 1.1) A set of flags specifying various characteristics of the annotation (see 12.5.3, “Annotation Flags”). Default value: 0.

=head2 AP [dictionary]
- (Optional; PDF 1.2) An appearance dictionary specifying how the annotation is presented visually on the page (see 12.5.5, “Appearance Streams”). Individual annotation handlers may ignore this entry and provide their own appearances.

=head2 AS [name]
- (Required if the appearance dictionary AP contains one or more subdictionaries; PDF 1.2) The annotation’s appearance state, which selects the applicable appearance stream from an appearance subdictionary (see Section 12.5.5, “Appearance Streams”).

=head2 Border [array]
- (Optional) An array specifying the characteristics of the annotation’s border, which is drawn as a rounded rectangle.
(PDF 1.0) The array consists of three numbers defining the horizontal corner radius, vertical corner radius, and border width, all in default user space units. If the corner radii are 0, the border has square (not rounded) corners; if the border width is 0, no border is drawn.
(PDF 1.1) The array may have a fourth element, an optional dash arraydefining a pattern of dashes and gaps that is used in drawing the border. The dash array is specified in the same format as in the line dash pattern parameter of the graphics state (see 8.4.3.6, “Line Dash Pattern”).
EXAMPLE A Border value of [ 0 0 1 [ 3 2 ] ] specifies a border 1 unit wide, with square corners, drawn with 3-unit dashes alternating with 2-unit gaps.
NOTE(PDF 1.2) The dictionaries for some annotation types (such as free text and polygon annotations) can include the BSentry. That entry specifies a border style dictionary that has more settings than the array specified for the Border entry. If an annotation dictionary includes the BS entry, then the Border entry is ignored. Default value: [ 0 0 1 ].

=head2 C [array]
- (Optional; PDF 1.1) An array of numbers in the range 0.0 to 1.0, representing a colour used for the following purposes:
The background of the annotation’s icon when closed
The title bar of the annotation’s pop-up window
The border of a link annotation
The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1DeviceGray
3DeviceRGB
4DeviceCMYK

=head2 StructParent [integer]
- (Required if the annotation is a structural content item; PDF 1.3) The integer key of the annotation’s entry in the structural parent tree (see 14.7.4.4, “Finding Structure Elements from Content Items”).

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group or optional content membership dictionary (see 8.11, “Optional Content”) specifying the optional content properties for the annotation. Before the annotation is drawn, its visibility is determined based on this entry as well as the annotation flags specified in the F entry (see 12.5.3, “Annotation Flags”). If it is determined to be invisible, the annotation is skipped, as if it were not in the document.

=end pod
