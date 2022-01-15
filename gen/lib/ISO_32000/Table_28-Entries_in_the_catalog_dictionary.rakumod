use v6;
role ISO_32000::Table_28-Entries_in_the_catalog_dictionary {
    method Type {...};
    method Version {...};
    method Extensions {...};
    method Pages {...};
    method PageLabels {...};
    method Names {...};
    method Dests {...};
    method ViewerPreferences {...};
    method PageLayout {...};
    method PageMode {...};
    method Outlines {...};
    method Threads {...};
    method OpenAction {...};
    method AA {...};
    method URI {...};
    method AcroForm {...};
    method Metadata {...};
    method StructTreeRoot {...};
    method MarkInfo {...};
    method Lang {...};
    method SpiderInfo {...};
    method OutputIntents {...};
    method PieceInfo {...};
    method OCProperties {...};
    method Perms {...};
    method Legal {...};
    method Requirements {...};
    method Collection {...};
    method NeedsRendering {...};
}

=begin pod

=head1 Description

Table 28 – Entries in the catalog dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Catalog for the catalog dictionary.

=head2 Version [name]
- (Optional; PDF 1.4) The version of the PDF specification to which the document conforms (for example, 1.4) if later than the version specified in the file’s header (see 7.5.2, "File Header"). If the header specifies a later version, or if this entry is absent, the document conforms to the version specified in the header. This entry enables a conforming writer to update the version using an incremental update; see 7.5.6, "Incremental Updates."
The value of this entry is a name object, not a number, and therefore is preceded by a SOLIDUS (2Fh) character (/) when written in the PDF file (for example, /1.4).

=head2 Extensions [dictionary]
- (Optional; ISO 32000) An extensions dictionary containing developer prefix identification and version numbers for developer extensions that occur in this document. 7.12, “Extensions Dictionary”, describes this dictionary and how it is used.

=head2 Pages [dictionary]
- (Required; is an indirect reference) The page tree node that is the root of the document’s page tree (see 7.7.3, "Page Tree").

=head2 PageLabels [number tree]
- (Optional; PDF 1.3) A number tree (see 7.9.7, "Number Trees") defining the page labelling for the document. The keys in this tree is page indices; the corresponding values is page label dictionaries (see 12.4.2, "Page Labels"). Each page index denote the first page in a labelling range to which the specified page label dictionary applies. The tree includes a value for page index 0.

=head2 Names [dictionary]
- (Optional; PDF 1.2) The document’s name dictionary (see 7.7.4, "Name Dictionary").

=head2 Dests [dictionary]
- (Optional; PDF 1.1; is an indirect reference) A dictionary of names and corresponding destinations (see 12.3.2.3, "Named Destinations").

=head2 ViewerPreferences [dictionary]
- (Optional; PDF 1.2) A viewer preferences dictionary (see 12.2, "Viewer Preferences") specifying the way the document is displayed on the screen. If this entry is absent, conforming readers uses their own current user preference settings.

=head2 PageLayout [name]
- (Optional) A name object specifying the page layout is used when the document is opened:
SinglePageDisplay one page at a time
OneColumnDisplay the pages in one column
TwoColumnLeftDisplay the pages in two columns, with odd-numbered pages on the left
TwoColumnRightDisplay the pages in two columns, with odd-numbered pages on the right
TwoPageLeft(PDF 1.5) Display the pages two at a time, with odd-numbered pages on the left
TwoPageRight(PDF 1.5) Display the pages two at a time, with odd-numbered pages on the right
Default value: SinglePage.

=head2 PageMode [name]
- (Optional) A name object specifying how the document is displayed when opened:
UseNoneNeither document outline nor thumbnail images visible
UseOutlinesDocument outline visible
UseThumbsThumbnail images visible
FullScreenFull-screen mode, with no menu bar, window controls, or any other window visible
UseOC(PDF 1.5) Optional content group panel visible
UseAttachments(PDF 1.6) Attachments panel visible
Default value: UseNone.

