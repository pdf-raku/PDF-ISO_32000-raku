use v6;
#| PDF 32000-1:2008 Table 328 – Additional entries in an attribute object dictionary for user properties
role ISO_32000::Table_328-Additional_entries_in_an_attribute_object_dictionary_for_user_properties {
    method O {...};
    method P {...};
}

=begin pod

=head1 Methods (Entries)

=head2 O [name]
- (Required) The attribute owner. Shall be UserProperties.

=head2 P [array]
- (Required) An array of dictionaries, each of which represents a user property (see Table 329).

=end pod
