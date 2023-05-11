use v6;
role ISO_32000::Table_186-Additional_entries_specific_to_a_movie_annotation {
    method Subtype {...};
    method T {...};
    method Movie {...};
    method A {...};
}

=begin pod

=head1 Description

Table 186 – Additional entries specific to a movie annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Movie for a movie annotation.

=head2 T [text string]
- (Optional) The title of the movie annotation. Movie actions (12.6.4.9, “Movie Actions”) may use this title to reference the movie annotation.

=head2 Movie [dictionary]
- (Required) A movie dictionary that describes the movie’s static characteristics (see 13.4, “Movies”).

=head2 A [boolean or dictionary]
- (Optional) A flag or dictionary specifying whether and how to play the movie when the annotation is activated. If this value is a dictionary, it is a movie activation dictionary (see 13.4, “Movies”) specifying how to play the movie. If the value is the boolean true, the movie is played using default activation parameters. If the value is false, the movie is not played. Default value: true.

=end pod
