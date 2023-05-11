use v6;
role ISO_32000::Table_202-Entries_specific_to_a_target_dictionary {
    method R {...};
    method N {...};
    method P {...};
    method A {...};
    method T {...};
}

=begin pod

=head1 Description

Table 202 – Entries specific to a target dictionary

=head1 Methods (Entries)

=head2 R [name]
- (Required) Specifies the relationship between the current document and the target (which may be an intermediate target). Valid values are P (the target is the parent of the current document) and C (the target is a child of the current document).

=head2 N [byte string]
- (Required if the value of R is C and the target is located in the EmbeddedFiles name tree; otherwise, it is absent) The name of the file in the EmbeddedFiles name tree.

=head2 P [integer or byte string]
- (Required if the value of R is C and the target is associated with a file attachment annotation; otherwise, it is absent) If the value is an integer, it specifies the page number (zero-based) in the current document containing the file attachment annotation. If the value is a string, it specifies a named destination in the current document that provides the page number of the file attachment annotation.

=head2 A [integer or text string]
- (Required if the value of R is C and the target is associated with a file attachment annotation; otherwise, it is absent) If the value is an integer, it specifies the index (zero-based) of the annotation in the Annots array (see Table 30) of the page specified by P. If the value is a text string, it specifies the value of NM in the annotation dictionary (see Table 164).

=head2 T [dictionary]
- (Optional) A target dictionary specifying additional path information to the target document. If this entry is absent, the current document is the target file containing the destination.

=end pod
