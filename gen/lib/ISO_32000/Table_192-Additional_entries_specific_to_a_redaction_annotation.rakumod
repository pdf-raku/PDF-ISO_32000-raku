use v6;
role ISO_32000::Table_192-Additional_entries_specific_to_a_redaction_annotation {
    method Subtype {...};
    method QuadPoints {...};
    method IC {...};
    method RO {...};
    method OverlayText {...};
    method Repeat {...};
    method DA {...};
    method Q {...};
}

=begin pod

=head1 Description

Table 192 – Additional entries specific to a redaction annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Redact for a redaction annotation.

=head2 QuadPoints [array]
- (Optional) An array of 8 x n numbers specifying the coordinates of n quadrilaterals in default user space, as described in Table 175 for text markup annotations. If present, these quadrilaterals denote the content region that is intended to be removed. If this entry is not present, the Rect entry denotes the content region that is intended to be removed.

=head2 IC [array]
- (Optional) An array of three numbers in the range 0.0 to 1.0 specifying the components, in the DeviceRGB colour space, of the interior colour with which to fill the redacted region after the affected content has been removed. If this entry is absent, the interior of the redaction region is left transparent. This entry is ignored if the RO entry is present.

=head2 RO [stream]
- (Optional) A form XObject specifying the overlay appearance for this redaction annotation. After this redaction is applied and the affected content has been removed, the overlay appearance is drawn such that its origin lines up with the lower-left corner of the annotation rectangle. This form XObject is not necessarily related to other annotation appearances, and may or may not be present in the AP dictionary. This entry takes precedence over the IC, OverlayText, DA, and Q entries.

=head2 OverlayText [text string]
- (Optional) A text string specifying the overlay text that is drawn over the redacted region after the affected content has been removed. This entry is ignored if the RO entry is present.

=head2 Repeat [boolean]
- (Optional) If true, then the text specified by OverlayText is repeated to fill the redacted region after the affected content has been removed. This entry is ignored if the RO entry is present. Default value: false.

=head2 DA [byte string]
- (Required if OverlayText is present, ignored otherwise) The appearance string to be used in formatting the overlay text when it is drawn after the affected content has been removed (see 12.7.3.3, “Variable Text”). This entry is ignored if the RO entry is present.

=head2 Q [integer]
- (Optional) A code specifying the form of quadding (justification) to be used in laying out the overlay text:
0 Left-justified
1 Centered
2 Right-justified
This entry is ignored if the RO entry is present. Default value: 0 (left- justified).

=end pod
