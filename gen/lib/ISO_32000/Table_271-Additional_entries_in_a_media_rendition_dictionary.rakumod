use v6;
role ISO_32000::Table_271-Additional_entries_in_a_media_rendition_dictionary {
    method C {...};
    method P {...};
    method SP {...};
}

=begin pod

=head1 Description

Table 271 – Additional entries in a media rendition dictionary

=head1 Methods (Entries)

=head2 C [dictionary]
- (Optional) A media clip dictionary (see 13.2.4, “Media Clip Objects”) that specifies what is played when the media rendition object is played.

=head2 P [dictionary]
- (Required if C is not present, otherwise optional) A media play parametersdictionary (see 13.2.5, “Media Play Parameters””) that specifies how the media rendition object is played.
Default value: a media play parameters dictionary whose entries (see Table 279) all contain their default values.

=head2 SP [dictionary]
- (Optional) A media screen parameters dictionary (see 13.2.6, “Media Screen Parameters”) that specifies where the media rendition object is played.
Default value: a media screen parameters dictionary whose entries (see Table 282) all contain their default values.

=end pod
