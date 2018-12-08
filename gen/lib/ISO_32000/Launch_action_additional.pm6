use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Launch_action_additional ../../resources/ISO_32000/Launch_action_additional_entries.json

#| PDF 32000-1:2008 Table 203 – Additional entries specific to a launch action
role ISO_32000::Launch_action_additional {
    method S {...};
    method F {...};
    method Win {...};
    method Mac {...};
    method Unix {...};
    method NewWindow {...};
}

=begin pod

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Launch for a launch action.

=head2 F [file specification]
- (Required if none of the entries Win, Mac, or Unix is present) The application that is launched or the document that shall beopened or printed. If this entry is absent and the conforming readerdoes not understand any of the alternative entries, it shall do nothing.

=head2 Win [dictionary]
- (Optional) A dictionary containing Windows-specific launch parameters (see Table 204).

=head2 Mac [(undefined)]
- (Optional) Mac OS–specific launch parameters; not yet defined.

=head2 Unix [(undefined)]
- (Optional) UNIX-specific launch parameters; not yet defined.

=head2 NewWindow [boolean]
- (Optional; PDF 1.2) A flag specifying whether to open the destination document in a new window. If this flag is false, the destination document replaces the current document in the same window. If this entry is absent, the conforming reader should behave in accordance with its current preference. This entry is ignored if the file designated by the F entry is not a PDF document.

=end pod
