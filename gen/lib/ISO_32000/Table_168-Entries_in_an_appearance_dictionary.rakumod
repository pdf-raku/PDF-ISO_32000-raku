use v6;
role ISO_32000::Table_168-Entries_in_an_appearance_dictionary {
    method N {...};
    method R {...};
    method D {...};
}

=begin pod

=head1 Description

Table 168 – Entries in an appearance dictionary

=head1 Methods (Entries)

=head2 N [stream or dictionary]
- (Required) The annotation’s normal appearance.

=head2 R [stream or dictionary]
- (Optional) The annotation’s rollover appearance. Default value: the value of the N entry.

=head2 D [stream or dictionary]
- (Optional) The annotation’s down appearance. Default value: the value of the N entry.

=end pod
