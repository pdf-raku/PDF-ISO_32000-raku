use v6;
role ISO_32000::Table_317-Entries_in_the_document_information_dictionary {
    method Title {...};
    method Author {...};
    method Subject {...};
    method Keywords {...};
    method Creator {...};
    method Producer {...};
    method CreationDate {...};
    method ModDate {...};
    method Trapped {...};
}

=begin pod

=head1 Description

Table 317 – Entries in the document information dictionary

=head1 Methods (Entries)

=head2 Title [text string]
- (Optional; PDF 1.1) The document’s title.

=head2 Author [text string]
- (Optional) The name of the person who created the document.

=head2 Subject [text string]
- (Optional; PDF 1.1) The subject of the document.

=head2 Keywords [text string]
- (Optional; PDF 1.1) Keywords associated with the document.

=head2 Creator [text string]
- (Optional) If the document was converted to PDF from another format, the name of the conforming product that created the original document from which it was converted.

=head2 Producer [text string]
- (Optional) If the document was converted to PDF from another format, the name of the conforming product that converted it to PDF.

=head2 CreationDate [date]
- (Optional) The date and time the document was created, in human- readable form (see 7.9.4, “Dates”).

=head2 ModDate [date]
- (Required if PieceInfo is present in the document catalogue; otherwise optional; PDF 1.1) The date and time the document was most recently modified, in human-readable form (see 7.9.4, “Dates”).

=head2 Trapped [name]
- (Optional; PDF 1.3) A name object indicating whether the document has been modified to include trapping information (see 14.11.6, “Trapping Support”):
TrueThe document has been fully trapped; no further trapping is needed. This is the name True, not the boolean value true.
FalseThe document has not yet been trapped. This is the name False, not the boolean value false.
UnknownEither it is unknown whether the document has been trapped or it has been partly but not yet fully trapped; some additional trapping may still be needed.
Default value: Unknown.
NOTE The value of this entry may be set automatically by the software creating the document’s trapping information, or it may be known only to a human operator and entered manually.

=end pod
