use v6;
role ISO_32000::Table_218-Entries_in_the_interactive_form_dictionary {
    method Fields {...};
    method NeedAppearances {...};
    method SigFlags {...};
    method CO {...};
    method DR {...};
    method DA {...};
    method Q {...};
    method XFA {...};
}

=begin pod

=head1 Description

Table 218 – Entries in the interactive form dictionary

=head1 Methods (Entries)

=head2 Fields [array]
- (Required) An array of references to the document’s root fields (those with no ancestors in the field hierarchy).

=head2 NeedAppearances [boolean]
- (Optional) A flag specifying whether to construct appearance streams and appearance dictionaries for all widget annotations in the document (see 12.7.3.3, “Variable Text”). Default value: false.

=head2 SigFlags [integer]
- (Optional; PDF 1.3) A set of flags specifying various document- level characteristics related to signature fields (see Table 219, and 12.7.4.5, “Signature Fields”). Default value: 0.

=head2 CO [array]
- (Required if any fields in the document have additional-actions dictionaries containing a C entry; PDF 1.3) An array of indirect references to field dictionaries with calculation actions, defining the calculation order in which their values will be recalculated when the value of any field changes (see 12.6.3, “Trigger Events”).

=head2 DR [dictionary]
- (Optional) A resource dictionary (see 7.8.3, “Resource Dictionaries”) containing default resources (such as fonts, patterns, or colour spaces) that is used by form field appearance streams. At a minimum, this dictionary contains a Font entry specifying the resource name and font dictionary of the default font for displaying text.

=head2 DA [string]
- (Optional) A document-wide default value for the DA attribute of variable text fields (see 12.7.3.3, “Variable Text”).

=head2 Q [integer]
- (Optional) A document-wide default value for the Q attribute of variable text fields (see 12.7.3.3, “Variable Text”).

=head2 XFA [stream or array]
- (Optional; PDF 1.5) A stream or array containing an XFA resource, whose format is described by the Data Package (XDP) Specification. (see the Bibliography).
The value of this entry is either a stream representing the entire contents of the XML Data Package or an array of text string and stream pairs representing the individual packets comprising the XML Data Package.
See 12.7.8, “XFA Forms,” for more information.

=end pod
