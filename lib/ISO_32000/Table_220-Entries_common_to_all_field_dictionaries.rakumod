use v6;
role ISO_32000::Table_220-Entries_common_to_all_field_dictionaries {
    method FT {...};
    method Parent {...};
    method Kids {...};
    method T {...};
    method TU {...};
    method TM {...};
    method Ff {...};
    method V {...};
    method DV {...};
    method AA {...};
}

=begin pod

=head1 Description

Table 220 – Entries common to all field dictionaries

=head1 Methods (Entries)

=head2 FT [name]
- (Required for terminal fields; inheritable) The type of field that this dictionary describes:
Btn Button (see 12.7.4.2, “Button Fields”)
Tx Text (see 12.7.4.3, “Text Fields”)
Ch Choice (see 12.7.4.4, “Choice Fields”)
Sig(PDF 1.3) Signature (see 12.7.4.5, “Signature Fields”)
This entry may be present in a non-terminal field (one whose descendants are fields) to provide an inheritable FT value. However, a non-terminal field does not logically have a type of its own; it is merely a container for inheritable attributes that are intended for descendant terminal fields of any type.

=head2 Parent [dictionary]
- (Required if this field is the child of another in the field hierarchy; absent otherwise) The field that is the immediate parent of this one (the field, if any, whose Kids array includes this field). A field can have at most one parent; that is, it can be included in the Kids array of at most one other field.

=head2 Kids [array]
- (Sometimes required, as described below) An array of indirect references to the immediate children of this field.
In a non-terminal field, the Kids array refers to field dictionaries that are immediate descendants of this field. In a terminal field, the Kids array ordinarily refers to one or more separate widget annotations that are associated with this field. However, if there is only one associated widget annotation, and its contents have been merged into the field dictionary, Kids is omitted.

=head2 T [text string]
- (Optional) The partial field name (see 12.7.3.2, “Field Names”).

=head2 TU [text string]
- (Optional; PDF 1.3) An alternate field name that is used in place of the actual field name wherever the field is identified in the user interface (such as in error or status messages referring to the field). This text is also useful when extracting the document’s contents in support of accessibility to users with disabilities or for other purposes (see 14.9.3, “Alternate Descriptions”).

=head2 TM [text string]
- (Optional; PDF 1.3) The mapping name that is used when exporting interactive form field data from the document.

=head2 Ff [integer]
- (Optional; inheritable) A set of flags specifying various characteristics of the field (see Table 221). Default value: 0.

=head2 V [(various)]
- (Optional; inheritable) The field’s value, whose format varies depending on the field type. See the descriptions of individual field types for further information.

=head2 DV [(various)]
- (Optional; inheritable) The default value to which the field reverts when a reset-form action is executed (see 12.7.5.3, “Reset-Form Action”). The format of this value is the same as that of V.

=head2 AA [dictionary]
- (Optional; PDF 1.2) An additional-actions dictionary defining the field’s behaviour in response to various trigger events (see 12.6.3, “Trigger Events”). This entry has exactly the same meaning as the AA entry in an annotation dictionary (see 12.5.2, “Annotation Dictionaries”).

=end pod
