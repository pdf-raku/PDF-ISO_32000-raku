use v6;
role ISO_32000::Table_81-Additional_Entries_Specific_to_a_Type_3_Shading_Dictionary {
    method Coords {...};
    method Domain {...};
    method Function {...};
    method Extend {...};
}

=begin pod

=head1 Description

Table 81 – Additional Entries Specific to a Type 3 Shading Dictionary

=head1 Methods (Entries)

=head2 Coords [array]
- (Required) An array of six numbers [ x0 y0 r0 x1 y1 r1 ] specifying the centres and radii of the starting and ending circles, expressed in the shading’s target coordinate space. The radii r0 and r1 shall both be greater than or equal to 0. If one radius is 0, the corresponding circle is treated as a point; if both are 0, nothing is painted.

=head2 Domain [array]
- (Optional) An array of two numbers [ t0 t1 ] specifying the limiting values of a parametric variable t. The variable is considered to vary linearly between these two values as the colour gradient varies between the starting and ending circles. The variable t becomes the input argument to the colour function(s). Default value: [ 0.0 1.0 ].

=head2 Function [function]
- (Required) A 1-in, n-out function or an array of n 1-in, 1-out functions (where n is the number of colour components in the shading dictionary’s colour space). The function(s) is called with values of the parametric variable t in the domain defined by the shading dictionary’s Domain entry. Each function’s domain is a superset of that of the shading dictionary. If the value returned by the function for a given colour component is out of range, it is adjusted to the nearest valid value.

=head2 Extend [array]
- (Optional) An array of two boolean values specifying whether to extend the shading beyond the starting and ending circles, respectively. Default value: [ false false ].

=end pod
