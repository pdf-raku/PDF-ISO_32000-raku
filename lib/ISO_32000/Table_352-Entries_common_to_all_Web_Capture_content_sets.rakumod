use v6;
role ISO_32000::Table_352-Entries_common_to_all_Web_Capture_content_sets {
    method Type {...};
    method S {...};
    method ID {...};
    method O {...};
    method SI {...};
    method CT {...};
    method TS {...};
}

=begin pod

=head1 Description

Table 352 – Entries common to all Web Capture content sets

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SpiderContentSet for a Web Capture content set.

=head2 S [name]
- (Required) The subtype of content set that this dictionary describes. The value is one of:
SPS(“Spider page set”) A page set
SIS(“Spider image set”) An image set

=head2 ID [byte string]
- (Required) The digital identifier of the content set (see 14.10.3.3, “Digital Identifiers”).

=head2 O [array]
- (Required) An array of indirect references to the objects belonging to the content set. The order of objects in the array is restricted when the content set subtype (S entry) is SPS (see 14.10.4.2, “Page Sets”).

=head2 SI [dictionary or array]
- (Required) A source information dictionary (see 14.10.5, “Source Information”) or an array of such dictionaries, describing the sources from which the objects belonging to the content set were created.

=head2 CT [ASCII string]
- (Optional) The content type, an ASCII string characterizing the source from which the objects belonging to the content set were created. The string conforms to the content type specification described in Internet RFC 2045, Multipurpose Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies (see the Bibliography).
EXAMPLE for a page set consisting of a group of PDF pages created from an HTML file, the content type would be text / html.

=head2 TS [date]
- (Optional) A time stamp giving the date and time at which the content set was created.

=end pod
