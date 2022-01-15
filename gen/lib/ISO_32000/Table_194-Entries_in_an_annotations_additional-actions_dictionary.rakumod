use v6;
role ISO_32000::Table_194-Entries_in_an_annotations_additional-actions_dictionary {
    method E {...};
    method X {...};
    method D {...};
    method U {...};
    method Fo {...};
    method Bl {...};
    method PO {...};
    method PC {...};
    method PV {...};
    method PI {...};
}

=begin pod

=head1 Description

Table 194 – Entries in an annotation’s additional-actions dictionary

=head1 Methods (Entries)

=head2 E [dictionary]
- (Optional; PDF 1.2) An action that is performed when the cursor enters the annotation’s active area.

=head2 X [dictionary]
- (Optional; PDF 1.2) An action that is performed when the cursor exits the annotation’s active area.

=head2 D [dictionary]
- (Optional; PDF 1.2) An action that is performed when the mouse button is pressed inside the annotation’s active area.

=head2 U [dictionary]
- (Optional; PDF 1.2) An action that is performed when the mouse button is released inside the annotation’s active area.
For backward compatibility, the A entry in an annotation dictionary, if present, takes precedence over this entry (see Table 168).

=head2 Fo [dictionary]
- (Optional; PDF 1.2; widget annotations only) An action that is performed when the annotation receives the input focus.

=head2 Bl [dictionary]
- (Optional; PDF 1.2; widget annotations only) (Uppercase B, lowercase L) An action that is performed when the annotation loses the input focus.

=head2 PO [dictionary]
- (Optional; PDF 1.5) An action that is performed when the page containing the annotation is opened.
EXAMPLE 1 When the user navigates to it from the next or previous page or by means of a link annotation or outline item. The action is executed after the O action in the page’s additional-actions dictionary (see Table 195) and the OpenAction entry in the document Catalog(see Table 28), if such actions are present.

=head2 PC [dictionary]
- (Optional; PDF 1.5) An action that is performed when the page containing the annotation is closed.
EXAMPLE 2 When the user navigates to the next or previous page, or follows a link annotation or outline item. The action is executed before the C action in the page’s additional-actions dictionary (see Table 195), if present.

=head2 PV [dictionary]
- (Optional; PDF 1.5) An action that is performed when the page containing the annotation becomes visible.

=head2 PI [dictionary]
- (Optional; PDF 1.5) An action that is performed when the page containing the annotation is no longer visible in the conforming reader’s user interface.

=end pod
