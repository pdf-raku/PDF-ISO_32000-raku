use v6;
role ISO_32000::Table_208-Additional_entries_specific_to_a_sound_action {
    method S {...};
    method Sound {...};
    method Volume {...};
    method Synchronous {...};
    method Repeat {...};
    method Mix {...};
}

=begin pod

=head1 Description

Table 208 – Additional entries specific to a sound action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Sound for a sound action.

=head2 Sound [stream]
- (Required) A sound object defining the sound that is played (see 13.3, “Sounds”).

=head2 Volume [number]
- (Optional) The volume at which to play the sound, in the range −1.0 to 1.0. Default value: 1.0.

=head2 Synchronous [boolean]
- (Optional) A flag specifying whether to play the sound synchronously or asynchronously. If this flag is true, the conforming reader retains control, allowing no further user interaction other than canceling the sound, until the sound has been completely played. Default value: false.

=head2 Repeat [boolean]
- (Optional) A flag specifying whether to repeat the sound indefinitely. If this entry is present, the Synchronous entry is ignored. Default value: false.

=head2 Mix [boolean]
- (Optional) A flag specifying whether to mix this sound with any other sound already playing. If this flag is false, any previously playing sound is stopped before starting this sound; this can be used to stop a repeating sound (see Repeat). Default value: false.

=end pod
