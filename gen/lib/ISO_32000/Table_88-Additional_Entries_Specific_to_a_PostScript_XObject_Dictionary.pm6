use v6;
#| PDF 32000-1:2008 Table 88 – Additional Entries Specific to a PostScript XObject Dictionary
role ISO_32000::Table_88-Additional_Entries_Specific_to_a_PostScript_XObject_Dictionary {
    method Type {...};
    method Subtype {...};
    method Level1 {...};
}

=begin pod

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is XObject for a PostScript XObject.

=head2 Subtype [name]
- (Required) The type of XObject that this dictionary describes; is PS for a PostScript XObject.
Alternatively, the value of this entry may be Form, with an additional Subtype2 entry whose value is PS.

=head2 Level1 [stream]
- (Optional) A stream whose contents is used in place of the PostScript XObject’s stream when the target PostScript interpreter is known to support only LanguageLevel 1.

=end pod
