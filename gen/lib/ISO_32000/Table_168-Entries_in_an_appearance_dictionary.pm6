use v6;
#| PDF 32000-1:2008 Table 168 – Entries in an appearance dictionary
role ISO_32000::Table_168-Entries_in_an_appearance_dictionary {
    method N {...};
    method R {...};
    method D {...};
}

=begin pod

=head1 Methods (Entries)

=head2 N [stream or dictionary]
- (Required) The annotation’s normal appearance.

=head2 R [stream or dictionary]
- (Optional) The annotation’s rollover appearance. Default value: the value of the N entry.

=head2 D [stream or dictionary]
- (Optional) The annotation’s down appearance. Default value: the value of the N entry.

=end pod
