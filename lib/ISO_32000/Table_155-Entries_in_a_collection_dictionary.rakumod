use v6;
role ISO_32000::Table_155-Entries_in_a_collection_dictionary {
    method Type {...};
    method Schema {...};
    method D {...};
    method View {...};
    method Sort {...};
}

=begin pod

=head1 Description

Table 155 – Entries in a collection dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Collection for a collection dictionary.

=head2 Schema [dictionary]
- (Optional) A collection schema dictionary (see Table 156). If absent, the conforming reader may choose useful defaults that are known to exist in a file specification dictionary, such as the file name, file size, and modified date.

=head2 D [byte string]
- (Optional) A string that identifies an entry in the EmbeddedFiles name tree, determining the document that is initially presented in the user interface. If the D entry is missing or in error, the initial document is the one that contains the collection dictionary.

=head2 View [name]
- (Optional) The initial view. The following values are valid:
D The collection view is presented in details mode, with all information in the Schema dictionary presented in a multi-column format. This mode provides the most information to the user.
T The collection view is presented in tile mode, with each file in the collection denoted by a small icon and a subset of information from the Schema dictionary. This mode provides top-level information about the file attachments to the user.
H The collection view is initially hidden, The conforming reader provides means for the user to view the collection by some explicit action.
Default value: D

=head2 Sort [dictionary]
- (Optional) A collection sort dictionary, which specifies the order in which items in the collection is sorted in the user interface (see Table 158).

=end pod
