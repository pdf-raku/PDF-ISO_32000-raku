use v6;
#| PDF 32000-1:2008 Table 282 – Entries in a media screen parameters dictionary
role ISO_32000::Table_282-Entries_in_a_media_screen_parameters_dictionary {
    method Type {...};
    method MH {...};
    method BE {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaScreenParams for a media screen parameters dictionary.

=head2 MH [dictionary]
- (Optional) A dictionary whose entries (see Table 283) is honoured for the media screen parameters to be considered viable.

=head2 BE [dictionary]
- (Optional) A dictionary whose entries (see Table 283) is honoured.

=end pod
