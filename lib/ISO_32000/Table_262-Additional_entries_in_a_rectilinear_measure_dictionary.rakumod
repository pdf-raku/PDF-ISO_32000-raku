use v6;
role ISO_32000::Table_262-Additional_entries_in_a_rectilinear_measure_dictionary {
    method R {...};
    method X {...};
    method Y {...};
    method D {...};
    method A {...};
    method T {...};
    method S {...};
    method O {...};
    method CYX {...};
}

=begin pod

=head1 Description

Table 262 – Additional entries in a rectilinear measure dictionary

=head1 Methods (Entries)

=head2 R [text string]
- (Required) A text string expressing the scale ratio of the drawing in the region corresponding to this dictionary. Universally recognized unit abbreviations is used, either matching those of the number format arrays in this dictionary or those of commonly used scale ratios.
EXAMPLE 1 a common scale in architectural drawings is “1/4 in = 1 ft”, indicating that 1/4 inches in default user space is equivalent to 1 foot in real-world measurements. If the scale ratio differs in the x and y directions, both scales is specified.
EXAMPLE 2 “in X 1 cm = 1 m, in Y 1 cm = 30 m”.

=head2 X [array]
- (Required) A number format array for measurement of change along the x axis and, if Y is not present, along the y axis as well. The first element in the array contains the scale factor for converting from default user space units to the largest units in the measuring coordinate system along that axis.
The directions of the x and y axes are in the measuring coordinate system and are independent of the page rotation. These directions is determined by the BBox entry of the containing viewport (see Table 260).

=head2 Y [array]
- (Required when the x and y scales have different units or conversion factors) A number format array for measurement of change along the y axis. The first element in the array contains the scale factor for converting from default user space units to the largest units in the measuring coordinate system along the y axis.

=head2 D [array]
- (Required) A number format array for measurement of distance in any direction. The first element in the array specifies the conversion to the largest distance unit from units represented by the first element in X. The scale factors from X, Y (if present) and CYX (if Y is present) is used to convert from default user space to the appropriate units before applying the distance function.

=head2 A [array]
- (Required) A number format array for measurement of area. The first element in the array specifies the conversion to the largest area unit from units represented by the first element in X, squared. The scale factors from X, Y (if present) and CYX (if Y is present) is used to convert from default user space to the appropriate units before applying the area function.

=head2 T [array]
- (Optional) A number format array for measurement of angles. The first element in the array specifies the conversion to the largest angle unit from degrees. The scale factor from CYX (if present) is used to convert from default user space to the appropriate units before applying the angle function.

=head2 S [array]
- (Optional) A number format array for measurement of the slope of a line. The first element in the array specifies the conversion to the largest slope unit from units represented by the first element in Y divided by the first element in X. The scale factors from X, Y (if present) and CYX (if Y is present) is used to convert from default user space to the appropriate units before applying the slope function.

=head2 O [array]
- (Optional) An array of two numbers that specifies the origin of the measurement coordinate system in default user space coordinates. The directions by which x and y increase in value from this origin is determined by the viewport’s BBox entry (see Table 260).
Default value: the first coordinate pair (lower-left corner) of the rectangle specified by the viewport’s BBox entry.

=head2 CYX [number]
- (Optional; meaningful only when Y is present) A factor that is used to convert the largest units along the y axis to the largest units along the x axis. It is used for calculations (distance, area, and angle) where the units are be equivalent; if not specified, these calculations may not be performed (which would be the case in situations such as x representing time and y representing temperature). Other calculations (change in x, change in y, and slope) does not require this value.

=end pod
