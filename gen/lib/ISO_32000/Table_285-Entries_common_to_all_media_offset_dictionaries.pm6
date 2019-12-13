use v6;
role ISO_32000::Table_285-Entries_common_to_all_media_offset_dictionaries {
    method Type {...};
    method S {...};
}

=begin pod

=head1 Description

Table 285 – Entries common to all media offset dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaOffset for a media offset dictionary.

=head2 S [name]
- (Required) The subtype of media offset dictionary. Valid values is:
T A media offset time dictionary (see Table 286)
F A media offset frame dictionary (see Table 287)
M A media offset marker dictionary (see Table 288)
The rendition is considered non-viable if the conforming reader does not recognize the value of this entry.

=end pod
