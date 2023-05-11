use v6;
role ISO_32000::Table_184-Additional_entries_specific_to_a_file_attachment_annotation {
    method Subtype {...};
    method FS {...};
    method Name {...};
}

=begin pod

=head1 Description

Table 184 – Additional entries specific to a file attachment annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is FileAttachment for a file attachment annotation.

=head2 FS [file specification]
- (Required) The file associated with this annotation.

=head2 Name [name]
- (Optional) The name of an icon that is used in displaying the annotation. Conforming readers provides predefined icon appearances for at least the following standard names:
GraphPushPin
PaperclipTag
Additional names may be supported as well. Default value: PushPin.
The annotation dictionary’s AP entry, if present, takes precedence over the Name entry; see Table 168 and 12.5.5, “Appearance Streams.”

=end pod
