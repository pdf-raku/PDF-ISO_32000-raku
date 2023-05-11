use v6;
role ISO_32000::Table_347-Standard_list_attribute {
    method ListNumbering {...};
}

=begin pod

=head1 Description

Table 347 – Standard list attribute

=head1 Methods (Entries)

=head2 ListNumbering [name]
- (Optional; inheritable) The numbering system used to generate the content of the Lbl (Label) elements in an autonumbered list, or the symbol used to identify each item in an unnumbered list. The value of the ListNumbering is one of the following, and is applied as described here.
None No autonumbering; Lbl elements (if present) contain arbitrary text not subject to any numbering scheme
Disc Solid circular bullet
Circle Open circular bullet
Square Solid square bullet
Decimal Decimal arabic numerals (1–9, 10–99, …)
UpperRoman Uppercase roman numerals (I, II, III, IV, …)
LowerRoman Lowercase roman numerals (i, ii, iii, iv, …)
UpperAlpha Uppercase letters (A, B, C, …)
LowerAlpha Lowercase letters (a, b, c, …)
Default value: None.
The alphabet used for UpperAlpha and LowerAlpha is determined by the prevailing Lang entry (see 14.9.2, “Natural Language Specification”).
The set of possible values may be expanded as Unicode identifies additional numbering systems. A conforming reader ignores any value not listed in this table; it behaves as though the value were None.

=end pod
