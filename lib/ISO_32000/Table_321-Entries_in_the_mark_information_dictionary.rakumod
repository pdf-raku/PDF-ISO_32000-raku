use v6;
role ISO_32000::Table_321-Entries_in_the_mark_information_dictionary {
    method Marked {...};
    method UserProperties {...};
    method Suspects {...};
}

=begin pod

=head1 Description

Table 321 – Entries in the mark information dictionary

=head1 Methods (Entries)

=head2 Marked [boolean]
- (Optional) A flag indicating whether the document conforms to Tagged PDF conventions (see 14.8, “Tagged PDF”). Default value: false.
If Suspects is true, the document may not completely conform to Tagged PDF conventions.

=head2 UserProperties [boolean]
- (Optional; PDF 1.6) A flag indicating the presence of structure elements that contain user properties attributes (see 14.7.5.4, “User Properties”). Default value: false.

=head2 Suspects [boolean]
- (Optional; PDF 1.6) A flag indicating the presence of tag suspects (see 14.8.2.3, “Page Content Order”). Default value: false.

=end pod
