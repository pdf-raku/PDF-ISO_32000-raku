use v6;
role ISO_32000::Table_359-Entries_in_a_Web_Capture_command_settings_dictionary {
    method G {...};
    method C {...};
}

=begin pod

=head1 Description

Table 359 – Entries in a Web Capture command settings dictionary

=head1 Methods (Entries)

=head2 G [dictionary]
- (Optional) A dictionary containing global conversion engine settings relevant to all conversion engines. If this entry is absent, default settings is used.

=head2 C [dictionary]
- (Optional) Settings for specific conversion engines. Each key in this dictionary is the internal name of a conversion engine. The associated value is a dictionary containing the settings associated with that conversion engine. If the settings for a particular conversion engine are not found in the dictionary, default settings is used.

=end pod
