use v6;
role ISO_32000::Table_290-Entries_in_a_media_players_dictionary {
    method Type {...};
    method MU {...};
    method A {...};
    method NU {...};
}

=begin pod

=head1 Description

Table 290 – Entries in a media players dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaPlayers for a media players dictionary.

=head2 MU [array]
- (Optional) An array of media player info dictionaries (see Table 291) that specifies a set of players, one of which is used in playing the associated media object.
Any players specified in NU are effectively removed from MU.
EXAMPLE If MU specifies versions 1 through 5 of a player and NU specifies versions 1 and 2 of the same player, MU is effectively versions 3 through 5.

=head2 A [array]
- (Optional) An array of media player info dictionaries (see Table 291) that specifies a set of players, any of which may be used in playing the associated media object. If MU is also present and non-empty, A is ignored.

=head2 NU [array]
- (Optional) An array of media player info dictionaries (see Table 291) that specifies a set of players that is not used in playing the associated media object (even if they are also specified in MU).

=end pod
