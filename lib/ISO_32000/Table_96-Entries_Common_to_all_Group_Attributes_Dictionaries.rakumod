use v6;
role ISO_32000::Table_96-Entries_Common_to_all_Group_Attributes_Dictionaries {
    method Type {...};
    method S {...};
}

=begin pod

=head1 Description

Table 96 – Entries Common to all Group Attributes Dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Group for a group attributes dictionary.

=head2 S [name]
- (Required) The group subtype, which identifies the type of group whose attributes this dictionary describes and determines the format and meaning of the dictionary’s remaining entries. The only group subtype defined is Transparency; see 11.6.6, "Transparency Group XObjects", for the remaining contents of this type of dictionary.

=end pod
