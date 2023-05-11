use v6;
role ISO_32000::Table_27-Additional_crypt_filter_dictionary_entries_for_public-key_security_handlers {
    method Recipients {...};
    method EncryptMetadata {...};
}

=begin pod

=head1 Description

Table 27 – Additional crypt filter dictionary entries for public-key security handlers

=head1 Methods (Entries)

=head2 Recipients [array or string]
- (Required) If the crypt filter is referenced from StmF or StrF in the encryption dictionary, this entry is an array of byte strings, where each string is a binary-encoded PKCS7 object that lists recipients that have been granted equal access rights to the document. The enveloped data contained in the PKCS7 object includes both a 20-byte seed value that is used to compute the encryption key (see 7.6.4.3, "Public-Key Encryption Algorithms") followed by 4 bytes of permissions settings (see Table 22) that applies to the recipient list. There is only one object per unique set of access permissions. If a recipient appears in more than one list, the permissions used is those in the first matching list.
If the crypt filter is referenced from a Crypt filter decode parameter dictionary (see Table 14), this entry is a string that is a binary-encoded PKCS7 object contains a list of all recipients who are permitted to access the corresponding encrypted stream. The enveloped data contained in the PKCS7 object is a 20-byte seed value that is used to create the encryption key that is used by the algorithm in "Algorithm 1: Encryption of data using the RC4 or AES algorithms".

=head2 EncryptMetadata [boolean]
- (Optional; used only by crypt filters that are referenced from StmF in an encryption dictionary) Indicates whether the document-level metadata stream (see 14.3.2, "Metadata Streams") is encrypted. Conforming readers respect this value when determining whether metadata is encrypted. The value of the EncryptMetadata entry is set by the security handler rather than the conforming reader.
Default value: true.

=end pod
