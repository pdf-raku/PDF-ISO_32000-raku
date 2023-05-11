use v6;
role ISO_32000::Table_11-Optional_parameters_for_the_CCITTFaxDecode_filter {
    method K {...};
    method EndOfLine {...};
    method EncodedByteAlign {...};
    method Columns {...};
    method Rows {...};
    method EndOfBlock {...};
    method BlackIs1 {...};
    method DamagedRowsBeforeError {...};
}

=begin pod

=head1 Description

Table 11 – Optional parameters for the CCITTFaxDecode filter

=head1 Methods (Entries)

=head2 K [integer]
- A code identifying the encoding scheme used:
< 0 Pure two-dimensional encoding (Group 4)
V<=>0Pure one-dimensional encoding (Group 3, 1-D)
> 0 Mixed one- and two-dimensional encoding (Group 3, 2-D), in which a line encoded one-dimensionally may be followed by at most K − 1 lines encoded two- dimensionally
The filter distinguish among negative, zero, and positive values of K to determine how to interpret the encoded data; however, it does not distinguish between different positive K values. Default value: 0.

=head2 EndOfLine [boolean]
- A flag indicating whether end-of-line bit patterns is present in the encoding. The CCITTFaxDecode filter always accept end-of-line bit patterns. If EndOfLine is true end-of-line bit patterns is present.Default value: false.

=head2 EncodedByteAlign [boolean]
- A flag indicating whether the filter expects extra 0 bits before each encoded line so that the line begins on a byte boundary. If true, the filter skips over encoded bits to begin decoding each line at a byte boundary. If false, the filter does not expect extra bits in the encoded representation. Default value: false.

=head2 Columns [integer]
- The width of the image in pixels. If the value is not a multiple of 8, the filter adjusts the width of the unencoded image to the next multiple of 8 so that each line starts on a byte boundary. Default value: 1728.

=head2 Rows [integer]
- The height of the image in scan lines. If the value is 0 or absent, the image’s height is not predetermined, and the encoded data is terminated by an end-of-block bit pattern or by the end of the filter’s data. Default value: 0.

=head2 EndOfBlock [boolean]
- A flag indicating whether the filter expects the encoded data to be terminated by an end-of-block pattern, overriding the Rows parameter. If false, the filter stops when it has decoded the number of lines indicated by Rows or when its data has been exhausted, whichever occurs first. The end-of- block pattern is the CCITT end-of-facsimile-block (EOFB) or return-to-control (RTC) appropriate for the K parameter. Default value: true.

=head2 BlackIs1 [boolean]
- A flag indicating whether 1 bits is interpreted as black pixels and 0 bits as white pixels, the reverse of the normal PDF convention for image data. Default value: false.

=head2 DamagedRowsBeforeError [integer]
- The number of damaged rows of data that is tolerated before an error occurs. This entry applies only if EndOfLine is true and K is non-negative. Tolerating a damaged row means locating its end in the encoded data by searching for an EndOfLine pattern and then substituting decoded data from the previous row if the previous row was not damaged, or a white scan line if the previous row was also damaged. Default value: 0.

=end pod
