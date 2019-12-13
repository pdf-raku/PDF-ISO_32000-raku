use v6;
#| PDF 32000-1:2008 Table 52 – Device-Independent Graphics State Parameters
role ISO_32000::Table_52-Device-Independent_Graphics_State_Parameters {
    method CTM {...};
    method color {...};
}

=begin pod

=head1 Methods (Entries)

=head2 CTM [array]
- The current transformation matrix, which maps positions from user coordinates to device coordinates (see 8.3, "Coordinate Systems"). This matrix is modified by each application of the coordinate transformation operator, cm. Initial value: a matrix that transforms default user coordinates to device coordinates.

=head2 color [(various)]
- The current colour to be used during painting operations (see 8.6, "Colour Spaces"). The type and interpretation of this parameter depend on the current colour space; for most colour spaces, a colour value consists of one to four numbers. There are two separate colour parameters: one for stroking and one for all other painting operations. Initial value: black.

=end pod
