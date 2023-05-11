use v6;
role ISO_32000::Table_204-Entries_in_a_Windows_launch_parameter_dictionary {
    method F {...};
    method D {...};
    method O {...};
    method P {...};
}

=begin pod

=head1 Description

Table 204 – Entries in a Windows launch parameter dictionary

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
