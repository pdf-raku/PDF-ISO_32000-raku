use v6;
role ISO_32000::Table_357-Entries_in_a_Web_Capture_command_dictionary {
    method URL {...};
    method L {...};
    method F {...};
    method P {...};
    method CT {...};
    method H {...};
    method S {...};
}

=begin pod

=head1 Description

Table 357 – Entries in a Web Capture command dictionary

=head1 Methods (Entries)

=head2 URL [ASCII string]
- (Required) The initial URL from which source data was requested.

=head2 L [integer]
- (Optional) The number of levels of pages retrieved from the initial URL. Default value: 1.

=head2 F [integer]
- (Optional) A set of flags specifying various characteristics of the command (see Table 357). Defaut value: 0.

=head2 P [string or stream]
- (Optional) Data that was posted to the URL.

=head2 CT [ASCII string]
- (Optional) A content type describing the data posted to the URL. Default value: application / x-www-form-urlencoded.

=head2 H [string]
- (Optional) Additional HTTP request headers sent to the URL.

=head2 S [dictionary]
- (Optional) A command settings dictionary containing settings used in the conversion process (see 14.10.5.4, “Command Settings”).

=end pod
