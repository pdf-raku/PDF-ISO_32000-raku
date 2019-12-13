use v6;
#| PDF 32000-1:2008 Table 210 – Additional entries specific to a hide action
role ISO_32000::Table_210-Additional_entries_specific_to_a_hide_action {
    method S {...};
    method T {...};
    method H {...};
}

=begin pod

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Hide for a hide action.

=head2 T [dictionary, text string, or array]
- (Required) The annotation or annotations to be hidden or shown, shall bespecified in any of the following forms:
An indirect reference to an annotation dictionary
A text string giving the fully qualified field name of an interactive form field whose associated widget annotation or annotations are to be affected (see 12.7.3.2, “Field Names”)
An array of such dictionaries or text strings

=head2 H [boolean]
- (Optional) A flag indicating whether to hide the annotation (true) or show it (false). Default value: true.

=end pod
