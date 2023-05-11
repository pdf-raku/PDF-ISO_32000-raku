use v6;
role ISO_32000::Table_362-Additional_entries_specific_to_a_printers_mark_annotation {
    method Subtype {...};
    method MN {...};
}

=begin pod

=head1 Description

Table 362 – Additional entries specific to a printer’s mark annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is PrinterMark for a printer’s mark annotation.

=head2 MN [name]
- (Optional) An arbitrary name identifying the type of printer’s mark, such as ColorBar or RegistrationTarget.

=end pod
