use v6;
role ISO_32000::Table_245-Entries_in_the_JavaScript_dictionary {
    method Before {...};
    method After {...};
    method AfterPermsReady {...};
    method Doc {...};
}

=begin pod

=head1 Description

Table 245 – Entries in the JavaScript dictionary

=head1 Methods (Entries)

=head2 Before [text string or text stream]
- (Optional) A text string or text stream containing a JavaScript script that is executed just before the FDF file is imported.

=head2 After [text string or text stream]
- (Optional) A text string or text stream containing a JavaScript script that is executed just after the FDF file is imported.

=head2 AfterPermsReady [text string or text stream]
- (Optional; PDF 1.6) A text string or text stream containing a JavaScript script that is executed after the FDF file is imported and the usage rights in the PDF document have been determined (see 12.8.2.3, “UR”).
Verification of usage rights requires the entire file to be present, in which case execution of this script is deferred until that requirement is met.

=head2 Doc [array]
- (Optional) An array defining additional JavaScript scripts that is added to those defined in the JavaScript entry of the document’s name dictionary (see 7.7.4, “Name Dictionary”). The array contains an even number of elements, organized in pairs. The first element of each pair is a name and the second is a text string or text stream defining the script corresponding to that name. Each of the defined scripts is added to those already defined in the name dictionary and is then executed before the script defined in the Before entry is executed.
NOTE As described in 12.6.4.16, “JavaScript Actions,” these scripts are used to define JavaScript functions for use by other scripts in the document.

=end pod
