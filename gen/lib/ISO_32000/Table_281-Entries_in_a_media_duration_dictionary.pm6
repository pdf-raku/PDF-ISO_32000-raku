use v6;
role ISO_32000::Table_281-Entries_in_a_media_duration_dictionary {
    method Type {...};
    method S {...};
    method T {...};
}

=begin pod

=head1 Description

Table 281 – Entries in a media duration dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaDuration for a media duration dictionary.

=head2 S [name]
- (Required) The subtype of media duration dictionary. Valid values are:
IThe duration is the intrinsic duration of the associated media
FThe duration is infinity
TThe duration is specified by the T entry
The media duration dictionary is considered non-viable if the conforming reader does not recognize the value of this entry.

=head2 T [dictionary]
- (Required if the value of S is T; otherwise ignored) A timespan dictionary specifying an explicit duration (see Table 289). A negative duration is illegal.

=end pod
