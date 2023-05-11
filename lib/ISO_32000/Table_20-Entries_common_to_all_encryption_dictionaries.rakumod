use v6;
role ISO_32000::Table_20-Entries_common_to_all_encryption_dictionaries {
    method Filter {...};
    method SubFilter {...};
    method V {...};
    method Length {...};
    method CF {...};
    method StmF {...};
    method StrF {...};
    method EFF {...};
}

=begin pod

=head1 Description

Table 20 – Entries common to all encryption dictionaries

=head1 Methods (Entries)

=head2 Filter [name]
- (Required) The name of the preferred security handler for this document. It is the name of the security handler that was used to encrypt the document. If SubFilter is not present, only this security handler is used when opening the document. If it is present, a conforming reader can use any security handler that implements the format specified by SubFilter.
Standard is the name of the built-in password-based security handler. Names for other security handlers may be registered by using the procedure described in Annex E.

=head2 SubFilter [name]
- (Optional; PDF 1.3) A name that completely specifies the format and interpretation of the contents of the encryption dictionary. It allows security handlers other than the one specified by Filter to decrypt the document. If this entry is absent, other security handlers does not decrypt the document.
NOTE This entry was introduced in PDF 1.3 to support the use of public- key cryptography in PDF files (see 7.6.4, "Public-Key Security Handlers"); however, it was not incorporated into the PDF Reference until the fourth edition (PDF 1.5).

=head2 V [number]
- (Optional) A code specifying the algorithm to be used in encrypting and decrypting the document:
0 An algorithm that is undocumented. This value is not used.
1"Algorithm 1: Encryption of data using the RC4 or AES algorithms" in 7.6.2, "General Encryption Algorithm," with an encryption key length of 40 bits; see below.
2(PDF 1.4) "Algorithm 1: Encryption of data using the RC4 or AES algorithms" in 7.6.2, "General Encryption Algorithm," but permitting encryption key lengths greater than 40 bits.
3(PDF 1.4) An unpublished algorithm that permits encryption key lengths ranging from 40 to 128 bits. This value does not appear in a conforming PDF file.
4(PDF 1.5) The security handler defines the use of encryption and decryption in the document, using the rules specified by the CF, StmF, and StrF entries.
The default value if this entry is omitted is 0, but when present is a value of 1 or greater.

=head2 Length [integer]
- (Optional; PDF 1.4; only if V is 2 or 3) The length of the encryption key, in bits. The value is a multiple of 8, in the range 40 to 128. Default value: 40.

=head2 CF [dictionary]
- (Optional; meaningful only when the value of V is 4; PDF 1.5) A dictionary whose keys is crypt filter names and whose values is the corresponding crypt filter dictionaries (see Table 25). Every crypt filter used in the document has an entry in this dictionary, except for the standard crypt filter names (see Table 26).
The conforming reader ignores entries in CF dictionary with the keys equal to those listed in Table 26 and use properties of the respective standard crypt filters.

=head2 StmF [name]
- (Optional; meaningful only when the value of V is 4; PDF 1.5) The name of the crypt filter that is used by default when decrypting streams. The name is a key in the CF dictionary or a standard crypt filter name specified in Table 26. All streams in the document, except for cross-reference streams (see 7.5.8, "Cross-Reference Streams") or streams that have a Crypt entry in their Filter array (see Table 6), is decrypted by the security handler, using this crypt filter.
Default value: Identity.

=head2 StrF [name]
- (Optional; meaningful only when the value of V is 4; PDF 1.5) The name of the crypt filter that is used when decrypting all strings in the document. The name is a key in the CF dictionary or a standard crypt filter name specified in Table 26.
Default value: Identity.

=head2 EFF [name]
- (Optional; meaningful only when the value of V is 4; PDF 1.6) The name of the crypt filter that is used when encrypting embedded file streams that do not have their own crypt filter specifier; it corresponds to a key in the CF dictionary or a standard crypt filter name specified in Table 26.
This entry is provided by the security handler. Conforming writers respect this value when encrypting embedded files, except for embedded file streams that have their own crypt filter specifier. If this entry is not present, and the embedded file stream does not contain a crypt filter specifier, the stream is encrypted using the default stream crypt filter specified by StmF.

=end pod
