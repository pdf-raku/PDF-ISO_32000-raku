use v6;
role ISO_32000::Table_258-Entries_in_a_permissions_dictionary {
    method DocMDP {...};
    method UR3 {...};
}

=begin pod

=head1 Description

Table 258 – Entries in a permissions dictionary

=head1 Methods (Entries)

=head2 DocMDP [dictionary]
- (Optional) An indirect reference to a signature dictionary (see Table 252). This dictionary contains a Reference entry that is a signature reference dictionary (see Table 252) that has a DocMDP transform method (see 12.8.2.2, “DocMDP”) and corresponding transform parameters.
If this entry is present, consumer applications shall enforce the permissions specified by the P attribute in the DocMDP transform parameters dictionary and shall also validate the corresponding signature based on whether any of these permissions have been violated.

=head2 UR3 [dictionary]
- (Optional) A signature dictionary that is used to specify and validate additional capabilities (usage rights) granted for this document; that is, the enabling of interactive features of the conforming reader that are not available by default.
For example, A conforming reader does not permit saving documents by default, but an agent may grant permissions that enable saving specific documents. The signature is used to validate that the permissions have been granted by the agent that did the signing.
The signature dictionary contains a Reference entry that is a signature reference dictionary that has a UR transform method (see 12.8.2.3, “UR”). The transform parameter dictionary for this method indicates which additional permissions is granted for the document. If the signature is valid, the conforming reader shall allow the specified permissions for the document, in addition to the application’s default permissions.

=end pod
