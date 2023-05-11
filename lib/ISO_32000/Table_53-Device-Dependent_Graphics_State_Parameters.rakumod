use v6;
role ISO_32000::Table_53-Device-Dependent_Graphics_State_Parameters {
    method overprint {...};
    method overprintMode {...};
    method blackGeneration {...};
    method undercolorRemoval {...};
    method transfer {...};
    method halftone {...};
    method flatness {...};
    method smoothness {...};
}

=begin pod

=head1 Description

Table 53 – Device-Dependent Graphics State Parameters

=head1 Methods (Entries)

=head2 overprint [boolean]
- (PDF 1.2) A flag specifying (on output devices that support the overprint control feature) whether painting in one set of colorants causes the corresponding areas of other colorants to be erased (false) or left unchanged (true); see 8.6.7, "Overprint Control". In PDF 1.3, there are two separate overprint parameters: one for stroking and one for all other painting operations. Initial value: false.

=head2 overprintMode [number]
- (PDF 1.3) A code specifying whether a colour component value of 0 in a DeviceCMYK colour space should erase that component (0) or leave it unchanged (1) when overprinting (see 8.6.7, "Overprint Control"). Initial value: 0.

=head2 blackGeneration [function or name]
- (PDF 1.2) A function that calculates the level of the black colour component to use when converting RGB colours to CMYK (see 10.3.4, "Conversion from DeviceRGB to DeviceCMYK"). Initial value: a conforming reader initializes this to a suitable device dependent value.

=head2 undercolorRemoval [function or name]
- (PDF 1.2) A function that calculates the reduction in the levels of the cyan, magenta, and yellow colour components to compensate for the amount of black added by black generation (see 10.3.4, "Conversion from DeviceRGB to DeviceCMYK"). Initial value: a conforming reader initializes this to a suitable device dependent value.

=head2 transfer [function, array, or name]
- (PDF 1.2) A function that adjusts device gray or colour component levels to compensate for nonlinear response in a particular output device (see 10.4, “Transfer Functions“). Initial value: a conforming reader initializes this to a suitable device dependent value.

=head2 halftone [dictionary, stream, or name]
- (PDF 1.2) A halftone screen for gray and colour rendering, specified as a halftone dictionary or stream (see 10.5, "Halftones"). Initial value: a conforming reader initializes this to a suitable device dependent value.

=head2 flatness [number]
- The precision with which curves is rendered on the output device (see 10.6.2, "Flatness Tolerance"). The value of this parameter (positive number) gives the maximum error tolerance, measured in output device pixels; smaller numbers give smoother curves at the expense of more computation and memory use. Initial value: 1.0.

=head2 smoothness [number]
- (PDF 1.3) The precision with which colour gradients are to be rendered on the output device (see 10.6.3, "Smoothness Tolerance"). The value of this parameter (0 to 1.0) gives the maximum error tolerance, expressed as a fraction of the range of each colour component; smaller numbers give smoother colour transitions at the expense of more computation and memory use. Initial value: a conforming reader initializes this to a suitable device dependent value.

=end pod
