use v6;
role ISO_32000::Table_98-Entries_in_an_Optional_Content_Group_Dictionary {
    method Type {...};
    method Name {...};
    method Intent {...};
    method Usage {...};
}

=begin pod

=head1 Description

Table 98 – Entries in an Optional Content Group Dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is OCG for an optional content group dictionary.

=head2 Name [text string]
- (Required) The name of the optional content group, suitable for presentation in a reader’s user interface.

=head2 Intent [name or array]
- (Optional) A single intent name or an array containing any combination of names. PDF defines two names, View and Design, that may indicate the intended use of the graphics in the group. A conforming reader may choose to use only groups that have a specific intent and ignore others.
Default value: View. See 8.11.2.3, "Intent" for more information.

=head2 Usage [dictionary]
- (Optional) A usage dictionary describing the nature of the content controlled by the group. It may be used by features that automatically control the state of the group based on outside factors. See 8.11.4.4, "Usage and Usage Application Dictionaries" for more information.

=end pod
