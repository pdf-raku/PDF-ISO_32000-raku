use v6;
role ISO_32000::Table_33-Entries_in_a_resource_dictionary {
    method ExtGState {...};
    method ColorSpace {...};
    method Pattern {...};
    method Shading {...};
    method XObject {...};
    method Font {...};
    method ProcSet {...};
    method Properties {...};
}

=begin pod

=head1 Description

Table 33 – Entries in a resource dictionary

=head1 Methods (Entries)

=head2 ExtGState [dictionary]
- (Optional) A dictionary that maps resource names to graphics state parameter dictionaries (see 8.4.5, "Graphics State Parameter Dictionaries").

=head2 ColorSpace [dictionary]
- (Optional) A dictionary that maps each resource name to either the name of a device-dependent colour space or an array describing a colour space (see 8.6, "Colour Spaces").

=head2 Pattern [dictionary]
- (Optional) A dictionary that maps resource names to pattern objects (see 8.7, "Patterns").

=head2 Shading [dictionary]
- (Optional; PDF 1.3) A dictionary that maps resource names to shading dictionaries (see 8.7.4.3, "Shading Dictionaries").

=head2 XObject [dictionary]
- (Optional) A dictionary that maps resource names to external objects (see 8.8, "External Objects").

=head2 Font [dictionary]
- (Optional) A dictionary that maps resource names to font dictionaries (see clause 9, "Text").

=head2 ProcSet [array]
- (Optional) An array of predefined procedure set names (see 14.2, "Procedure Sets").

=head2 Properties [dictionary]
- (Optional; PDF 1.2) A dictionary that maps resource names to property list dictionaries for marked content (see 14.6.2, "Property Lists").

=end pod
