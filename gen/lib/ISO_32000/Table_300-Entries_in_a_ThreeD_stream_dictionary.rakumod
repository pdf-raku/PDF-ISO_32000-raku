use v6;
role ISO_32000::Table_300-Entries_in_a_ThreeD_stream_dictionary {
    method Type {...};
    method Subtype {...};
    method VA {...};
    method DV {...};
    method Resources {...};
    method OnInstantiate {...};
    method AN {...};
}

=begin pod

=head1 Description

Table 300 – Entries in a 3D stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3D for a 3D stream.

=head2 Subtype [name]
- (Required) A name specifying the format of the 3D data contained in the stream. The only valid value is U3D.

=head2 VA [array]
- (Optional) An array of 3D view dictionaries, each of which specifies a named preset view of this 3D artwork (see Section 13.6.4, “3D Views”).

=head2 DV [(various)]
- (Optional) An object that specifies the default (initial) view of the 3D artwork. It may be a 3D view dictionary (see Section 13.6.4, “3D Views”) or one of the following types:
• An integer specifying an index into the VA array.
• A text string matching the IN entry in one of the views in the VAarray.
• A name that indicates the first (F) or last (L) entries in the VAarray. Default value: 0 (the first entry in the VA array) if VA is present; if VA is not present, the default view is specified within the 3D stream itself.

=head2 Resources [name tree]
- (Optional) A name tree that maps name strings to objects that may be used by applications or scripts to modify the default view of the 3D artwork.
The names in this name tree is text strings so as to be encoded in a way that will be accessible from JavaScript.

=head2 OnInstantiate [stream]
- (Optional) A JavaScript script that is executed when the 3D stream is instantiated.

=head2 AN [dictionary]
- (Optional; PDF 1.7) An animation style dictionary indicating the method that conforming readers uses to drive keyframe animations present in this artwork (see 13.6.3.2, "3D Animation Style Dictionaries").
Default value: an animation style dictionary whose Subtype entry has a value of None.

=end pod
