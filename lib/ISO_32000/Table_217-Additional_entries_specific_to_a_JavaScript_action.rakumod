use v6;
role ISO_32000::Table_217-Additional_entries_specific_to_a_JavaScript_action {
    method S {...};
    method JS {...};
}

=begin pod

=head1 Description

Table 217 – Additional entries specific to a JavaScript action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is JavaScript for a JavaScript action.

=head2 JS [text string or text stream]
- (Required) A text string or text stream containing the JavaScript script to be executed.
PDFDocEncoding or Unicode encoding (the latter identified by the Unicode prefix U+ FEFF) is used to encode the contents of the string or stream.

=end pod
