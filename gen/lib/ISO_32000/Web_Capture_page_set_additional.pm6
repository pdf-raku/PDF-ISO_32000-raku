use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Web_Capture_page_set_additional ../../resources/ISO_32000/Web_Capture_page_set_additional_entries.json

#| PDF 32000-1:2008 Table 353 – Additional entries specific to a Web Capture page set
role ISO_32000::Web_Capture_page_set_additional {
    method S {...};
    method T {...};
    method TID {...};
}

=begin pod

=head1 Methods (Entries)

=head2 S [name]
- (Required) The subtype of content set that this dictionary describes; is SPS.

=head2 T [text string]
- (Optional) The title of the page set, a human-readable text string.

=head2 TID [byte string]
- (Optional) A text identifier generated from the text of the page set, as described in 14.10.3.3, “Digital Identifiers.”

=end pod
