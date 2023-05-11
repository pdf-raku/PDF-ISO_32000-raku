use v6;
role ISO_32000::Table_274-Additional_entries_in_a_media_clip_data_dictionary {
    method D {...};
    method CT {...};
    method P {...};
    method Alt {...};
    method PL {...};
    method MH {...};
    method BE {...};
}

=begin pod

=head1 Description

Table 274 – Additional entries in a media clip data dictionary

=head1 Methods (Entries)

=head2 D [file specification or stream]
- (Required) A full file specification or form XObject that specifies the actual media data.

=head2 CT [ASCII string]
- (Optional; not allowed for form XObjects) An ASCII string identifying the type of data in D. The string conforms to the content type specification described in Internet RFC 2045, Multipurpose Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies (see the Bibliography).

=head2 P [dictionary]
- (Optional) A media permissions dictionary (see Table 275) containing permissions that control the use of the media data. Default value: a media permissions dictionary containing default values.

=head2 Alt [array]
- (Optional) An array that provides alternate text descriptions for the media clip data in case it cannot be played; see 14.9.2.4, “Multi-language Text Arrays.”

=head2 PL [dictionary]
- (Optional) A media players dictionary (see 13.2.7.2, “Media Players Dictionary”) that identifies, among other things, players that are legal and not legal for playing the media.
If the media players dictionary is non-viable, the media clip data is non-viable.

=head2 MH [dictionary]
- (Optional) A dictionary whose entries (see Table 276) is honoured for the media clip data to be considered viable.

=head2 BE [dictionary]
- (Optional) A dictionary whose entries (see Table 276) is only be honoured in a “best effort” sense.

=end pod
