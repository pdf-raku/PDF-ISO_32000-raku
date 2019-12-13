use v6;
#| PDF 32000-1:2008 Table 216 – Additional entries specific to a go-to-3D-view action
role ISO_32000::Table_216-Additional_entries_specific_to_a_go-to-ThreeD-view_action {
    method S {...};
    method TA {...};
    method V {...};
}

=begin pod

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is GoTo3DView for a transition action.

=head2 TA [dictionary]
- (Required) The target annotation for which to set the view.

=head2 V [(various)]
- (Required) The view to use. It may be one of the following types:
A 3D view dictionary (see 13.6.4, “3D Views”).
An integer specifying an index into the VA array in the 3D stream (see Table 300).
A text string matching the IN entry in one of the views in the VA array (see Table 304).
A name that indicates the first (F), last (L), next (N), previous (P), or default (D) entries in the VA array; see discussion following this Table.

=end pod
