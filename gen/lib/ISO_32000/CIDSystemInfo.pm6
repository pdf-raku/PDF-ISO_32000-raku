use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::CIDSystemInfo ../../resources/ISO_32000/CIDSystemInfo_entries.json

#| PDF 32000-1:2008 Table 116 – Entries in a CIDSystemInfo dictionary
role ISO_32000::CIDSystemInfo {
    method Registry {...};
    method Ordering {...};
    method Supplement {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Registry [ASCII string]
- (Required) A string identifying the issuer of the character collection. For information about assigning a registry identifier, contact the Adobe Solutions Network or consult the ASN Web site (see the Bibliography).

=head2 Ordering [ASCII string]
- (Required) A string that uniquely names the character collection within the specified registry.

=head2 Supplement [integer]
- (Required) The supplement number of the character collection. An original character collection has a supplement number of 0. Whenever additional CIDs are assigned in a character collection, the supplement number is increased. Supplements shall not alter the ordering of existing CIDs in the character collection. This value shall not be used in determining compatibility between character collections.

=end pod
