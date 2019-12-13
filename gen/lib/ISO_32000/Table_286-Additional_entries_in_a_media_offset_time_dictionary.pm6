use v6;
role ISO_32000::Table_286-Additional_entries_in_a_media_offset_time_dictionary {
    method T {...};
}

=begin pod

=head1 Description

Table 286 – Additional entries in a media offset time dictionary

=head1 Methods (Entries)

=head2 T [dictionary]
- (Required) A timespan dictionary (see Table 289) that specifies a temporal offset into a media object. Negative timespans are not allowed in this context. The media offset time dictionary is non-viable if its timespan dictionary is non-viable.

=end pod
