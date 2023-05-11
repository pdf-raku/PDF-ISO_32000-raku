use v6;
role ISO_32000::Table_296-Entries_in_a_movie_activation_dictionary {
    method Start {...};
    method Duration {...};
    method Rate {...};
    method Volume {...};
    method ShowControls {...};
    method Mode {...};
    method Synchronous {...};
    method FWScale {...};
    method FWPosition {...};
}

=begin pod

=head1 Description

Table 296 – Entries in a movie activation dictionary

=head1 Methods (Entries)

=head2 Start [(various)]
- (Optional) The starting time of the movie segment to be played. Movie time values is expressed in units of time based on a time scale, which defines the number of units per second. The default time scale is defined in the movie data. The starting time is nominally a non-negative 64-bit integer, specified as follows:
• If it is representable as an integer (subject to the implementation limit for integers, as described in Annex C), it is specified as such.
• If it is not representable as an integer, it is specified as an 8-byte string representing a 64-bit twos-complement integer, most significant byte first.
• If it is expressed in a time scale different from that of the movie itself, it is represented as an array of two values: an integer or byte string denoting the starting time, followed by an integer specifying the time scale in units per second. If this entry is omitted, the movie is played from the beginning.

=head2 Duration [(various)]
- (Optional) The duration of the movie segment to be played, that is specified in the same form as Start. If this entry is omitted, the movie is played to the end.

=head2 Rate [number]
- (Optional) The initial speed at which to play the movie. If the value of this entry is negative, the movie is played backward with respect to Start and Duration. Default value: 1.0.

=head2 Volume [number]
- (Optional) The initial sound volume at which to play the movie, in the range −1.0 to 1.0. Higher values denote greater volume; negative values shall mute the sound. Default value: 1.0.

=head2 ShowControls [boolean]
- (Optional) A flag specifying whether to display a movie controller bar while playing the movie. Default value: false.

=head2 Mode [name]
- (Optional) The play mode for playing the movie:
Once Play once and stop.
Open Play and leave the movie controller bar open.
Repeat Play repeatedly from beginning to end until stopped.
Palindrome Play continuously forward and backward until stopped.
Default value: Once.

=head2 Synchronous [boolean]
- (Optional) A flag specifying whether to play the movie synchronously or asynchronously. If this value is true, the movie player shall retain control until the movie is completed or dismissed by the user. If the value is false, the player shall return control to the conforming reader immediately after starting the movie. Default value: false.

=head2 FWScale [array]
- (Optional) The magnification (zoom) factor at which the movie is played. The presence of this entry implies that the movie is played in a floating window. If the entry is absent, the movie is played in the annotation rectangle.
The value of the entry is an array of two positive integers, [ numerator denominator ], denoting a rational magnification factor for the movie. The final window size, in pixels, is
(numerator ÷ denominator) × Aspect
where the value of Aspect is taken from the movie dictionary (see Table 295).

=head2 FWPosition [array]
- (Optional) For floating play windows, the relative position of the window on the screen. The value is an array of two numbers
[ horiz vert ]
each in the range 0.0 to 1.0, denoting the relative horizontal and vertical position of the movie window with respect to the screen.
EXAMPLE The value [ 0.5 0.5 ] centers the window on the screen. Default value: [ 0.5 0.5 ].

=end pod
