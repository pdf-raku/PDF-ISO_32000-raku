use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Thread ../../resources/ISO_32000/Thread_entries.json

#| PDF 32000-1:2008 Table 160 – Entries in a thread dictionary
role ISO_32000::Thread {
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
- (Optional) A thread information dictionary containing information about the thread, such as its title, author, and creation date. The contents of this dictionary shall conform to the syntax for the document information dictionary (see 14.3.3, “Document Information Dictionary”).

=end pod
