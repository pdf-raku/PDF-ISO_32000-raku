use v6;
role ISO_32000::Table_103-Entries_in_a_Usage_Application_Dictionary {
    method Event {...};
    method OCGs {...};
    method Category {...};
}

=begin pod

=head1 Description

Table 103 – Entries in a Usage Application Dictionary

=head1 Methods (Entries)

=head2 Event [name]
- (Required) A name defining the situation in which this usage application dictionary is used. Shall be one of View, Print, or Export.

=head2 OCGs [array]
- (Optional) An array listing the optional content groups that has their states automatically managed based on information in their usage dictionary (see 8.11.4.4, "Usage and Usage Application Dictionaries"). Default value: an empty array, indicating that no groups is affected.

=head2 Category [array]
- (Required) An array of names, each of which corresponds to a usage dictionary entry (see Table 102). When managing the states of the optional content groups in the OCGs array, each of the corresponding categories in the group’s usage dictionary is considered.

=end pod
