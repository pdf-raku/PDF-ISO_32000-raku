use v6;
role ISO_32000::Table_254-Entries_in_the_DocMDP_transform_parameters_dictionary {
    method Type {...};
    method P {...};
    method V {...};
}

=begin pod

=head1 Description

Table 254 – Entries in the DocMDP transform parameters dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is TransformParams for a transform parameters dictionary.

=head2 P [number]
- (Optional) The access permissions granted for this document. Valid values is:
1 No changes to the document is permitted; any change to the document invalidates the signature.
2 Permitted changes is filling in forms, instantiating page templates, and signing; other changes invalidates the signature.
3 Permitted changes is the same as for 2, as well as annotation creation, deletion, and modification; other changes invalidates the signature.
Default value: 2.

=head2 V [name]
- (Optional) The DocMDP transform parameters dictionary version. The only valid value is 1.2.
NOTE this value is a name object, not a number. Default value: 1.2.

=end pod
