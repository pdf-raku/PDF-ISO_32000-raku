use v6;
role ISO_32000::Table_214-Additional_entries_specific_to_a_rendition_action {
    method S {...};
    method R {...};
    method AN {...};
    method OP {...};
    method JS {...};
}

=begin pod

=head1 Description

Table 214 – Additional entries specific to a rendition action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Rendition for a rendition action.

=head2 R [dictionary]
- (Required when OP is present with a value of 0 or 4; otherwise optional) A rendition object (see 13.2.3, “Renditions”).

=head2 AN [dictionary]
- (Required if OP is present with a value of 0, 1, 2, 3 or 4; otherwise optional) An indirect reference to a screen annotation (see 12.5.6.18, “Screen Annotations”).

=head2 OP [integer]
- (Required if JS is not present; otherwise optional) The operation to perform when the action is triggered. Valid values is:
0 If no rendition is associated with the annotation specified by AN, play the rendition specified by R, associating it with the annotation. If a rendition is already associated with the annotation, it is stopped, and the new rendition is associated with the annotation.
1 Stop any rendition being played in association with the annotation specified by AN, and remove the association. If no rendition is being played, there is no effect.
2 Pause any rendition being played in association with the annotation specified b y AN. If no rendition is being played, there is no effect.
3 Resume any rendition being played in association with the annotation specified by AN. If no rendition is being played or the rendition is not paused, there is no effect.
4 Play the rendition specified by R, associating it with the annotation specified by AN. If a rendition is already associated with the annotation, resume the rendition if it is paused; otherwise, do nothing.

=head2 JS [text string or stream]
- (Required if OP is not present; otherwise optional) A text string or stream containing a JavaScript script that is executed when the action is triggered.

=end pod
