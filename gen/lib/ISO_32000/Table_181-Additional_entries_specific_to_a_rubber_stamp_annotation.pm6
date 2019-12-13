use v6;
#| PDF 32000-1:2008 Table 181 – Additional entries specific to a rubber stamp annotation
role ISO_32000::Table_181-Additional_entries_specific_to_a_rubber_stamp_annotation {
    method Subtype {...};
    method Name {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Stamp for a rubber stamp annotation.

=head2 Name [name]
- (Optional) The name of an icon that is used in displaying the annotation. Conforming readers provides predefined icon appearances for at least the following standard names:
Approved, Experimental, NotApproved, AsIs, Expired , NotForPublicRelease, Confidential, Final, Sold, Departmental, ForComment, TopSecret, Draft, ForPublicRelease
Additional names may be supported as well. Default value: Draft.
The annotation dictionary’s AP entry, if present, takes precedence over the Name entry; see Table 168 and 12.5.5, “Appearance Streams.”

=end pod
