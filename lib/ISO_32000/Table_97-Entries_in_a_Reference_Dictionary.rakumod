use v6;
role ISO_32000::Table_97-Entries_in_a_Reference_Dictionary {
    method F {...};
    method Page {...};
    method ID {...};
}

=begin pod

=head1 Description

Table 97 – Entries in a Reference Dictionary

=head1 Methods (Entries)

=head2 F [file specification]
- (Required) The file containing the target document.

=head2 Page [integer or text string]
- (Required) A page index or page label (see 12.4.2, "Page Labels") identifying the page of the target document containing the content to be imported. This reference is a weak one and may be inadvertently invalidated if the referenced page is changed or replaced in the target document after the reference is created.

=head2 ID [array]
- (Optional) An array of two byte strings constituting a file identifier (see 14.4, "File Identifiers") for the file containing the target document. The use of this entry improves an reader’s chances of finding the intended file and allows it to warn the user if the file has changed since the reference was created.

=end pod
