use v6;
role ISO_32000::Table_17-Additional_entries_specific_to_a_cross-reference_stream_dictionary {
    method Type {...};
    method Size {...};
    method Index {...};
    method Prev {...};
    method W {...};
}

=begin pod

=head1 Description

Table 17 – Additional entries specific to a cross-reference stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is XRef for a cross-reference stream.

=head2 Size [integer]
- (Required) The number one greater than the highest object number used in this section or in any section for which this is an update. It is equivalent to the Size entry in a trailer dictionary.

=head2 Index [array]
- (Optional) An array containing a pair of integers for each subsection in this section. The first integer is the first object number in the subsection; the second integer is the number of entries in the subsection
The array is sorted in ascending order by object number. Subsections cannot overlap; an object number may have at most one entry in a section.
Default value: [0 Size].

=head2 Prev [integer]
- (Present only if the file has more than one cross-reference stream; not meaningful in hybrid-reference files; see 7.5.8.4, "Compatibility with Applications That Do Not Support Compressed Reference Streams") The byte offset in the decoded stream from the beginning of the file to the beginning of the previous cross-reference stream. This entry has the same function as the Prev entry in the trailer dictionary (Table 15).

=head2 W [array]
- (Required) An array of integers representing the size of the fields in a single cross-reference entry. Table 18 describes the types of entries and their fields. For PDF 1.5, W always contains three integers; the value of each integer is the number of bytes (in the decoded stream) of the corresponding field.
EXAMPLE [1 2 1] means that the fields are one byte, two bytes, and one byte, respectively. A value of zero for an element in the W array indicates that the corresponding field is not present in the stream, and the default value is used, if there is one. If the first element is zero, the type field is not present, and defaults to type 1. The sum of the items is the total length of each entry; it can be used with the Index array to determine the starting position of each subsection. Different cross-reference streams in a PDF file may use different values for W.

=end pod
