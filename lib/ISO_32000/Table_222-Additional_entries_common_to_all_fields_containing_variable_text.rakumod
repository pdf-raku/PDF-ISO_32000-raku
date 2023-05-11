use v6;
role ISO_32000::Table_222-Additional_entries_common_to_all_fields_containing_variable_text {
    method DA {...};
    method Q {...};
    method DS {...};
    method RV {...};
}

=begin pod

=head1 Description

Table 222 – Additional entries common to all fields containing variable text

=head1 Methods (Entries)

=head2 DA [string]
- (Required; inheritable) The default appearance string containing a sequence of valid page-content graphics or text state operators that define such properties as the field’s text size and colour.

=head2 Q [integer]
- (Optional; inheritable) A code specifying the form of quadding (justification) that is used in displaying the text:
0 Left-justified
1 Centered
2 Right-justified
Default value: 0 (left-justified).

=head2 DS [text string]
- (Optional; PDF 1.5) A default style string, as described in 12.7.3.4, “Rich Text Strings.”

=head2 RV [text string or text stream]
- (Optional; PDF 1.5) A rich text string, as described in 12.7.3.4, “Rich Text Strings.”

=end pod
