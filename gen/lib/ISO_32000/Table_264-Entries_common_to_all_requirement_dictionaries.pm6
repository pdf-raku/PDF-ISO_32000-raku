use v6;
role ISO_32000::Table_264-Entries_common_to_all_requirement_dictionaries {
    method Type {...};
    method S {...};
    method RH {...};
}

=begin pod

=head1 Description

Table 264 – Entries common to all requirement dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes. If present, is Requirement for a requirement dictionary.

=head2 S [name]
- (Required) The type of requirement that this dictionary describes. The value is EnableJavaScripts.

=head2 RH [array]
- (Optional) An array of requirement handler dictionaries (see Table 265). This array lists the requirement handlers that is disabled (not executed) if the conforming reader can check the requirement specified in the S entry.

=end pod
