use v6;
role ISO_32000::Table_150-Entries_in_a_viewer_preferences_dictionary {
    method HideToolbar {...};
    method HideMenubar {...};
    method HideWindowUI {...};
    method FitWindow {...};
    method CenterWindow {...};
    method DisplayDocTitle {...};
    method NonFullScreenPageMode {...};
    method Direction {...};
    method ViewArea {...};
    method ViewClip {...};
    method PrintArea {...};
    method PrintClip {...};
    method PrintScaling {...};
    method Duplex {...};
    method PickTrayByPDFSize {...};
    method PrintPageRange {...};
    method NumCopies {...};
}

=begin pod

=head1 Description

Table 150 – Entries in a viewer preferences dictionary

=head1 Methods (Entries)

=head2 HideToolbar [boolean]
- (Optional) A flag specifying whether to hide the conforming reader’s tool bars when the document is active. Default value: false.

=head2 HideMenubar [boolean]
- (Optional) A flag specifying whether to hide the conforming reader’s menu bar when the document is active. Default value: false.

=head2 HideWindowUI [boolean]
- (Optional) A flag specifying whether to hide user interface elements in the document’s window (such as scroll bars and navigation controls), leaving only the document’s contents displayed. Default value: false.

=head2 FitWindow [boolean]
- (Optional) A flag specifying whether to resize the document’s window to fit the size of the first displayed page. Default value: false.

=head2 CenterWindow [boolean]
- (Optional) A flag specifying whether to position the document’s window in the center of the screen. Default value: false.

=head2 DisplayDocTitle [boolean]
- (Optional; PDF 1.4) A flag specifying whether the window’s title bar displays the document title taken from the Title entry of the document information dictionary (see 14.3.3, “Document Information Dictionary”). If false, the title bar should instead display the name of the PDF file containing the document. Default value: false.

=head2 NonFullScreenPageMode [name]
- (Optional) The document’s page mode, specifying how to display the document on exiting full-screen mode:
UseNone Neither document outline nor thumbnail images visible
UseOutlines Document outline visible
UseThumbs Thumbnail images visible
UseOC Optional content group panel visible
This entry is meaningful only if the value of the PageMode entry in the Catalog dictionary (see 7.7.2, “Document Catalog”) is FullScreen; it is ignored otherwise. Default value: UseNone.

=head2 Direction [name]
- (Optional; PDF 1.3) The predominant reading order for text:
L2R Left to right
R2L Right to left (including vertical writing systems, such as Chinese, Japanese, and Korean)
This entry has no direct effect on the document’s contents or page numbering but may be used to determine the relative positioning of pages when displayed side by side or printed n-up. Default value: L2R.

=head2 ViewArea [name]
- (Optional; PDF 1.4) The name of the page boundary representing the area of a page that is displayed when viewing the document on the screen. The value is the key designating the relevant page boundary in the page object (see 7.7.3, “Page Tree” and 14.11.2, “Page Boundaries”). If the specified page boundary is not defined in the page object, its default value is used, as specified in Table 30. Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, “Page Boundaries.”
NOTE 1 Most conforming readers disregard it.

=head2 ViewClip [name]
- (Optional; PDF 1.4) The name of the page boundary to which the contents of a page is clipped when viewing the document on the screen. The value is the key designating the relevant page boundary in the page object (see 7.7.3, “Page Tree” and 14.11.2, “Page Boundaries”). If the specified page boundary is not defined in the page object, its default value is used, as specified in Table 30. Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, “Page Boundaries.”
NOTE 2 Most conforming readers disregard it.

=head2 PrintArea [name]
- (Optional; PDF 1.4) The name of the page boundary representing the area of a page that is rendered when printing the document. The value is the key designating the relevant page boundary in the page object (see 7.7.3, “Page Tree” and 14.11.2, “Page Boundaries”). If the specified page boundary is not defined in the page object, its default value is used, as specified in Table 30. Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, “Page Boundaries.”
NOTE 3 Most conforming readers disregard it.

=head2 PrintClip [name]
- (Optional; PDF 1.4) The name of the page boundary to which the contents of a page is clipped when printing the document. The value is the key designating the relevant page boundary in the page object (see 7.7.3, “Page Tree” and 14.11.2, “Page Boundaries”). If the specified page boundary is not defined in the page object, its default value is used, as specified in Table 30. Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, “Page Boundaries.”
NOTE 4 Most conforming readers disregard it.

=head2 PrintScaling [name]
- (Optional; PDF 1.6) The page scaling option that is selected when a print dialog is displayed for this document. Valid values are None, which indicates no page scaling, and AppDefault, which indicates the conforming reader’s default print scaling. If this entry has an unrecognized value, AppDefault is used. Default value: AppDefault.
If the print dialog is suppressed and its parameters are provided from some other source, this entry nevertheless is honored.

=head2 Duplex [name]
- (Optional; PDF 1.7) The paper handling option that is used when printing the file from the print dialog. The following values are valid:
Simplex Print single-sided
DuplexFlipShortEdge Duplex and flip on the short edge of the sheet
DuplexFlipLongEdge Duplex and flip on the long edge of the sheet
Default value: none

=head2 PickTrayByPDFSize [boolean]
- (Optional; PDF 1.7) A flag specifying whether the PDF page size is used to select the input paper tray. This setting influences only the preset values used to populate the print dialog presented by a conforming reader. If PickTrayByPDFSize is true, the check box in the print dialog associated with input paper tray is checked.
This setting has no effect on operating systems that do not provide the ability to pick the input tray by size.
Default value: as defined by the conforming reader

=head2 PrintPageRange [array]
- (Optional; PDF 1.7) The page numbers used to initialize the print dialog box when the file is printed. The array contains an even number of integers to be interpreted in pairs, with each pair specifying the first and last pages in a sub-range of pages to be printed.The first page of the PDF file is denoted by 1. Default value: as defined by the conforming reader

=head2 NumCopies [integer]
- (Optional; PDF 1.7) The number of copies that is printed when the print dialog is opened for this file. Values outside this range is ignored.
Default value: as defined by the conforming reader, but typically 1

=end pod
