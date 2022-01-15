use v6;
role ISO_32000::Table_243-Entries_in_the_FDF_dictionary {
    method F {...};
    method ID {...};
    method Fields {...};
    method Status {...};
    method Pages {...};
    method Encoding {...};
    method Annots {...};
    method Differences {...};
    method Target {...};
    method EmbeddedFDFs {...};
    method JavaScript {...};
}

=begin pod

=head1 Description

Table 243 – Entries in the FDF dictionary

=head1 Methods (Entries)

=head2 F [file specification]
- (Optional) The source file or target file: the PDF document file that this FDF file was exported from or is intended to be imported into.

=head2 ID [array]
- (Optional) An array of two byte strings constituting a file identifier (see 14.4, “File Identifiers”) for the source or target file designated by F, taken from the ID entry in the file’s trailer dictionary (see 7.5.5, “File Trailer”).

=head2 Fields [array]
- (Optional) An array of FDF field dictionaries (see FDF Fieldsin 12.7.7.3, “FDF Catalog”) describing the root fields (those with no ancestors in the field hierarchy) that is exported or imported. This entry and the Pages entry does not both be present.

=head2 Status [PDFDocEncoded string]
- (Optional) A status string that is displayed indicating the result of an action, typically a submit-form action (see 12.7.5.2, “Submit-Form Action”). The string is encoded with PDFDocEncoding. This entry and the Pages entry shallnot both be present.

=head2 Pages [array]
- (Optional; PDF 1.3) An array of FDF page dictionaries (see FDF Pages in 12.7.7.3, “FDF Catalog”) describing pages that is added to a PDF target document. The Fields and Status entries is not present together with this entry.

=head2 Encoding [name]
- (Optional; PDF 1.3) The encoding that is used for any FDF field value or option (V or Opt in the field dictionary; see Table 246) or field name that is a string and does not begin with the Unicode prefix U+FEFF.
Default value: PDFDocEncoding.
Other allowed values include Shift_JIS, BigFive, GBK, UHC, utf_8, utf_16

=head2 Annots [array]
- (Optional; PDF 1.3) An array of FDF annotation dictionaries (see FDF Annotation Dictionaries in 12.7.7.3, “FDF Catalog”). The array may include annotations of any of the standard types listed in Table 169 except Link, Movie, Widget, PrinterMark, Screen, and TrapNet.

=head2 Differences [stream]
- (Optional; PDF 1.4) A stream containing all the bytes in all incremental updates made to the underlying PDF document since it was opened (see 7.5.6, “Incremental Updates”). If a submit-form action submitting the document to a remote server as FDF has its IncludeAppendSaves flag set (see 12.7.5.2, “Submit-Form Action”), the contents of this stream is included in the submission. This allows any digital signatures (see 12.8, “Digital Signatures”) to be transmitted to the server. An incremental update is automatically performed just before the submission takes place, in order to capture all changes made to the document.
The submission includes the full set of incremental updates back to the time the document was first opened, even if some of them may already have been included in intervening submissions. Although a Fields or Annots entry (or both) may be present along with Differences, there is no requirement that their contents will be consistent with each other. In particular, if Differences contains a digital signature, only the values of the form fields given in the Differences stream is considered trustworthy under that signature.

=head2 Target [string]
- (Optional; PDF 1.4) The name of a browser frame in which the underlying PDF document is opened. This mimics the behaviour of the target attribute in HTML < href > tags.

=head2 EmbeddedFDFs [array]
- (Optional; PDF 1.4) An array of file specifications (see 7.11, “File Specifications”) representing other FDF files embedded within this one (7.11.4, “Embedded File Streams”).

=head2 JavaScript [dictionary]
- (Optional; PDF 1.4) A JavaScript dictionary (see Table 245) defining document-level JavaScript scripts.

=end pod
