use v6;
role ISO_32000::Table_40-Additional_entries_specific_to_a_type_2_function_dictionary {
    method C0 {...};
    method C1 {...};
    method N {...};
}

=begin pod

=head1 Description

Table 40 – Additional entries specific to a type 2 function dictionary

=head1 Methods (Entries)

=head2 C0 [array]
- (Optional) An array of n numbers that defines the function result when x = 0.0. Default value: [ 0.0 ].

=head2 C1 [array]
- (Optional) An array of n numbers that defines the function result when x = 1.0. Default value: [ 1.0 ].

=head2 N [number]
- (Required) The interpolation exponent. Each input value x shall return n values, given by y j = C0 j + x N × (C1 j − C0 j), for 0 ≤ j < n.

=end pod
