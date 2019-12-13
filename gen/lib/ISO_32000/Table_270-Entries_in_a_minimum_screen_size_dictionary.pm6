use v6;
#| PDF 32000-1:2008 Table 270 – Entries in a minimum screen size dictionary
role ISO_32000::Table_270-Entries_in_a_minimum_screen_size_dictionary {
    method Type {...};
    method V {...};
    method M {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MinScreenSize for a rendition object.

=head2 V [array]
- (Required) An array containing two non-negative integers. The width and height (in pixels) of the monitor specified by M is greater than or equal to the values of the first and second integers in the array, respectively, in order for this object to be viable.

=head2 M [integer]
- (Optional) A monitor specifier (see Table 293) that specifies which monitor the value of V is tested against. If the value is unrecognized, the object is not viable.
Default value: 0.

=end pod
