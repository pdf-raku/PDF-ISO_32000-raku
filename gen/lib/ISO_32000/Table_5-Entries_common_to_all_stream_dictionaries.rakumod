use v6;
role ISO_32000::Table_5-Entries_common_to_all_stream_dictionaries {
    method Length {...};
    method Filter {...};
    method DecodeParms {...};
    method F {...};
    method FFilter {...};
    method FDecodeParms {...};
    method DL {...};
}

=begin pod

=head1 Description

Table 5 – Entries common to all stream dictionaries

=head1 Methods (Entries)

=head2 Length [integer]
- (Required) The number of bytes from the beginning of the line following the keyword stream to the last byte just before the keyword endstream. (There may be an additional EOL marker, preceding endstream, that is not included in the count and is not logically part of the stream data.) See 7.3.8.2, "Stream Extent", for further discussion.

=head2 Filter [name or array]
- (Optional) The name of a filter that is applied in processing the stream data found between the keywords stream and endstream, or an array of zero, one or several names. Multiple filters is specified in the order in which they are to be applied.

=head2 DecodeParms [dictionary or array]
- (Optional) A parameter dictionary or an array of such dictionaries, used by the filters specified by Filter. If there is only one filter and that filter has parameters, DecodeParmsshall be set to the filter’s parameter dictionary unless all the filter’s parameters have their default values, in which case the DecodeParms entry may be omitted. If there are multiple filters and any of the filters has parameters set to nondefault values, DecodeParms is an array with one entry for each filter: either the parameter dictionary for that filter, or the null object if that filter has no parameters (or if all of its parameters have their default values). If none of the filters have parameters, or if all their parameters have default values, the DecodeParms entry may be omitted.

=head2 F [file specification]
- (Optional; PDF 1.2) The file containing the stream data. If this entry is present, the bytes between stream and endstreamshall be ignored. However, the Length entry should still specify the number of those bytes (usually, there are no bytes and Length is 0). The filters that are applied to the file data is specified by FFilter and the filter parameters is specified by FDecodeParms.

=head2 FFilter [name or array]
- (Optional; PDF 1.2) The name of a filter to be applied in processing the data found in the stream’s external file, or an array of zero, one or several such names. The same rules apply as for Filter.

=head2 FDecodeParms [dictionary or array]
- (Optional; PDF 1.2) A parameter dictionary, or an array of such dictionaries, used by the filters specified by FFilter. The same rules apply as for DecodeParms.

=head2 DL [integer]
- (Optional; PDF 1.5) A non-negative integer representing the number of bytes in the decoded (defiltered) stream. It can be used to determine, for example, whether enough disk space is available to write a stream to a file.
This value is considered a hint only; for some stream filters, it may not be possible to determine this value precisely.

=end pod
