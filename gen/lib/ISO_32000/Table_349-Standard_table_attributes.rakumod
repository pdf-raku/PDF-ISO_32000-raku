use v6;
role ISO_32000::Table_349-Standard_table_attributes {
    method RowSpan {...};
    method ColSpan {...};
    method Headers {...};
    method Scope {...};
    method Summary {...};
}

=begin pod

=head1 Description

Table 349 – Standard table attributes

=head1 Methods (Entries)

=head2 RowSpan [integer]
- (Optional; not inheritable) The number of rows in the enclosing table that is spanned by the cell. The cell shall expand by adding rows in the block-progression direction specified by the table’s WritingMode attribute. If this entry is absent, a conforming reader assumes a value of 1.
This entry is only be used when the table cell has a structure type of TH or TD or one that is role mapped to structure type TH or TD (see Table 337).

=head2 ColSpan [integer]
- (Optional; not inheritable) The number of columns in the enclosing table that is spanned by the cell. The cell shall expand by adding columns in the inline-progression direction specified by the table’s WritingMode attribute. If this entry is absent, a conforming reader assumes a value of 1
This entry is only be used when the table cell has a structure type of TH or TD or one that is role mapped to structure types TH or TD (see Table 337).

=head2 Headers [array]
- (Optional; not inheritable; PDF 1.5) An array of byte strings, where each string is the element identifier (see the ID entry in Table 323) for a TH structure element that is used as a header associated with this cell.
This attribute may apply to header cells (TH) as well as data cells (TD) (see Table 337). Therefore, the headers associated with any cell is those in its Headers array plus those in the Headers array of any TH cells in that array, and so on recursively.

=head2 Scope [name]
- (Optional; not inheritable; PDF 1.5) A name whose value is one of the following: Row, Column, or Both. This attribute is only be used when the structure type of the element is TH. (see Table 337). It shall reflect whether the header cell applies to the rest of the cells in the row that contains it, the column that contains it, or both the row and the column that contain it.

=head2 Summary [text string]
- (Optional; not inheritable; PDF 1.7) A summary of the table’s purpose and structure. This entry is only be used within Table structure elements (see Table 337).
NOTE For use in non-visual rendering such as speech or braille

=end pod
