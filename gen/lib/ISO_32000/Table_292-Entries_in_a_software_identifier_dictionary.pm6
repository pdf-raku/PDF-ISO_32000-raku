use v6;
#| PDF 32000-1:2008 Table 292 – Entries in a software identifier dictionary
role ISO_32000::Table_292-Entries_in_a_software_identifier_dictionary {
    method Type {...};
    method U {...};
    method L {...};
    method LI {...};
    method H {...};
    method HI {...};
    method OS {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SoftwareIdentifier for a software identifier dictionary.

=head2 U [ASCII string]
- (Required) A URI that identifies a piece of software (see “Software URIs” in 13.2.7.4, “Software Identifier Dictionary”).

=head2 L [array]
- (Optional) The lower bound of the range of software versions that this software identifier dictionary specifies (see “Version arrays” in 13.2.7.4, “Software Identifier Dictionary”). Default value: the array [0].

=head2 LI [boolean]
- (Optional) If true, the lower bound of the interval defined by L and H is inclusive; that is, the software version is greater than or equal to L (see “Version arrays” in 13.2.7.4, “Software Identifier Dictionary”). If false, it is not inclusive. Default value: true.

=head2 H [array]
- (Optional) The upper bound of the range of software versions that this software identifier dictionary specifies (see “Version arrays” in 13.2.7.4, “Software Identifier Dictionary”). Default value: an empty array [].

=head2 HI [boolean]
- (Optional) If true, the upper bound of the interval defined by L and H is inclusive; that is, the software version is less than or equal to H (see “Version arrays” in 13.2.7.4, “Software Identifier Dictionary”). If false, it is not inclusive. Default value: true.

=head2 OS [array]
- (Optional) An array of byte strings representing operating system identifiers that indicates to which operating systems this object applies. The defined values are the same as those defined for SMIL 2.0’s systemOperatingSystem attribute. There may not be multiple copies of the same identifier in the array. An empty array is considered to represent all operating systems. Default value: an empty array.

=end pod
