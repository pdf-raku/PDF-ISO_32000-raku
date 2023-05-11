use v6;
role ISO_32000::Table_72-Entries_in_a_DeviceN_Process_Dictionary {
    method ColorSpace {...};
    method Components {...};
}

=begin pod

=head1 Description

Table 72 – Entries in a DeviceN Process Dictionary

=head1 Methods (Entries)

=head2 ColorSpace [name or array]
- (Required) A name or array identifying the process colour space, which may be any device or CIE-based colour space. If an ICCBased colour space is specified, it provides calibration information appropriate for the process colour components specified in the names array of the DeviceN colour space.

=head2 Components [array]
- (Required) An array of component names that correspond, in order, to the components of the process colour space specified in ColorSpace. For example, an RGB colour space has three names corresponding to red, green, and blue. The names may be arbitrary (that is, not the same as the standard names for the colour space components) and matches those specified in the names array of the DeviceN colour space, even if all components are not present in the names array.

=end pod
