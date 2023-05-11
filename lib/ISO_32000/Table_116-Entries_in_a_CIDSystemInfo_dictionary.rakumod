use v6;
role ISO_32000::Table_116-Entries_in_a_CIDSystemInfo_dictionary {
    method Registry {...};
    method Ordering {...};
    method Supplement {...};
}

=begin pod

=head1 Description

Table 116 – Entries in a CIDSystemInfo dictionary

=head1 Methods (Entries)

=head2 Registry [ASCII string]
- (Required) A string identifying the issuer of the character collection. For information about assigning a registry identifier, contact the Adobe Solutions Network or consult the ASN Web site (see the Bibliography).

=head2 Ordering [ASCII string]
- (Required) A string that uniquely names the character collection within the specified registry.

=head2 Supplement [integer]
- (Required) The supplement number of the character collection. An original character collection has a supplement number of 0. Whenever additional CIDs are assigned in a character collection, the supplement number is increased. Supplements does not alter the ordering of existing CIDs in the character collection. This value is not used in determining compatibility between character collections.

=end pod
