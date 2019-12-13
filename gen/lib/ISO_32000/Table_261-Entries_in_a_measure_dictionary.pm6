use v6;
#| PDF 32000-1:2008 Table 261 – Entries in a measure dictionary
role ISO_32000::Table_261-Entries_in_a_measure_dictionary {
    method Type {...};
    method Subtype {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; is Measure for a measure dictionary.

=head2 Subtype [name]
- (Optional) A name specifying the type of coordinate system to use for measuring.
Default value: RL, which specifies a rectilinear coordinate system

=end pod
