use v6;
role ISO_32000::Table_234-Entries_in_a_signature_field_seed_value_dictionary {
    method Type {...};
    method Ff {...};
    method Filter {...};
    method SubFilter {...};
    method DigestMethod {...};
    method V {...};
    method Cert {...};
    method Reasons {...};
    method MDP {...};
    method TimeStamp {...};
    method LegalAttestation {...};
    method AddRevInfo {...};
}

=begin pod

=head1 Description

Table 234 – Entries in a signature field seed value dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SV for a seed value dictionary.

=head2 Ff [integer]
- (Optional) A set of bit flags specifying the interpretation of specific entries in this dictionary. A value of 1 for the flag indicates that the associated entry is a required constraint. A value of 0 indicates that the associated entry is an optional constraint. Bit positions are 1 (Filter); 2 (SubFilter); 3 (V); 4 (Reasons); 5 (LegalAttestation); 6 (AddRevInfo); and 7 (DigestMethod). Default value: 0.

=head2 Filter [name]
- (Optional) The signature handler that is used to sign the signature field. Beginning with PDF 1.7, if Filter is specified and the Ff entry indicates this entry is a required constraint, then the signature handler specified by this entry is used when signing; otherwise, signing does not take place. If Ff indicates that this is an optional constraint, this handler may be used if it is available. If it is not available, a different handler may be used instead.

=head2 SubFilter [array]
- (Optional) An array of names indicating encodings to use when signing. The first name in the array that matches an encoding supported by the signature handler is the encoding that is actually used for signing. If SubFilter is specified and the Ff entry indicates that this entry is a required constraint, then the first matching encodings is used when signing; otherwise, signing does not take place. If Ff indicates that this is an optional constraint, then the first matching encoding is used if it is available. If none is available, a different encoding may be used.

=head2 DigestMethod [array]
- (Optional; PDF 1.7) An array of names indicating acceptable digest algorithms to use while signing. The value is one of SHA1, SHA256, SHA384, SHA512 and RIPEMD160. The default value is implementation-specific.
This property is only applicable if the digital credential signing contains RSA public/private keys. If it contains DSA public/ private keys, the digest algorithm is always SHA1 and this attribute is ignored.

=head2 V [real]
- (Optional) The minimum required capability of the signature field seed value dictionary parser. A value of 1 specifies that the parser is able to recognize all seed value dictionary entries in a PDF 1.5 file. A value of 2 specifies that it is able to recognize all seed value dictionary entries specified.
The Ff entry indicates whether this is treated as a required constraint.

=head2 Cert [dictionary]
- (Optional) A certificate seed value dictionary (see Table 235) containing information about the characteristics of the certificate that is used when signing.

=head2 Reasons [array]
- (Optional) An array of text strings that specifying possible reasons for signing a document. If specified, the reasons supplied in this entry replace those used by conforming products.
If the Reasons array is provided and the Ff entry indicates that Reasons is a required constraint, one of the reasons in the array is used for the signature dictionary; otherwise, signing does not take place. If the Ff entry indicates Reasons is an optional constraint, one of the reasons in the array may be chosen or a custom reason can be provided.
If the Reasons array is omitted or contains a single entry with the value PERIOD (2Eh) and the Ff entry indicates that Reasons is a required constraint, the Reason entry is omitted from the signature dictionary (see Table 252).

=head2 MDP [dictionary]
- (Optional; PDF 1.6) A dictionary containing a single entry whose key is P and whose value is an integer between 0 and 3. A value of 0 defines the signature as an author signature (see 12.8, “Digital Signatures”). The values 1 through 3 is used for certification signatures and correspond to the value of P in a DocMDP transform parameters dictionary (see Table 254).
If this MDP key is not present or the MDP dictionary does not contain a P entry, no rules is defined regarding the type of signature or its permissions.

=head2 TimeStamp [dictionary]
- (Optional; PDF 1.6) A time stamp dictionary containing two entries:
URL An ASCII string specifying the URL of a time-stamping server, providing a time stamp that is compliant with RFC 3161, Internet X.509 Public Key Infrastructure Time-Stamp Protocol (see the Bibliography).
Ff An integer whose value is 1 (the signature has a time stamp) or 0 (the signature need not have a time stamp). Default value: 0.
NOTE Please see 12.8.3.3, "PKCS7 Signatures as used in ISO 32000" for more details about hashing.

=head2 LegalAttestation [array]
- (Optional; PDF 1.6) An array of text strings specifying possible legal attestations (see 12.8.5, “Legal Content Attestations”). The value of the corresponding flag in the Ff entry indicates whether this is a required constraint.

=head2 AddRevInfo [boolean]
- (Optional; PDF 1.7) A flag indicating whether revocation checking is carried out. If AddRevInfo is true, the conforming processor performs the following additional tasks when signing the signature field:
Perform revocation checking of the certificate (and the corresponding issuing certificates) used to sign.
Include the revocation information within the signature value.
Three SubFilter values have been defined for ISO 32000. For those values the AddRevInfo value is true only if SubFilter is adbe.pkcs7.detached or adbe.pkcs7.sha1. If SubFilter is x509.rsa_sha1, this entry is omitted or set to false. Additional SubFilters may be defined that also use AddRevInfo values.
If AddRevInfo is true and the Ff entry indicates this is a required constraint, then the preceding tasks is performed. If they cannot be performed, then signing fails.
Default value: false
NOTE 1 Revocation information is carried in the signature data as specified by PCKS7. See 12.8.3.3, "PKCS7 Signatures as used in ISO 32000".
NOTE 2 The trust anchors used are determined by the signature handlers for both creation and validation.

=end pod
