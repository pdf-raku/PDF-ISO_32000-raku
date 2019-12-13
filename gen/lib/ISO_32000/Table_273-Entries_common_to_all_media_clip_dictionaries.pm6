use v6;
#| PDF 32000-1:2008 Table 273 – Entries common to all media clip dictionaries
role ISO_32000::Table_273-Entries_common_to_all_media_clip_dictionaries {
    method Type {...};
    method S {...};
    method N {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaClip for a media clip dictionary.

=head2 S [name]
- (Required) The subtype of media clip that this dictionary describes. May be MCD for media clip data (see 13.2.4.2, “Media Clip Data”) or MCS for a media clip section (see 13.2.4.3, “Media Clip Section”). The media clip is considered non-viable if the conforming reader does not recognize the value of this entry.

=head2 N [text string]
- (Optional) The name of the media clip, for use in the user interface.

=end pod
