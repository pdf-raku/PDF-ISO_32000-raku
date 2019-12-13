use v6;
#| PDF 32000-1:2008 Table 249 – Entries in an FDF template dictionary
role ISO_32000::Table_249-Entries_in_an_FDF_template_dictionary {
    method TRef {...};
    method Fields {...};
    method Rename {...};
}

=begin pod

=head1 Methods (Entries)

=head2 TRef [dictionary]
- (Required) A named page reference dictionary (see Table 250) that specifies the location of the template.

=head2 Fields [array]
- (Optional) An array of references to FDF field dictionaries (see Table 246) describing the root fields that is imported (those with no ancestors in the field hierarchy).

=head2 Rename [boolean]
- (Optional) A flag that specifies whether fields imported from the template is renamed in the event of name conflicts with existing fields; see the Note in this sub-clause for further discussion. Default value: true.

=end pod
