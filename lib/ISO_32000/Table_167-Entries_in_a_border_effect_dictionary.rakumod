use v6;
role ISO_32000::Table_167-Entries_in_a_border_effect_dictionary {
    method S {...};
    method I {...};
}

=begin pod

=head1 Description

Table 167 – Entries in a border effect dictionary

=head1 Methods (Entries)

=head2 S [name]
- (Optional) A name representing the border effect to apply. Possible values are:
S No effect: the border is as described by the annotation dictionary’s BS entry.
C The border appears “cloudy”. The width and dash array specified by BS is honored.
Default value: S.

=head2 I [number]
- (Optional; valid only if the value of S is C) A number describing the intensity of the effect, in the range 0 to 2. Default value: 0.

=end pod
