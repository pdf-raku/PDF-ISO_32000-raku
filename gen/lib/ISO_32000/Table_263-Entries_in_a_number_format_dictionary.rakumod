use v6;
role ISO_32000::Table_263-Entries_in_a_number_format_dictionary {
    method Type {...};
    method U {...};
    method C {...};
    method F {...};
    method D {...};
    method FD {...};
    method RT {...};
    method RD {...};
    method PS {...};
    method SS {...};
    method O {...};
}

=begin pod

=head1 Description

Table 263 – Entries in a number format dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; is NumberFormat for a number format dictionary.

=head2 U [text string]
- (Required) A text string specifying a label for displaying the units represented by this dictionary in a user interface; the label uses a universally recognized abbreviation.

=head2 C [number]
- (Required) The conversion factor used to multiply a value in partial units of the previous number format array element to obtain a value in the units of this dictionary. When this entry is in the first number format dictionary in the array, its meaning (that is, what it is multiplied by) depends on which entry in the rectilinear measure dictionary (see Table 262) references the number format array.

=head2 F [name]
- (Optional; meaningful only for the last dictionary in a number format array) A name indicating whether and in what manner to display a fractional value from the result of converting to the units of this dictionary by means of the C entry. Valid values is:
DShow as decimal to the precision specified by the D entry.
F Show as a fraction with denominator specified by the D entry.
RNo fractional part; round to the nearest whole unit.
TNo fractional part; truncate to achieve whole units.
Default value: D.

=head2 D [integer]
- (Optional; meaningful only for the last dictionary in a number format array) A positive integer that specifies the precision or denominator of a fractional amount:
When the value of F is D, this entry is the precision of a decimal display; it is a multiple of 10. Low-order zeros may be truncated unless FD is true. Default value: 100 (hundredths, corresponding to two decimal digits).
When the value of F is F, this entry is the denominator of a fractional display. The fraction may be reduced unless the value of FD is true. Default value: 16.

=head2 FD [boolean]
- (Optional; meaningful only for the last dictionary in a number format array) If true, a fractional value formatted according to the D entry may not have its denominator reduced or low-order zeros truncated.
Default value: false.

=head2 RT [text string]
- (Optional) Text that is used between orders of thousands in display of numerical values. An empty string indicates that no text is added.
Default value: COMMA (2Ch).

=head2 RD [text string]
- (Optional) Text that is used as the decimal position in displaying numerical values. An empty string indicates that the default is used.
Default value: PERIOD (2Eh).

=head2 PS [text string]
- (Optional) Text that is concatenated to the left of the label specified by U. An empty string indicates that no text is added.
Default value: A single ASCII SPACE character (20h).

=head2 SS [text string]
- (Optional) Text that is concatenated after the label specified by U. An empty string indicates that no text is added.
Default value: A single ASCII SPACE character (20h).

=head2 O [name]
- (Optional) A name indicating the position of the label specified by U with respect to the calculated unit value. Valid values is:
S The label is a suffix to the value.
PThe label is a prefix to the value.
The characters specified by PS and SS is concatenated before considering this entry.
Default value: S.

=end pod
