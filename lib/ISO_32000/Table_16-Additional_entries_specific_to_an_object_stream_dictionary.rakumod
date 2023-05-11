use v6;
role ISO_32000::Table_16-Additional_entries_specific_to_an_object_stream_dictionary {
    method Type {...};
    method N {...};
    method First {...};
    method Extends {...};
}

=begin pod

=head1 Description

Table 16 – Additional entries specific to an object stream dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is ObjStm for an object stream.

=head2 N [integer]
- (Required) The number of indirect objects stored in the stream.

=head2 First [integer]
- (Required) The byte offset in the decoded stream of the first compressed object.

=head2 Extends [stream]
- (Optional) A reference to another object stream, of which the current object stream is considered an extension. Both streams are considered part of a collection of object streams (see below). A given collection consists of a set of streams whose Extends links form a directed acyclic graph.

=end pod
