use v6;
role ISO_32000::Table_283-Entries_in_a_media_screen_parameters_MH-BE_dictionary {
    method W {...};
    method B {...};
    method O {...};
    method M {...};
    method F {...};
}

=begin pod

=head1 Description

Table 283 – Entries in a media screen parameters MH/BE dictionary

=head1 Methods (Entries)

=head2 W [integer]
- (Optional) The type of window that the media object plays in:
0 A floating window
1 A full-screen window that obscures all other windows
2 A hidden window
3 The rectangle occupied by the screen annotation (see 12.5.6.18, “Screen Annotations”) associated with the media rendition
Default value: 3. Unrecognized value in MH: object is non-viable; in BE: treat as default value.

=head2 B [array]
- (Optional) An array of three numbers in the range 0.0 to 1.0 that specifies the components in the DeviceRGB colour space of the background colour for the rectangle in which the media is being played. This colour is used if the media object does not entirely cover the rectangle or if it has transparent sections. It is ignored for hidden windows.
Default value: implementation-defined. The conforming reader should choose a reasonable value based on the value of W.
EXAMPLE 1 A system default background colour for floating windows or a user-preferred background colour for full-screen windows. If a media format has an intrinsic background colour, B does not override it. However, the B colour is visible if the media has transparent areas or otherwise does not cover the entire window.

=head2 O [number]
- (Optional) A number in the range 0.0 to 1.0 specifying the constant opacity value that is used in painting the background colour specified by B. A value below 1.0 means the window is transparent.
EXAMPLE 2 Windows behind a floating window show through if the media does not cover the entire floating window. A value of 0.0 indicates full transparency and makes B irrelevant. It is ignored for full-screen and hidden windows. Default value: 1.0 (fully opaque).

=head2 M [integer]
- (Optional) A monitor specifier (see Table 293) that specifies which monitor in a multi-monitor system, a floating or full-screen window appears on. Ignored for other types.
Default value: 0 (document monitor). Unrecognized value in MH: object is non-viable; in BE: treat as default value.

=head2 F [dictionary]
- (Required if the value of W is 0; otherwise ignored) A floating window parameters dictionary (see Table 284) that specifies the size, position, and options used in displaying floating windows.

=end pod
