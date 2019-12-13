use v6;
#| PDF 32000-1:2008 Table 256 – Entries in the FieldMDP transform parameters dictionary
role ISO_32000::Table_256-Entries_in_the_FieldMDP_transform_parameters_dictionary {
    method Type {...};
    method Action {...};
    method Fields {...};
    method V {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is TransformParams for a transform parameters dictionary.

=head2 Action [name]
- (Required) A name that, along with the Fields array, describes which form fields do not permit changes after the signature is applied.
Valid values is:
All All form fields.
Include Only those form fields that specified in Fields.
Exclude Only those form fields not specified in Fields.

=head2 Fields [array]
- (Required if Action is Include or Exclude) An array of text strings containing field names.

=head2 V [name]
- (Optional: PDF 1.5 required) The transform parameters dictionary version. The value for PDF 1.5 and later is 1.2.
NOTE This value is a name object, not a number.
Default value: 1.2.

=end pod
