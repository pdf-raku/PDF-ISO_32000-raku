use v6;
role ISO_32000::Table_233-Entries_in_a_signature_field_lock_dictionary {
    method Type {...};
    method Action {...};
    method Fields {...};
}

=begin pod

=head1 Description

Table 233 – Entries in a signature field lock dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SigFieldLock for a signature field lock dictionary.

=head2 Action [name]
- (Required) A name which, in conjunction with Fields, indicates the set of fields that is locked. The value is one of the following:
All All fields in the document
Include All fields specified in Fields
Exclude All fields except those specified in Fields

=head2 Fields [array]
- (Required if the value of Action is Include or Exclude) An array of text strings containing field names.

=end pod
