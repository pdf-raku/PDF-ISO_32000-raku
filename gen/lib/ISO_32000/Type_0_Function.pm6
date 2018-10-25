use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Type_0_Function ../tables/Type_0_Function_entries.html

role ISO_32000::Type_0_Function {
    method Size {...};	#| [array] (Required) An array of m positive integers that shall specify the number of samples in each input dimension of the sample table.
    method BitsPerSample {...};	#| [integer] (Required) The number of bits that shall represent each sample. (If the function has multiple output values, each one shall occupy BitsPerSample bits.) Valid values shall be 1, 2, 4, 8, 12, 16, 24, and 32.
    method Order {...};	#| [integer] (Optional) The order of interpolation between samples. Valid values shall be 1 and 3, specifying linear and cubic spline interpolation, respectively. Default value: 1.
    method Encode {...};	#| [array] (Optional) An array of 2 m numbers specifying the linear mapping of input values into the domain of the function’s sample table. Default value: [ 0 (Size0 1) 0 (Size1 1) … ].
    method Decode {...};	#| [array] (Optional) An array of 2 n numbers specifying the linear mapping of sample values into the range appropriate for the function’s output values. Default value: same as the value of Range.
}
