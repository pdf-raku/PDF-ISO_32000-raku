use v6;
role ISO_32000::Table_170-Additional_entries_specific_to_markup_annotations {
    method T {...};
    method Popup {...};
    method CA {...};
    method RC {...};
    method CreationDate {...};
    method IRT {...};
    method Subj {...};
    method RT {...};
    method IT {...};
    method ExData {...};
}

=begin pod

=head1 Description

Table 170 – Additional entries specific to markup annotations

=head1 Methods (Entries)

=head2 T [text string]
- (Optional; PDF 1.1) The text label that is displayed in the title bar of the annotation’s pop-up window when open and active. This entry identifies the user who added the annotation.

=head2 Popup [dictionary]
- (Optional; PDF 1.3) An indirect reference to a pop-up annotation for entering or editing the text associated with this annotation.

=head2 CA [number]
- (Optional; PDF 1.4) The constant opacity value that is used in painting the annotation (see Sections 11.2, “Overview of Transparency,” and 11.3.7, “Shape and Opacity Computations”). This value applies to all visible elements of the annotation in its closed state (including its background and border) but not to the pop-up window that appears when the annotation is opened.
The specified value does not used if the annotation has an appearance stream (see 12.5.5, “Appearance Streams”); in that case, the appearance stream specifies any transparency. (However, if the compliant viewer regenerates the annotation’s appearance stream, it may incorporate the CA value into the stream’s content.)
The implicit blend mode (see 11.3.5, “Blend Mode””) is Normal. Default value: 1.0.
If no explicit appearance stream is defined for the annotation, it may be painted by implementation-dependent means that do not necessarily conform to the PDF imaging model; in this case, the effect of this entry is implementation-dependent as well.

=head2 RC [text string or text stream]
- (Optional; PDF 1.5) A rich text string (see 12.7.3.4, “Rich Text Strings”) that is displayed in the pop-up window when the annotation is opened.

=head2 CreationDate [date]
- (Optional; PDF 1.5) The date and time (7.9.4, “Dates”) when the annotation was created.

=head2 IRT [dictionary]
- (Required if an RT entry is present, otherwise optional; PDF 1.5) A reference to the annotation that this annotation is “in reply to.” Both annotations is on the same page of the document. The relationship between the two annotations is specified by the RT entry.
If this entry is present in an FDF file (see 12.7.7, “Forms Data Format”), its type is not a dictionary but a text string containing the contents of the NM entry of the annotation being replied to, to allow for a situation where the annotation being replied to is not in the same FDF file.

=head2 Subj [text string]
- (Optional; PDF 1.5) Text representing a short description of the subject being addressed by the annotation.

=head2 RT [name]
- (Optional; meaningful only if IRT is present; PDF 1.6) A name specifying the relationship (the “reply type”) between this annotation and one specified by IRT. Valid values are:
RThe annotation is considered a reply to the annotation specified by IRT. Conforming readers does not display replies to an annotation individually but together in the form of threaded comments.
GroupThe annotation is grouped with the annotation specified by IRT; see the discussion following this Table.
Default value: R.

=head2 IT [name]
- (Optional; PDF 1.6) A name describing the intent of the markup annotation. Intents allow conforming readers to distinguish between different uses and behaviors of a single markup annotation type. If this entry is not present or its value is the same as the annotation type, the annotation has no explicit intent and behaves in a generic manner in a conforming reader.
Free text annotations (Table 174), line annotations (Table 175), polygon annotations (Table 178), and (PDF 1.7) polyline annotations (Table 178) have defined intents, whose values are enumerated in the corresponding tables.

=head2 ExData [dictionary]
- (Optional; PDF 1.7) An external data dictionary specifying data that is associated with the annotation. This dictionary contains the following entries:
Type (optional) If present, is ExData.
Subtype (required) a name specifying the type of data that the markup annotation is associated with. The only defined value is Markup3D. Table 298 lists the values that correspond to a subtype of Markup3D.

=end pod
