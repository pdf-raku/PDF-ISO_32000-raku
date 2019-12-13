use v6;
#| PDF 32000-1:2008 Table 100 – Entries in the Optional Content Properties Dictionary
role ISO_32000::Table_100-Entries_in_the_Optional_Content_Properties_Dictionary {
    method OCGs {...};
    method D {...};
    method Configs {...};
}

=begin pod

=head1 Methods (Entries)

=head2 OCGs [array]
- (Required) An array of indirect references to all the optional content groups in the document (see 8.11.2, "Optional Content Groups"), in any order. Every optional content group is included in this array.

=head2 D [dictionary]
- (Required) The default viewing optional content configuration dictionary (see 8.11.4.3, "Optional Content Configuration Dictionaries").

=head2 Configs [array]
- (Optional) An array of alternate optional content configuration dictionaries (see 8.11.4.3, "Optional Content Configuration Dictionaries").

=end pod
