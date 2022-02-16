use v6;
role ISO_32000::Table_157-Entries_in_a_collection_field_dictionary {
    method Type {...};
    method Subtype {...};
    method N {...};
    method O {...};
    method V {...};
    method E {...};
}

=begin pod

=head1 Description

Table 157 – Entries in a collection field dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is CollectionField for a collection field dictionary.

=head2 Subtype [name]
- (Required) The subtype of collection field or file-related field that this dictionary describes. This entry identifies the type of data that is stored in the field.
The following values identify the types of fields in the collection item or collection subitem dictionary:
SA text field. The field data is stored as a PDF text string.
D A date field. The field data is stored as a PDF date string.
N A number field. The field data is stored as a PDF number.
The following values identify the types of file-related fields:
F The field data is the file name of the embedded file stream, as identified by the UF entry of the file specification, if present; otherwise by the F entry of the file specification (see Table 44).
Desc The field data is the description of the embedded file stream, as identified by the Desc entry in the file specification dictionary (see Table 44).
ModDate The field data is the modification date of the embedded file stream, as identified by the ModDate entry in the embedded file parameter dictionary (see Table 46).
CreationDateThe field data is the creation date of the embedded file stream, as identified by the CreationDate entry in the embedded file parameter dictionary (see Table 46).
Size The field data is the size of the embedded file, as identified by the Size entry in the embedded file parameter dictionary (see Table 46).

=head2 N [text string]
- (Required) The textual field name that is presented to the user by the conforming reader.

=head2 O [integer]
- (Optional) The relative order of the field name in the user interface. Fields is sorted by the conforming reader in ascending order.

=head2 V [boolean]
- (Optional) The initial visibility of the field in the user interface. Default value: true.

=head2 E [boolean]
- (Optional) A flag indicating whether the conforming reader provides support for editing the field value. Default value: false.

=end pod
