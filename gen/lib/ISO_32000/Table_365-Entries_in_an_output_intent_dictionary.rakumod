use v6;
role ISO_32000::Table_365-Entries_in_an_output_intent_dictionary {
    method Type {...};
    method S {...};
    method OutputCondition {...};
    method OutputConditionIdentifier {...};
    method RegistryName {...};
    method Info {...};
    method DestOutputProfile {...};
}

=begin pod

=head1 Description

Table 365 – Entries in an output intent dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is OutputIntent for an output intent dictionary.

=head2 S [name]
- (Required) The output intent subtype; is either one of GTS_PDFX, GTS_PDFA1, ISO_PDFE1 or a key defined by an ISO 32000 extension.

=head2 OutputCondition [text string]
- (Optional) A text string concisely identifying the intended output device or production condition in human-readable form. This is the preferred method of defining such a string for presentation to the user.

=head2 OutputConditionIdentifier [text string]
- (Required) A text string identifying the intended output device or production condition in human- or machine- readable form. If human-readable, this string may be used in lieu of an OutputCondition string for presentation to the user.
A typical value for this entry may be the name of a production condition maintained in an industry-standard registry such as the ICC Characterization Data Registry (see the Bibliography). If the designated condition matches that in effect at production time, the production software is responsible for providing the corresponding ICC profile as defined in the registry.
If the intended production condition is not a recognized standard, the value of this entry may be Custom or an application-specific, machine-readable name. The DestOutputProfile entry defines the ICC profile, and the Info entry is used for further human-readable identification.

=head2 RegistryName [text string]
- (Optional) An text string (conventionally a uniform resource identifier, or URI) identifying the registry in which the condition designated by OutputConditionIdentifier is defined.

=head2 Info [text string]
- (Required if OutputConditionIdentifier does not specify a standard production condition; optional otherwise) A human-readable text string containing additional information or comments about the intended target device or production condition.

=head2 DestOutputProfile [stream]
- (Required if OutputConditionIdentifier does not specify a standard production condition; optional otherwise) An ICC profile stream defining the transformation from the PDF document’s source colours to output device colorants.
The format of the profile stream is the same as that used in specifying an ICCBased colour space (see 8.6.5.5, “ICCBased Colour Spaces”). The output transformation uses the profile’s “from CIE” information (BToA in ICC terminology); the “to CIE” (AToB) information may optionally be used to remap source colour values to some other destination colour space, such as for screen preview or hardcopy proofing.

=end pod
