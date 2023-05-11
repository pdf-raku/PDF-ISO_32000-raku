use v6;
role ISO_32000::Table_174-Additional_entries_specific_to_a_free_text_annotation {
    method Subtype {...};
    method DA {...};
    method Q {...};
    method RC {...};
    method DS {...};
    method CL {...};
    method IT {...};
    method BE {...};
    method RD {...};
    method BS {...};
    method LE {...};
}

=begin pod

=head1 Description

Table 174 – Additional entries specific to a free text annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is FreeText for a free text annotation.

=head2 DA [string]
- (Required) The default appearance string that is used in formatting the text (see 12.7.3.3, “Variable Text”).
The annotation dictionary’s AP entry, if present, takes precedence over the DA entry; see Table 168 and 12.5.5, “Appearance Streams.”

=head2 Q [integer]
- (Optional; PDF 1.4) A code specifying the form of quadding (justification) that is used in displaying the annotation’s text:
0 Left-justified
1 Centered
2 Right-justified
Default value: 0 (left-justified).

=head2 RC [text string or text stream]
- (Optional; PDF 1.5) A rich text string (see 12.7.3.4, “Rich Text Strings”) that is used to generate the appearance of the annotation.

=head2 DS [text string]
- (Optional; PDF 1.5) A default style string, as described in 12.7.3.4, “Rich Text Strings.”

=head2 CL [array]
- (Optional; meaningful only if IT is FreeTextCallout; PDF 1.6) An array of four or six numbers specifying a callout line attached to the free text annotation. Six numbers [ x1 y1 x2 y2 x3 y3 ] represent the starting, knee point, and ending coordinates of the line in default user space, as shown in Figure 8.4. Four numbers [ x1 y1 x2 y2 ] represent the starting and ending coordinates of the line.

=head2 IT [name]
- (Optional; PDF 1.6) A name describing the intent of the free text annotation (see also the IT entry in Table 170). The following values is valid:
FreeTextThe annotation is intended to function as a plain free-text annotation. A plain free-text annotation is also known as a text box comment.
FreeTextCalloutThe annotation is intended to function as a callout. The callout is associated with an area on the page through the callout line specified in CL.
FreeTextTypeWriterThe annotation is intended to function as a click- to-type or typewriter object and no callout line is drawn.
Default value: FreeText

=head2 BE [dictionary]
- (Optional; PDF 1.6) A border effect dictionary (see Table 167) used in conjunction with the border style dictionary specified by the BS entry.

=head2 RD [rectangle]
- (Optional; PDF 1.6) A set of four numbers describing the numerical differences between two rectangles: the Rect entry of the annotation and a rectangle contained within that rectangle. The inner rectangle is where the annotation’s text is displayed. Any border styles and/or border effects specified by BS and BE entries, respectively, is applied to the border of the inner rectangle.
The four numbers correspond to the differences in default user space between the left, top, right, and bottom coordinates of Rect and those of the inner rectangle, respectively. Each value is greater than or equal to 0. The sum of the top and bottom differences is less than the height of Rect, and the sum of the left and right differences is less than the width of Rect.

=head2 BS [dictionary]
- (Optional; PDF 1.6) A border style dictionary (see Table 166) specifying the line width and dash pattern that is used in drawing the annotation’s border.
The annotation dictionary’s AP entry, if present, takes precedence over the BS entry; see Table 164 and 12.5.5, “Appearance Streams”.

=head2 LE [name]
- (Optional; meaningful only if CL is present; PDF 1.6) A name specifying the line ending style that is used in drawing the callout line specified in CL. The name specifies the line ending style for the endpoint defined by the pairs of coordinates (x1, y1). Table 176 shows the possible line ending styles.
Default value: None.

=end pod
