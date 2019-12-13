use v6;
role ISO_32000::Table_14-Optional_parameters_for_Crypt_filters {
    method Type {...};
    method Name {...};
}

=begin pod

=head1 Description

Table 14 – Optional parameters for Crypt filters

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) If present, is CryptFilterDecodeParms for a Cryptfilter decode parameter dictionary.

=head2 Name [name]
- (Optional) The name of the crypt filter that is used to decrypt this stream. The name corresponds to an entry in the CF entry of the encryption dictionary (see Table 20) or one of the standard crypt filters (see Table 26).
Default value: Identity.

=end pod
