use v6;
role ISO_32000::Table_50-Entries_in_a_developer_extensions_dictionary {
    method Type {...};
    method BaseVersion {...};
    method ExtensionLevel {...};
}

=begin pod

=head1 Description

Table 50 – Entries in a developer extensions dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is DeveloperExtensions.

=head2 BaseVersion [name]
- (Required) The name of the PDF version to which this extension applies. The name is consistent with the syntax used for the Version entry of the catalog dictionary (see 7.7.2, “Document Catalog”).

=head2 ExtensionLevel [integer]
- (Required) An integer defined by the developer to denote the extension being used. If the developer introduces more than one extension to a given BaseVersion the extension level numbers assigned by that developer increases over time.

=end pod
