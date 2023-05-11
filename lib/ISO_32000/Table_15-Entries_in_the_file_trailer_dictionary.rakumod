use v6;
role ISO_32000::Table_15-Entries_in_the_file_trailer_dictionary {
    method Size {...};
    method Prev {...};
    method Root {...};
    method Encrypt {...};
    method Info {...};
    method ID {...};
}

=begin pod

=head1 Description

Table 15 – Entries in the file trailer dictionary

=head1 Methods (Entries)

=head2 Size [integer]
- (Required; is not an indirect reference) The total number of entries in the file’s cross-reference table, as defined by the combination of the original section and all update sections. Equivalently, this value is 1 greater than the highest object number defined in the file.
Any object in a cross-reference section whose number is greater than this value is ignored and defined to be missing by a conforming reader.

=head2 Prev [integer]
- (Present only if the file has more than one cross-reference section; is an indirect reference) The byte offset in the decoded stream from the beginning of the file to the beginning of the previous cross-reference section.

=head2 Root [dictionary]
- (Required; is an indirect reference) The catalog dictionary for the PDF document contained in the file (see 7.7.2, "Document Catalog").

=head2 Encrypt [dictionary]
- (Required if document is encrypted; PDF 1.1) The document’s encryption dictionary (see 7.6, "Encryption").

=head2 Info [dictionary]
- (Optional; is an indirect reference) The document’s information dictionary (see 14.3.3, "Document Information Dictionary").

=head2 ID [array]
- (Required if an Encrypt entry is present; optional otherwise; PDF 1.1) An array of two byte-strings constituting a file identifier (see 14.4, "File Identifiers") for the file. If there is an Encrypt entry this array and the two byte-strings is direct objects and is unencrypted.
NOTE 1 Because the ID entries are not encrypted it is possible to check the ID key to assure that the correct file is being accessed without decrypting the file. The restrictions that the string be a direct object and not be encrypted assure that this is possible.
NOTE 2 Although this entry is optional, its absence might prevent the file from functioning in some workflows that depend on files being uniquely identified.
NOTE 3 The values of the ID strings are used as input to the encryption algorithm. If these strings were indirect, or if the ID array were indirect, these strings would be encrypted when written. This would result in a circular condition for a reader: the ID strings must be decrypted in order to use them to decrypt strings, including the ID strings themselves. The preceding restriction prevents this circular condition.

=end pod
