use v6;
role ISO_32000::Table_297-Entries_in_a_slideshow_dictionary {
    method Type {...};
    method Subtype {...};
    method Resources {...};
    method StartResource {...};
}

=begin pod

=head1 Description

Table 297 – Entries in a slideshow dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required; PDF 1.4) The type of PDF object that this dictionary describes; is SlideShow for a slideshow dictionary.

=head2 Subtype [name]
- (Required; PDF 1.4) The subtype of the PDF object that this dictionary describes; is Embedded for a slideshow dictionary.

=head2 Resources [name tree]
- (Required; PDF 1.4) A name tree that maps name strings to objects referenced by the alternate presentation.
NOTE Even though PDF treats the strings in the name tree as strings without a specified encoding, the slideshow interprets them as UTF-8 encoded Unicode.

=head2 StartResource [byte string]
- (Required; PDF 1.4) A byte string that matches one of the strings in the Resources entry. It defines the root object for the slideshow presentation.

=end pod
