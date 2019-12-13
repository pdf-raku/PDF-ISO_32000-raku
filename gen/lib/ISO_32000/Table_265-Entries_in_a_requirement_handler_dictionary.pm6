use v6;
role ISO_32000::Table_265-Entries_in_a_requirement_handler_dictionary {
    method Type {...};
    method S {...};
    method Script {...};
}

=begin pod

=head1 Description

Table 265 – Entries in a requirement handler dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes. If present, is ReqHandler for a requirement handler dictionary.

=head2 S [name]
- (Required) The type of requirement handler that this dictionary describes. Valid requirement handler types shall beJS (for a JavaScript requirement handlers) and NoOp.
A value of NoOp allows older conforming readers to ignore unrecognized requirements. This value does not add any specific entry to the requirement handler dictionary.

=head2 Script [text string]
- (Optional; valid only if the S entry has a value of JS) The name of a document-level JavaScript action stored in the document name dictionary (see 7.7.4, “Name Dictionary”). If the conforming reader understands the parent requirement dictionary and can verify the requirement specified in that dictionary, it disables execution of the requirement handler identified in this dictionary.

=end pod
