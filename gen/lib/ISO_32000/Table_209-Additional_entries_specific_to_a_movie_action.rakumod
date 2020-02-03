use v6;
role ISO_32000::Table_209-Additional_entries_specific_to_a_movie_action {
    method S {...};
    method Annotation {...};
    method T {...};
    method Operation {...};
}

=begin pod

=head1 Description

Table 209 – Additional entries specific to a movie action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Moviefor a movie action.

=head2 Annotation [dictionary]
- (Optional) An indirect reference to a movie annotation identifying the movie that is played.

=head2 T [text string]
- (Optional) The title of a movie annotation identifying the movie that shall beplayed.
The dictionary includes either an Annotation or a T entry but not both.

=head2 Operation [name]
- (Optional) The operation that is performed on the movie:
PlayStart playing the movie, using the play mode specified by the dictionary’s Mode entry (see Table 296). If the movie is currently paused, it is repositioned to the beginning before playing (or to the starting point specified by the dictionary’s Start entry, if present).
Stop Stop playing the movie.
Pause Pause a playing movie.
Resume Resume a paused movie.
Default value: Play.

=end pod
