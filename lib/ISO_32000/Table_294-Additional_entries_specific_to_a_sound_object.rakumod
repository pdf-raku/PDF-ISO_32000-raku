use v6;
role ISO_32000::Table_294-Additional_entries_specific_to_a_sound_object {
    method Type {...};
    method R {...};
    method C {...};
    method B {...};
    method E {...};
    method CO {...};
    method CP {...};
}

=begin pod

=head1 Description

Table 294 – Additional entries specific to a sound object

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Sound for a sound object.

=head2 R [number]
- (Required) The sampling rate, in samples per second.

=head2 C [integer]
- (Optional) The number of sound channels. Default value: 1.

=head2 B [integer]
- (Optional) The number of bits per sample value per channel. Default value: 8.

=head2 E [name]
- (Optional) The encoding format for the sample data:
Raw Unspecified or unsigned values in the range 0 to 2B − 1
Signed Twos-complement values
muLaw m-law–encoded samples
ALaw A-law–encoded samples
Default value: Raw.

=head2 CO [name]
- (Optional) The sound compression format used on the sample data. (This is separate from any stream compression specified by the sound object’s Filter entry; see Table 5 and 7.4, “Filters.”) If this entry is absent, sound compression is not used; the data contains sampled waveforms that is played at R samples per second per channel.

=head2 CP [(various)]
- (Optional) Optional parameters specific to the sound compression format used.
No standard values have been defined for the CO and CP entries.

=end pod
