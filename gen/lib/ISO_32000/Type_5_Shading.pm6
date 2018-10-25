use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Type_5_Shading ../tables/Type_5_Shading_entries.html

role ISO_32000::Type_5_Shading {
    method BitsPerCoordinate {...};	#| [integer] (Required) The number of bits used to represent each vertex coordinate. The value shall be 1, 2, 4, 8, 12, 16, 24, or 32.
    method BitsPerComponent {...};	#| [integer] (Required) The number of bits used to represent each colour component. The value shall be 1, 2, 4, 8, 12, or 16.
    method VerticesPerRow {...};	#| [integer] (Required) The number of vertices in each row of the lattice; the value shall be greater than or equal to 2. The number of rows need not be specified.
    method Decode {...};	#| [array] (Required) An array of numbers specifying how to map vertex coordinates and colour components into the appropriate ranges of values. The decoding method is similar to that used in image dictionaries (see Link 8.9.5.2, "Decode Arrays" ). The ranges shall be specified as follows:
	#| [ x min x max y min y max c 1,min c 1,max … c n,min c n,max ]
	#| Only one pair of c values shall be specified if a Function entry is present.
    method Function {...};	#| [function] (Optional) A 1-in, n-out function or an array of n 1-in, 1-out functions (where n is the number of colour components in the shading dictionary’s colour space). If this entry is present, the colour data for each vertex shall be specified by a single parametric variable rather than by n separate colour components. The designated function(s) shall be called with each interpolated value of the parametric variable to determine the actual colour at each point. Each input value shall be forced into the range interval specified for the corresponding colour component in the shading dictionary’s Decode array. Each function’s domain shall be a superset of that interval. If the value returned by the function for a given colour component is out of range, it shall be adjusted to the nearest valid value.
	#| This entry shall not be used with an Indexed colour space.
}
