use v6;
role ISO_32000::Table_235-Entries_in_a_certificate_seed_value_dictionary {
    method Type {...};
    method Ff {...};
    method Subject {...};
    method SubjectDN {...};
    method KeyUsage {...};
    method Issuer {...};
    method OID {...};
    method URL {...};
    method URLType {...};
}

=begin pod

=head1 Description

Table 235 – Entries in a certificate seed value dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SVCert for a certificate seed value dictionary.

=head2 Ff [integer]
- (Optional) A set of bit flags specifying the interpretation of specific entries in this dictionary. A value of 1 for the flag means that a signer is required to use only the specified values for the entry. A value of 0 means that other values are permissible. Bit positions are 1 (Subject); 2 (Issuer); 3 (OID); 4 (SubjectDN); 5 (Reserved); 6 (KeyUsage); 7 (URL).
Default value: 0.

=head2 Subject [array]
- (Optional) An array of byte strings containing DER-encoded X.509v3 certificates that are acceptable for signing. X.509v3 certificates are described in RFC 3280, Internet X.509 Public Key Infrastructure, Certificate and Certificate Revocation List (CRL) Profile (see the Bibliography). The value of the corresponding flag in the Ff entry indicates whether this is a required constraint.

=head2 SubjectDN [array of dictionaries]
- (Optional; PDF 1.7) An array of dictionaries, each specifying a Subject Distinguished Name (DN) that is present within the certificate for it to be acceptable for signing. The certificate ultimately used for the digital signature contains all the attributes specified in each of the dictionaries in this array. (PDF keys and values are mapped to certificate attributes and values.) The certificate is not constrained to use only attribute entries from these dictionaries but may contain additional attributes.The Subject Distinguished Name is described in RFC 3280 (see the Bibliography). The key can be any legal attribute identifier (OID). Attribute names contains characters in the set a-z A-Z 0-9 and PERIOD.
Certificate attribute names are used as key names in the dictionaries in this array. Values of the attributes are used as values of the keys. Values is text strings.
The value of the corresponding flag in the Ff entry indicates whether this entry is a required constraint.

=head2 KeyUsage [array of ASCII strings]
- (Optional; PDF 1.7) An array of ASCII strings, where each string specifies an acceptable key-usage extension that is present in the signing certificate. Multiple strings specify a range of acceptable key- usage extensions. The key-usage extension is described in RFC 3280.
Each character in a string represents a key-usage type, where the order of the characters indicates the key-usage extension it represents. The first through ninth characters in the string, from left to right, represent the required value for the following key-usage extensions:
1 digitalSignature 4 dataEncipherment 7 cRLSign
2 non-Repudiation 5 keyAgreement 8 encipherOnly
3 keyEncipherment 6 keyCertSign 9 decipherOnly
Any additional characters is ignored. Any missing characters or characters that are not one of the following values, is treated as ‘X’. The following character values is supported:
0 Corresponding key-usage is not set.
1 Corresponding key-usage is set.
X State of the corresponding key-usage does not matter.
EXAMPLE 1 The string values ‘1’ and ‘1XXXXXXXX’ represent settings where the key-usage type digitalSignature is set and the state of all other key-usage types do not matter. The value of the corresponding flag in the Ff entry indicates whether this is a required constraint.

=head2 Issuer [array]
- (Optional) An array of byte strings containing DER-encoded X.509v3 certificates of acceptable issuers. If the signer’s certificate refers to any of the specified issuers (either directly or indirectly), the certificate is considered acceptable for signing. The value of the corresponding flag in the Ff entry indicates whether this is a required constraint.
This array may contain self-signed certificates.

=head2 OID [array]
- (Optional) An array of byte strings that contain Object Identifiers (OIDs) of the certificate policies that is present in the signing certificate.
EXAMPLE 2 An example of such a string is: (2.16.840.1.113733.1.7.1.1). This field is only be used if the value of Issuer is not empty. The certificate policies extension is described in RFC 3280 (see the Bibliography). The value of the corresponding flag in the Ff entry indicates whether this is a required constraint.

=head2 URL [ASCII string]
- (Optional) A URL, the use for which is defined by the URLType entry.

=head2 URLType [Name]
- (Optional; PDF 1.7) A name indicating the usage of the URL entry. There are standard uses and there can be implementation-specific uses for this URL. The following value specifies a valid standard usage:
Browser – The URL references content that is displayed in a web browser to allow enrolling for a new credential if a matching credential is not found. The Ff attribute’s URL bit is ignored for this usage.
Third parties may extend the use of this attribute with their own attribute values, which conforms to the guidelines described in Annex E.
The default value is Browser.

=end pod
