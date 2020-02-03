use v6;
role ISO_32000::Table_291-Entries_in_a_media_player_info_dictionary {
    method Type {...};
    method PID {...};
    method MH {...};
    method BE {...};
}

=begin pod

=head1 Description

Table 291 – Entries in a media player info dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaPlayerInfo for a media player info dictionary.

=head2 PID [dictionary]
- (Required) A software identifier dictionary (see 13.2.7.4, “Software Identifier Dictionary”) that specifies the player name, versions, and operating systems to which this media player info dictionary applies.

=head2 MH [dictionary]
- (Optional) A dictionary containing entries that is honored for this dictionary to be considered viable
Currently, there are no defined entries for this dictionary

=head2 BE [dictionary]
- (Optional) A dictionary containing entries that need only be honored in a “best effort” sense.
Currently, there are no defined entries for this dictionary

=end pod
