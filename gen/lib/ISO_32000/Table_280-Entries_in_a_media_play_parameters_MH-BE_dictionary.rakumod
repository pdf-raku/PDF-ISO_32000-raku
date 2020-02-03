use v6;
role ISO_32000::Table_280-Entries_in_a_media_play_parameters_MH-BE_dictionary {
    method V {...};
    method C {...};
    method F {...};
    method D {...};
    method A {...};
    method RC {...};
}

=begin pod

=head1 Description

Table 280 – Entries in a media play parameters MH/BE dictionary

=head1 Methods (Entries)

=head2 V [integer]
- (Optional) An integer that specifies the desired volume level as a percentage of recorded volume level. A zero value is equivalent to mute; negative values is illegal. Default value: 100.

=head2 C [boolean]
- (Optional) A flag specifying whether to display a player-specific controller user interface when playing.
EXAMPLE play/pause/stop controls. Default value: false

=head2 F [integer‘]
- (Optional) The manner in which the player shall treat a visual media type that does not exactly fit the rectangle in which it plays.
0The media’s width and height is scaled while preserving the aspect ratio so that the media and play rectangles have the greatest possible intersection while still displaying all media content.
NOTE 1 Same as “meet” value of SMIL’s fit attribute. 1 The media’s width and height is scaled while preserving the aspect ratio so that the play rectangle is entirely filled, and the amount of media content that does not fit within the play rectangle is minimized.
NOTE 2 Same as “slice” value of SMIL’s fit attribute. 2 The media’s width and height is scaled independently so that the media and play rectangles are the same; the aspect ratio is not preserved.
NOTE 3 Same as “fill” value of SMIL’s fit attribute. 3 The media is not scaled. A scrolling user interface is provided if the media rectangle is wider or taller than the play rectangle.
NOTE 4 Same as “scroll” value of SMIL’s fit attribute. 4 The media is not scaled. Only the portions of the media rectangle that intersect the play rectangle is displayed.
NOTE 5 Same as “hidden” value of SMIL’s fit attribute. 5 Use the player’s default setting (author has no preference). Default value: 5. An unrecognized value is treated as the default value if the entry is in a BE dictionary. If the entry is in an MH dictionary and it has an unrecognized value, the object is considered non-viable.

=head2 D [dictionary]
- (Optional) A media duration dictionary (see Table 281). Default value: a dictionary specifying the intrinsic duration (see RC).

=head2 A [boolean]
- (Optional) If true, the media shall automatically play when activated. If false, the media is initially paused when activated.
EXAMPLE The first frame is displayed. Relevant only for media that may be paused. Default value: true.

=head2 RC [number]
- (Optional) Specifies the number of iterations of the duration D to repeat.
NOTE 6 Similar to SMIL’s repeatCount attribute. Zero means repeat forever. Negative values is illegal; non-integral values is legal. Default value: 1.0.

=end pod
