use v6;
role ISO_32000::Table_163-Entries_in_a_navigation_node_dictionary {
    method Type {...};
    method NA {...};
    method PA {...};
    method Next {...};
    method Prev {...};
    method Dur {...};
}

=begin pod

=head1 Description

Table 163 – Entries in a navigation node dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; is NavNode for a navigation node dictionary.

=head2 NA [dictionary]
- (Optional) An action (which may be the first in a sequence of actions) that is executed when a user navigates forward.

=head2 PA [dictionary]
- (Optional) An action (which may be the first in a sequence of actions) that is executed when a user navigates backward.

=head2 Next [dictionary]
- (Optional) The next navigation node, if any.

=head2 Prev [dictionary]
- (Optional) The previous navigation node, if any.

=head2 Dur [number]
- (Optional) The maximum number of seconds before the conforming reader shall automatically advance forward to the next navigation node. If this entry is not specified, no automatic advance occurs.

=end pod
