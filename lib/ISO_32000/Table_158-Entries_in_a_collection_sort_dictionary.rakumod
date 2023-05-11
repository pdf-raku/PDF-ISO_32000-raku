use v6;
role ISO_32000::Table_158-Entries_in_a_collection_sort_dictionary {
    method Type {...};
    method S {...};
    method A {...};
}

=begin pod

=head1 Description

Table 158 – Entries in a collection sort dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is CollectionSort for a collection sort dictionary.

=head2 S [name or array]
- (Required) The name or names of fields that the conforming reader uses to sort the items in the collection. If the value is a name, it identifies a field described in the parent collection dictionary.
If the value is an array, each element of the array is a name that identifies a field described in the parent collection dictionary. The array form is used to allow additional fields to contribute to the sort, where each additional field is used to break ties. More specifically, if multiple collection item dictionaries have the same value for the first field named in the array, the values for successive fields named in the array is used for sorting, until a unique order is determined or until the named fields are exhausted.

=head2 A [boolean or array]
- (Optional) If the value is a boolean, it specifies whether the conforming reader sorts the items in the collection in ascending order (true) or descending order (false). If the value is an array, each element of the array is a boolean value that specifies whether the entry at the same index in the S array is sorted in ascending or descending order.
If the number of entries in the A array is larger than the number of entries in the S array the extra entries in the A array is ignored. If the number of entries in the A array is less than the number of entries in the S array the missing entries in the A array is assumed to be true.
Default value: true.

=end pod
