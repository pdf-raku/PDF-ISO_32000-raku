use v6;
#| PDF 32000-1:2008 Table 160 – Entries in a thread dictionary
role ISO_32000::Table_160-Entries_in_a_thread_dictionary {
    method Type {...};
    method F {...};
    method I {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Thread for a thread dictionary.

=head2 F [dictionary]
- (Required; is an indirect reference) The first bead in the thread.

=head2 I [dictionary]
- (Optional) A thread information dictionary containing information about the thread, such as its title, author, and creation date. The contents of this dictionary conforms to the syntax for the document information dictionary (see 14.3.3, “Document Information Dictionary”).

=end pod
