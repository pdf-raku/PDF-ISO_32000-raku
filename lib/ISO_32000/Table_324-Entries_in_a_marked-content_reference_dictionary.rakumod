use v6;
role ISO_32000::Table_324-Entries_in_a_marked-content_reference_dictionary {
    method Type {...};
    method Pg {...};
    method Stm {...};
    method StmOwn {...};
    method MCID {...};
}

=begin pod

=head1 Description

Table 324 – Entries in a marked-content reference dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is MCR for a marked-content reference.

=head2 Pg [dictionary]
- (Optional; is an indirect reference) The page object representing the page on which the graphics objects in the marked-content sequence is rendered. This entry overrides any Pg entry in the structure element containing the marked-content reference; it is required if the structure element has no such entry.

=head2 Stm [stream]
- (Optional; is an indirect reference) The content stream containing the marked-content sequence. This entry is present only if the marked-content sequence resides in a content stream other than the content stream for the page (see 8.10, “Form XObjects” and 12.5.5, “Appearance Streams”).
If this entry is absent, the marked-content sequence is contained in the content stream of the page identified by Pg (either in the marked- content reference dictionary or in the parent structure element).

=head2 StmOwn [(any)]
- (Optional; is an indirect reference) The PDF object owning the stream identified by Stems annotation to which an appearance stream belongs.

=head2 MCID [integer]
- (Required) The marked-content identifier of the marked-content sequence within its content stream.

=end pod
