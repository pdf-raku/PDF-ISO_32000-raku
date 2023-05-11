use v6;
role ISO_32000::Table_350-Entries_in_the_Web_Capture_information_dictionary {
    method V {...};
    method C {...};
}

=begin pod

=head1 Description

Table 350 – Entries in the Web Capture information dictionary

=head1 Methods (Entries)

=head2 V [number]
- (Required) The Web Capture version number. The version number is 1.0 in a conforming file.
This value is a single real number, not a major and minor version number.
EXAMPLE A version number of 1.2 would be considered greater than 1.15.

=head2 C [array]
- (Optional) An array of indirect references to Web Capture command dictionaries (see 14.10.5.3, “Command Dictionaries”) describing commands that were used in building the PDF file. The commands appears in the array in the order in which they were executed in building the file.

=end pod
