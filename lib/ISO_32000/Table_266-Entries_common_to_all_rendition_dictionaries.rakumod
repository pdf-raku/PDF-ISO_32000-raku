use v6;
role ISO_32000::Table_266-Entries_common_to_all_rendition_dictionaries {
    method Type {...};
    method S {...};
    method N {...};
    method MH {...};
    method BE {...};
}

=begin pod

=head1 Description

Table 266 – Entries common to all rendition dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that dictionary describes; if present, is Rendition for a rendition object.

=head2 S [name]
- (Required) The type of rendition that this dictionary describes. May be MR for media rendition or SR for selector rendition. The rendition is considered non-viable if the conforming reader does not recognize the value of this entry.

=head2 N [text string]
- (Optional) A Unicode-encoded text string specifying the name of the rendition for use in a user interface and for name tree lookup by JavaScript actions.

=head2 MH [dictionary]
- (Optional) A dictionary whose entries (see Table 267) is honoured for the rendition to be considered viable.

=head2 BE [dictionary]
- (Optional) A dictionary whose entries (see Table 267) is only be honoured in a “best effort” sense.

=end pod
