use v6;
role ISO_32000::Table_178-Additional_entries_specific_to_a_polygon_or_polyline_annotation {
    method Subtype {...};
    method Vertices {...};
    method LE {...};
    method BS {...};
    method IC {...};
    method BE {...};
    method IT {...};
    method Measure {...};
}

=begin pod

=head1 Description

Table 178 – Additional entries specific to a polygon or polyline annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Polygon or PolyLine for a polygon or polyline annotation, respectively.

=head2 Vertices [array]
- (Required) An array of numbers (see Table 174) specifying the width and dash pattern that represents the alternating horizontal and vertical coordinates, respectively, of each vertex, in default user space.

=head2 LE [array]
- (Optional; meaningful only for polyline annotations) An array of two names that specifies the line ending styles. The first and second elements of the array specifies the line ending styles for the endpoints defined, respectively, by the first and last pairs of coordinates in the Vertices array. Table 176 shows the possible values. Default value: [ / None /None ].

=head2 BS [dictionary]
- (Optional) A border style dictionary (see Table 166) specifying the width and dash pattern that is used in drawing the line.
The annotation dictionary’s AP entry, if present, takes precedence over the Vertices and BS entries; see Table 168 and 12.5.5, “Appearance Streams.”

=head2 IC [array]
- (Optional; PDF 1.4) An array of numbers that is in the range 0.0 to 1.0 and specifies the interior color with which to fill the annotation’s line endings (see Ta ble 176). The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1DeviceGray
3DeviceRGB
4DeviceCMYK

=head2 BE [dictionary]
- (Optional; meaningful only for polygon annotations) A border effect dictionary that describes an effect applied to the border described by the BS entry (see Table 167).

=head2 IT [name]
- (Optional; PDF 1.6) A name that describes the intent of the polygon or polyline annotation (see also Table 170). The following values is valid:
PolygonCloud The annotation is intended to function as a cloud object.
PolyLineDimension (PDF 1.7) The polyline annotation is intended to function as a dimension.
PolygonDimension (PDF 1.7) The polygon annotation is intended to function as a dimension.

=head2 Measure [dictionary]
- (Optional; PDF 1.7) A measure dictionary (see Table 261) that specifies the scale and units that apply to the annotation.

=end pod
