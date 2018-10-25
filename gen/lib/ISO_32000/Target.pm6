use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Target ../tables/Target_entries.html

role ISO_32000::Target {
    method R {...};	#| [name] (Required) Specifies the relationship between the current document and the target (which may be an intermediate target). Valid values are P (the target is the parent of the current document) and C (the target is a child of the current document).
    method N {...};	#| [byte string] (Required if the value of R is C and the target is located in the EmbeddedFiles name tree; otherwise, it shall be absent) The name of the file in the EmbeddedFiles name tree.
    method P {...};	#| [integer or byte string] (Required if the value of R is C and the target is associated with a file attachment annotation; otherwise, it shall be absent) If the value is an integer, it specifies the page number (zero-based) in the current document containing the file attachment annotation. If the value is a string, it specifies a named destination in the current document that provides the page number of the file attachment annotation.
    method A {...};	#| [integer or text string] (Required if the value of R is C and the target is associated with a file attachment annotation; otherwise, it shall be absent) If the value is an integer, it specifies the index (zero-based) of the annotation in the Annots array (see Link Table 30 ) of the page specified by P. If the value is a text string, it specifies the value of NM in the annotation dictionary (see Link Ta b l e 164 ).
    method T {...};	#| [dictionary] (Optional) A target dictionary specifying additional path information to the target document. If this entry is absent, the current document is the target file containing the destination.
}