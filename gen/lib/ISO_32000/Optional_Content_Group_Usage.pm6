use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Optional_Content_Group_Usage ../tables/Optional_Content_Group_Usage_entries.html

role ISO_32000::Optional_Content_Group_Usage {
    method CreatorInfo {...};	#| [dictionary] (Optional) A dictionary used by the creating application to store application-specific data associated with this optional content group. It shall contain two required entries:
	#| Creator A text string specifying the application that created the group.
	#| Subtype A name defining the type of content controlled by the group. Suggested values include but shall not be limited to Artwork, for graphic-design or publishing applications, and Technical, for technical designs such as building plans or schematics.
	#| Additional entries may be included to present information relevant to the creating application or related applications.
	#| Groups whose Intent entry contains Design typically include a CreatorInfo entry.
    method Language {...};	#| [dictionary] (Optional) A dictionary specifying the language of the content controlled by this optional content group. It may contain the following two entries:
	#| Lang (required) A text string that specifies a language and possibly a locale (see Link 14.9.2, "Natural Language Specification" ). For example, es-MX represents Mexican Spanish.
	#| Preferred (optional) A name whose values shall be either ON or OFF. Default value: OFF. it shall be used by conforming readers when there is a partial match but no exact match between the system language and the language strings in all usage dictionaries. See Link 8.11.4.4, "Usage and Usage Application Dictionaries" for more information.
    method Export {...};	#| [dictionary] (Optional) A dictionary containing one entry, ExportState, a name whose value shall be either ON or OFF. This value shall indicate the recommended state for content in this group when the document (or part of it) is saved by a conforming reader to a format that does not support optional content (for example, a raster image format).
    method Zoom {...};	#| [dictionary] (Optional) A dictionary specifying a range of magnifications at which the content in this optional content group is best viewed. It shall contain one or both of the following entries:
	#| min The minimum recommended magnification factor at which the group shall be ON. Default value: 0.
	#| max The magnification factor below which the group shall be ON. Default value: infinity.
    method Print {...};	#| [dictionary] (Optional) A dictionary specifying that the content in this group is shall be used when printing. It may contain the following optional entries:
	#| Subtype A name object specifying the kind of content controlled by the group; for example, Trapping, PrintersMarks and Watermark.
	#| PrintState A name that shall be either ON or OFF, indicating that the group shall be set to that state when the document is printed from a conforming reader.
    method View {...};	#| [dictionary] (Optional) A dictionary that shall have a single entry, ViewState, a name that shall have a value of either ON or OFF, indicating that the group shall be set to that state when the document is opened in a conforming reader.
    method User {...};	#| [dictionary] (Optional) A dictionary specifying one or more users for whom this optional content group is primarily intended. Each dictionary shall have two required entries:
	#| Type A name object that shall be either Ind (individual), Ttl (title), or Org (organization).
	#| Name A text string or array of text strings representing the name(s) of the individual, position or organization.
    method PageElement {...};	#| [dictionary] (Optional) A dictionary declaring that the group contains a pagination artifact. It shall contain one entry, Subtype, whose value shall be a name that is either HF (header/footer), FG (foreground image or graphic), BG(background image or graphic), or L (logo).
}
