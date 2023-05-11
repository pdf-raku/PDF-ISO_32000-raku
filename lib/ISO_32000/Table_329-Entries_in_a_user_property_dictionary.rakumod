use v6;
role ISO_32000::Table_329-Entries_in_a_user_property_dictionary {
    method N {...};
    method V {...};
    method F {...};
    method H {...};
}

=begin pod

=head1 Description

Table 329 – Entries in a user property dictionary

=head1 Methods (Entries)

=head2 N [text]
- (Required) The name of the user property.

=head2 V [any]
- (Required) The value of the user property.
While the value of this entry is any type of PDF object, conforming writers uses only text string, number, and boolean values. Conforming readers displays text, number and boolean values to users but need not display values of other types; however, they does not treat other values as errors.

=head2 F [text string]
- (Optional) A formatted representation of the value of V, that is used for special formatting; for example “($123.45)” for the number -123.45. If this entry is absent, conforming readers uses a default format.

=head2 H [boolean]
- (Optional) If true, the attribute is hidden; that is, it is not shown in any user interface element that presents the attributes of an object. Default value: false.

=end pod
