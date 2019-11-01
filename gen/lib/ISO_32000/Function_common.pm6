use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Function_common ../../resources/ISO_32000/Function_common_entries.json

#| PDF 32000-1:2008 Table 38 – Entries common to all function dictionaries
role ISO_32000::Function_common {
    method FunctionType {...};
    method Domain {...};
    method Range {...};
}

=begin pod

=head1 Methods (Entries)

=head2 FunctionType [integer]
- (Required) The function type:
0 Sampled function
2 Exponential interpolation function
3 Stitching function
4 PostScript calculator function

=head2 Domain [array]
- (Required) An array of 2 × m numbers, where m is the number of input values. For each i from 0 to m − 1, Domain 2i is less than or equal to Domain 2i+1 , and the ith input value, x i , lies in the interval Domain 2i ≤ x i ≤ Domain 2i+1 . Input values outside the declared domain is clipped to the nearest boundary value.

=head2 Range [array]
- (Required for type 0 and type 4 functions, optional otherwise; see below) An array of 2 × n numbers, where n is the number of output values. For each j from 0 to n − 1, Range 2j is less than or equal to Range 2j+1 , and the jth output value, y j , lies in the interval Range 2j ≤ y j ≤ Range 2j+1 . Output values outside the declared range is clipped to the nearest boundary value. If this entry is absent, no clipping is done.

=end pod
