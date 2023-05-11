use v6;
role ISO_32000::Table_364-Entries_in_a_separation_dictionary {
    method Pages {...};
    method DeviceColorant {...};
    method ColorSpace {...};
}

=begin pod

=head1 Description

Table 364 – Entries in a separation dictionary

=head1 Methods (Entries)

=head2 Pages [array]
- (Required) An array of indirect references to page objects representing separations of the same document page. One of the page objects in the array is the one with which this separation dictionary is associated, and all of them has separation dictionaries (SeparationInfo entries) containing Pages arrays identical to this one.

=head2 DeviceColorant [name or string]
- (Required) The name of the device colorant to be used in rendering this separation, such as Cyan or PANTONE 35 CV.

=head2 ColorSpace [array]
- (Optional) An array defining a Separation or DeviceN colour space (see 8.6.6.4, “Separation Colour Spaces” and 8.6.6.5, “DeviceN Colour Spaces”). It provides additional information about the colour specified by DeviceColorant—in particular, the alternate colour space and tint transformation function that is used to represent the colorant as a process colour. This information enables a conforming reader to preview the separation in a colour that approximates the device colorant.
The value of DeviceColorant matches the space’s colorant name (if it is a Separation space) or be one of the space’s colorant names (if it is a DeviceN space).

=end pod
