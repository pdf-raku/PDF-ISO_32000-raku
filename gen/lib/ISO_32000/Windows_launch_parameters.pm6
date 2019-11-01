use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Windows_launch_parameters ../../resources/ISO_32000/Windows_launch_parameters_entries.json

#| PDF 32000-1:2008 Table 204 – Entries in a Windows launch parameter dictionary
role ISO_32000::Windows_launch_parameters {
    method F {...};
    method D {...};
    method O {...};
    method P {...};
}

=begin pod

=head1 Methods (Entries)

=head2 F [byte string]
- (Required) The file name of the application that is launched or the document that is opened or printed, in standard Windows pathname format. If the name string includes a backslash character (\), the backslash is itself be preceded by a backslash.
This value is a simple string; it is not a file specification.

=head2 D [byte string]
- (Optional) A bye string specifying the default directory in standard DOS syntax.

=head2 O [ASCII string]
- (Optional) An ASCII string specifying the operation to perform:
open Open a document.
print Print a document.
If the F entry designates an application instead of a document, this entry is ignored and the application is launched. Default value: open.

=head2 P [byte string]
- (Optional) A parameter string that is passed to the application designated by the F entry. This entry is omitted if F designates a document.

=end pod
