use v6;
role ISO_32000::Table_354-Additional_entries_specific_to_a_Web_Capture_image_set {
    method S {...};
    method R {...};
}

=begin pod

=head1 Description

Table 354 – Additional entries specific to a Web Capture image set

=head1 Methods (Entries)

=head2 S [name]
- (Required) The subtype of content set that this dictionary describes; is SIS.

=head2 R [integer or array]
- (Required) The reference counts for the image XObjects belonging to the image set. For an image set containing a single XObject, the value is the integer reference count for that XObject. For an image set containing multiple XObjects, the value is an array of reference counts parallel to the O array (see Table 352); that is, each element in the R array shall hold the reference count for the image XObject at the corresponding position in the O array.

=end pod
