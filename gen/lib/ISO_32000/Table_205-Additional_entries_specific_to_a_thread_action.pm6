use v6;
role ISO_32000::Table_205-Additional_entries_specific_to_a_thread_action {
    method S {...};
    method F {...};
    method D {...};
    method B {...};
}

=begin pod

=head1 Description

Table 205 – Additional entries specific to a thread action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Thread for a thread action.

=head2 F [file specification]
- (Optional) The file containing the thread. If this entry is absent, the thread is in the current file.

=head2 D [dictionary, integer, or text string]
- (Required) The destination thread, specified in one of the following forms:
An indirect reference to a thread dictionary (see 12.4.3, “Articles”). In this case, the thread is in the current file.
The index of the thread within the Threads array of its document’s Catalog (see 7.7.2, “Document Catalog”). The first thread in the array has index 0.
The title of the thread as specified in its thread information dictionary (see Table 160). If two or more threads have the same title, the one appearing first in the document Catalog’s Threads array shall beused.

=head2 B [dictionary or integer]
- (Optional) The bead in the destination thread, specified in one of the following forms:
An indirect reference to a bead dictionary (see 12.4.3, “Articles”). In this case, the thread is in the current file.
The index of the bead within its thread. The first bead in a thread has index 0.

=end pod