=head2 Outlines [dictionary]
- (Optional; is an indirect reference) The outline dictionary that is the root of the document’s outline hierarchy (see 12.3.3, "Document Outline").

=head2 Threads [array]
- (Optional; PDF 1.1; is an indirect reference) An array of thread dictionaries that represents the document’s article threads (see 12.4.3, "Articles").

=head2 OpenAction [array or dictionary]
- (Optional; PDF 1.1) A value specifying a destination that is displayed or an action that is performed when the document is opened. The value is either an array defining a destination (see 12.3.2, "Destinations") or an action dictionary representing an action (12.6, "Actions"). If this entry is absent, the document is opened to the top of the first page at the default magnification factor.

=head2 AA [dictionary]
- (Optional; PDF 1.4) An additional-actions dictionary defining the actions that is taken in response to various trigger eventsaffecting the document as a whole (see 12.6.3, "Trigger Events").

=head2 URI [dictionary]
- (Optional; PDF 1.1) A URI dictionary containing document-level information for URI (uniform resource identifier) actions (see 12.6.4.7, "URI Actions").

=head2 AcroForm [dictionary]
- (Optional; PDF 1.2) The document’s interactive form (AcroForm) dictionary (see 12.7.2, "Interactive Form Dictionary").

=head2 Metadata [stream]
- (Optional; PDF 1.4; is an indirect reference) A metadata stream that contains metadata for the document (see 14.3.2, "Metadata Streams").

=head2 StructTreeRoot [dictionary]
- (Optional; PDF 1.3) The document’s structure tree root dictionary (see 14.7.2, "Structure Hierarchy").

=head2 MarkInfo [dictionary]
- (Optional; PDF 1.4) A mark information dictionary that contains information about the document’s usage of Tagged PDF conventions (see 14.7, "Logical Structure").

=head2 Lang [text string]
- (Optional; PDF 1.4) A language identifier that specifies the natural language for all text in the document except where overridden by language specifications for structure elements or marked content (see 14.9.2, "Natural Language Specification"). If this entry is absent, the language is considered unknown.

=head2 SpiderInfo [dictionary]
- (Optional; PDF 1.3) A Web Capture information dictionary that contains state information used by any Web Capture extension (see 14.10.2, "Web Capture Information Dictionary").

=head2 OutputIntents [array]
- (Optional; PDF 1.4) An array of output intent dictionaries that specifies the colour characteristics of output devices on which the document might be rendered (see 14.11.5, "Output Intents").

=head2 PieceInfo [dictionary]
- (Optional; PDF 1.4) A page-piece dictionary associated with the document (see 14.5, "Page-Piece Dictionaries").

=head2 OCProperties [dictionary]
- (Optional; PDF 1.5; required if a document contains optional content) The document’s optional content properties dictionary (see 8.11.4, "Configuring Optional Content").

=head2 Perms [dictionary]
- (Optional; PDF 1.5) A permissions dictionary that specifies user access permissions for the document. 12.8.4, "Permissions", describes this dictionary and how it is used.

=head2 Legal [dictionary]
- (Optional; PDF 1.5) A dictionary that contains attestations regarding the content of a PDF document, as it relates to the legality of digital signatures (see 12.8.5, "Legal Content Attestations").

=head2 Requirements [array]
- (Optional; PDF 1.7) An array of requirement dictionaries that represents requirements for the document. 12.10, "Document Requirements", describes this dictionary and how it is used.

=head2 Collection [dictionary]
- (Optional; PDF 1.7) A collection dictionary that a conforming reader uses to enhance the presentation of file attachments stored in the PDF document. (see 12.3.5, "Collections").

=head2 NeedsRendering [boolean]
- (Optional; PDF 1.7) A flag used to expedite the display of PDF documents containing XFA forms. It specifies whether the document is regenerated when the document is first opened.
See the XML Forms Architecture (XFA) Specification(Bibliography).
Default value: false.

=end pod
