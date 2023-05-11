use v6;
role ISO_32000::Table_31-Entries_in_the_name_dictionary {
    method Dests {...};
    method AP {...};
    method JavaScript {...};
    method Pages {...};
    method Templates {...};
    method IDS {...};
    method URLS {...};
    method EmbeddedFiles {...};
    method AlternatePresentations {...};
    method Renditions {...};
}

=begin pod

=head1 Description

Table 31 – Entries in the name dictionary

=head1 Methods (Entries)

=head2 Dests [name tree]
- (Optional; PDF 1.2) A name tree mapping name strings to destinations (see 12.3.2.3, "Named Destinations").

=head2 AP [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to annotation appearance streams (see 12.5.5, "Appearance Streams").

=head2 JavaScript [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to document-level JavaScript actions (see 12.6.4.16, "JavaScript Actions").

=head2 Pages [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to visible pages for use in interactive forms (see 12.7.6, "Named Pages").

=head2 Templates [name tree]
- (Optional; PDF 1.3) A name tree mapping name strings to invisible (template) pages for use in interactive forms (see 12.7.6, "Named Pages").

=head2 IDS [name tree]
- (Optional; PDF 1.3) A name tree mapping digital identifiers to Web Capture content sets (see 14.10.4, "Content Sets").

=head2 URLS [name tree]
- (Optional; PDF 1.3) A name tree mapping uniform resource locators (URLs) to Web Capture content sets (see 14.10.4, "Content Sets").

=head2 EmbeddedFiles [name tree]
- (Optional; PDF 1.4) A name tree mapping name strings to file specifications for embedded file streams (see 7.11.4, "Embedded File Streams").

=head2 AlternatePresentations [name tree]
- (Optional; PDF 1.4) A name tree mapping name strings to alternate presentations (see 13.5, "Alternate Presentations").

=head2 Renditions [name tree]
- (Optional; PDF 1.5) A name tree mapping name strings (which has Unicode encoding) to rendition objects (see 13.2.3, "Renditions").

=end pod
