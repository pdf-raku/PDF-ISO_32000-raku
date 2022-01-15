use v6;
role ISO_32000::Table_25-Entries_common_to_all_crypt_filter_dictionaries {
    method Type {...};
    method CFM {...};
    method AuthEvent {...};
    method Length {...};
}

=begin pod

=head1 Description

Table 25 – Entries common to all crypt filter dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) If present, is CryptFilter for a crypt filter dictionary.

=head2 CFM [name]
- (Optional) The method used, if any, by the conforming reader to decrypt data. The following values is supported:
NoneThe application does not decrypt data but shall direct the input stream to the security handler for decryption.
V2The application shall ask the security handler for the encryption key and shall implicitly decrypt data with "Algorithm 1: Encryption of data using the RC4 or AES algorithms", using the RC4 algorithm.
AESV2(PDF 1.6) The application shall ask the security handler for the encryption key and shall implicitly decrypt data with "Algorithm 1: Encryption of data using the RC4 or AES algorithms", using the AES algorithm in Cipher Block Chaining (CBC) mode with a 16-byte block size and an initialization vector that is randomly generated and placed as the first 16 bytes in the stream or string.
When the value is V2 or AESV2, the application may ask once for this encryption key and cache the key for subsequent use for streams that use the same crypt filter. Therefore, there is a one-to-one relationship between a crypt filter name and the corresponding encryption key.
Only the values listed here is supported. Applications that encounter other values reports that the file is encrypted with an unsupported algorithm.
Default value: None.

=head2 AuthEvent [name]
- (Optional) The event to be used to trigger the authorization that is required to access encryption keys used by this filter. If authorization fails, the event fails. Valid values is:
DocOpen: Authorization is required when a document is opened.
EFOpen:Authorization is required when accessing embedded files.
Default value: DocOpen.
If this filter is used as the value of StrF or StmF in the encryption dictionary (see Table 20), the conforming reader ignores this key and behave as if the value is DocOpen.

=head2 Length [integer]
- (Optional) The bit length of the encryption key. It is a multiple of 8 in the range of 40 to 128.
Security handlers may define their own use of the Length entry and uses it to define the bit length of the encryption key. Standard security handler expresses the length in multiples of 8 (16 means 128) and public-key security handler expresses it as is (128 means 128).

=end pod
