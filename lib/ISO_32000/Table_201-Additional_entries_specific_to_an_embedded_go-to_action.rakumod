use v6;
role ISO_32000::Table_201-Additional_entries_specific_to_an_embedded_go-to_action {
    method S {...};
    method F {...};
    method D {...};
    method NewWindow {...};
    method T {...};
}

=begin pod

=head1 Description

Table 201 – Additional entries specific to an embedded go-to action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is GoToE for an embedded go-to action.

=head2 F [file specification]
- (Optional) The root document of the target relative to the root document of the source. If this entry is absent, the source and target share the same root document.

=head2 D [name, byte string, or array]
- (Required) The destination in the target to jump to (see 12.3.2, “Destinations”).

=head2 NewWindow [boolean]
- (Optional) If true, the destination document is opened in a new window; if false, the destination document replaces the current document in the same window. If this entry is absent, the conforming reader should act according to its preference.

=head2 T [dictionary]
- (Optional if F is present; otherwise required) A target dictionary (see Table 202) specifying path information to the target document. Each target dictionary specifies one element in the full path to the target and may have nested target dictionaries specifying additional elements.

=end pod
