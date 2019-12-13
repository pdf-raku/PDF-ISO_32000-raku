use v6;
role ISO_32000::Table_356-Entries_in_a_URL_alias_dictionary {
    method U {...};
    method C {...};
}

=begin pod

=head1 Description

Table 356 – Entries in a URL alias dictionary

=head1 Methods (Entries)

=head2 U [ASCII string]
- (Required) The destination URL to which all of the chains specified by the C entry lead.

=head2 C [array]
- (Optional) An array of one or more arrays of strings, each representing a chain of URLs leading to the common destination specified by U.

=end pod
