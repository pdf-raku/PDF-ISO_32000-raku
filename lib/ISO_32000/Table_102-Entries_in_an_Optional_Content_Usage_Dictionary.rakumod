use v6;
role ISO_32000::Table_102-Entries_in_an_Optional_Content_Usage_Dictionary {
    method CreatorInfo {...};
    method Language {...};
    method Export {...};
    method Zoom {...};
    method Print {...};
    method View {...};
    method User {...};
    method PageElement {...};
}

=begin pod

=head1 Description

Table 102 – Entries in an Optional Content Usage Dictionary

=head1 Methods (Entries)

=head2 CreatorInfo [dictionary]
- (Optional) A dictionary used by the creating application to store application-specific data associated with this optional content group. It contains two required entries:
Creator A text string specifying the application that created the group.
Subtype A name defining the type of content controlled by the group. Suggested values include but is not limited to Artwork, for graphic-design or publishing applications, and Technical, for technical designs such as building plans or schematics.
Additional entries may be included to present information relevant to the creating application or related applications.
Groups whose Intent entry contains Design typically include a CreatorInfo entry.

=head2 Language [dictionary]
- (Optional) A dictionary specifying the language of the content controlled by this optional content group. It may contain the following two entries:
Lang (required) A text string that specifies a language and possibly a locale (see 14.9.2, "Natural Language Specification"). For example, es-MX represents Mexican Spanish.
Preferred (optional) A name whose values is either ON or OFF. Default value: OFF. it is used by conforming readers when there is a partial match but no exact match between the system language and the language strings in all usage dictionaries. See 8.11.4.4, "Usage and Usage Application Dictionaries" for more information.

=head2 Export [dictionary]
- (Optional) A dictionary containing one entry, ExportState, a name whose value is either ON or OFF. This value indicates the recommended state for content in this group when the document (or part of it) is saved by a conforming reader to a format that does not support optional content (for example, a raster image format).

=head2 Zoom [dictionary]
- (Optional) A dictionary specifying a range of magnifications at which the content in this optional content group is best viewed. It contains one or both of the following entries:
min The minimum recommended magnification factor at which the group is ON. Default value: 0.
max The magnification factor below which the group is ON. Default value: infinity.

=head2 Print [dictionary]
- (Optional) A dictionary specifying that the content in this group is is used when printing. It may contain the following optional entries:
Subtype A name object specifying the kind of content controlled by the group; for example, Trapping, PrintersMarks and Watermark.
PrintState A name that is either ON or OFF, indicating that the group is set to that state when the document is printed from a conforming reader.

=head2 View [dictionary]
- (Optional) A dictionary that has a single entry, ViewState, a name that has a value of either ON or OFF, indicating that the group is set to that state when the document is opened in a conforming reader.

=head2 User [dictionary]
- (Optional) A dictionary specifying one or more users for whom this optional content group is primarily intended. Each dictionary has two required entries:
Type A name object that is either Ind (individual), Ttl (title), or Org (organization).
Name A text string or array of text strings representing the name(s) of the individual, position or organization.

=head2 PageElement [dictionary]
- (Optional) A dictionary declaring that the group contains a pagination artifact. It contains one entry, Subtype, whose value is a name that is either HF (header/footer), FG (foreground image or graphic), BG (background image or graphic), or L (logo).

=end pod
