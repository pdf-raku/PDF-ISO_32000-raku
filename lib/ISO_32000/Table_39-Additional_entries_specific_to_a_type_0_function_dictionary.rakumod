use v6;
role ISO_32000::Table_39-Additional_entries_specific_to_a_type_0_function_dictionary {
    method Size {...};
    method BitsPerSample {...};
    method Order {...};
    method Encode {...};
    method Decode {...};
}

=begin pod

=head1 Description

Table 39 – Additional entries specific to a type 0 function dictionary

=head1 Methods (Entries)

=head2 Size [array]
- (Required) An array of m positive integers that specifies the number of samples in each input dimension of the sample table.

=head2 BitsPerSample [integer]
- (Required) The number of bits that represents each sample. (If the function has multiple output values, each one occupies BitsPerSample bits.) Valid values is 1, 2, 4, 8, 12, 16, 24, and 32.

=head2 Order [integer]
- (Optional) The order of interpolation between samples. Valid values is 1 and 3, specifying linear and cubic spline interpolation, respectively. Default value: 1.

=head2 Encode [array]
- (Optional) An array of 2 × m numbers specifying the linear mapping of input values into the domain of the function’s sample table. Default value: [ 0 (Size0 − 1) 0 (Size1 − 1) … ].

=head2 Decode [array]
- (Optional) An array of 2 × n numbers specifying the linear mapping of sample values into the range appropriate for the function’s output values. Default value: same as the value of Range.

=end pod
