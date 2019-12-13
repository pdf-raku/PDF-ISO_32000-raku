use v6;
role ISO_32000::Table_232-Additional_entries_specific_to_a_signature_field {
    method Lock {...};
    method SV {...};
}

=begin pod

=head1 Description

Table 232 – Additional entries specific to a signature field

=head1 Methods (Entries)

=head2 Lock [dictionary]
- (Optional; is an indirect reference; PDF 1.5) A signature field lock dictionary that specifies a set of form fields that is locked when this signature field is signed. Table 233 lists the entries in this dictionary.

=head2 SV [dictionary]
- (Optional; is an indirect reference; PDF 1.5) A seed value dictionary (see Table 234) containing information that constrains the properties of a signature that is applied to this field.

=end pod
