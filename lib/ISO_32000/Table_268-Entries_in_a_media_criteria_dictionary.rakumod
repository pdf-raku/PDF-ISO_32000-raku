use v6;
role ISO_32000::Table_268-Entries_in_a_media_criteria_dictionary {
    method Type {...};
    method A {...};
    method C {...};
    method O {...};
    method S {...};
    method R {...};
    method D {...};
    method Z {...};
    method V {...};
    method P {...};
    method L {...};
}

=begin pod

=head1 Description

Table 268 – Entries in a media criteria dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaCriteria for a media criteria dictionary.

=head2 A [boolean]
- (Optional) If specified, the value of this entry matches the user’s preference for whether to hear audio descriptions in order for this object to be viable.
NOTE 1 Equivalent to SMIL’s systemAudioDesc attribute.

=head2 C [boolean]
- (Optional) If specified, the value of this entry matches the user’s preference for whether to see text captions in order for this object to be viable.
NOTE 2 Equivalent to SMIL’s systemCaptions attribute.

=head2 O [boolean]
- (Optional) If specified, the value of this entry matches the user’s preference for whether to hear audio overdubs in order for this object to be viable.

=head2 S [boolean]
- (Optional) If specified, the value of this entry matches the user’s preference for whether to see subtitles in order for this object to be viable.

=head2 R [integer]
- (Optional) If specified, the system’s bandwidth (in bits per second) is greater than or equal to the value of this entry in order for this object to be viable.
NOTE 3 Equivalent to SMIL’s systemBitrate attribute.

=head2 D [dictionary]
- (Optional) A dictionary (see Table 269) specifying the minimum bit depth required in order for this object to be viable.
NOTE 4 Equivalent to SMIL’s systemScreenDepth attribute.

=head2 Z [dictionary]
- (Optional) A dictionary (see Table 270) specifying the minimum screen size required in order for this object to be viable.
NOTE 5 Equivalent to SMIL’s systemScreenSize attribute.

=head2 V [array]
- (Optional) An array of software identifier objects (see 13.2.7.4, “Software Identifier Dictionary”). If this entry is present and non-empty, the conforming reader is identified by one or more of the objects in the array in order for this object to be viable.

=head2 P [array]
- (Optional) An array containing one or two name objects specifying a minimum and optionally a maximum PDF language version, in the same format as the Version entry in the document catalog (see Table 28). If this entry is present and non-empty, the version of multimedia constructs fully supported by the conforming reader is within the specified range in order for this object to be viable.

=head2 L [array]
- (Optional) An array of language identifiers (see 14.9.2.2, “Language Identifiers”). If this entry is present and non-empty, the language in which the conforming reader is running exactly match a language identifier, or consist only of a primary code that matches the primary code of an identifier, in order for this object to be viable.
NOTE 6 Equivalent to SMIL’s systemLanguage attribute.

=end pod
