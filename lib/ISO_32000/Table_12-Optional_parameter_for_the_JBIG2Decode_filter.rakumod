use v6;
role ISO_32000::Table_12-Optional_parameter_for_the_JBIG2Decode_filter {
    method JBIG2Globals {...};
}

=begin pod

=head1 Description

Table 12 – Optional parameter for the JBIG2Decode filter

=head1 Methods (Entries)

=head2 JBIG2Globals [stream]
- A stream containing the JBIG2 global (page 0) segments. Global segments is placed in this stream even if only a single JBIG2 image XObject refers to it.

=end pod
