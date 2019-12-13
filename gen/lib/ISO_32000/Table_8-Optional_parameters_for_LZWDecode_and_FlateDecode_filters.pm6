use v6;
#| PDF 32000-1:2008 Table 8 – Optional parameters for LZWDecode and FlateDecode filters
role ISO_32000::Table_8-Optional_parameters_for_LZWDecode_and_FlateDecode_filters {
    method Predictor {...};
    method Colors {...};
    method BitsPerComponent {...};
    method Columns {...};
    method EarlyChange {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Predictor [integer]
- A code that selects the predictor algorithm, if any. If the value of this entry is 1, the filter assumes that the normal algorithm was used to encode the data, without prediction. If the value is greater than 1, the filter assumes that the data was differenced before being encoded, and Predictor selects the predictor algorithm. For more information regarding Predictor values greater than 1, see 7.4.4.4, "LZW and Flate Predictor Functions." Default value: 1.

=head2 Colors [integer]
- (May be used only if Predictor is greater than 1) The number of interleaved colour components per sample. Valid values are 1 to 4 (PDF 1.0) and 1 or greater (PDF 1.3). Default value: 1.

=head2 BitsPerComponent [integer]
- (May be used only if Predictor is greater than 1) The number of bits used to represent each colour component in a sample. Valid values are 1, 2, 4, 8, and (PDF 1.5) 16. Default value: 8.

=head2 Columns [integer]
- (May be used only if Predictor is greater than 1) The number of samples in each row. Default value: 1.

=head2 EarlyChange [integer]
- (LZWDecode only) An indication of when to increase the code length. If the value of this entry is 0, code length increases is postponed as long as possible. If the value is 1, code length increases occurs one code early. This parameter is included because LZW sample code distributed by some vendors increases the code length one code earlier than necessary. Default value: 1.

=end pod
