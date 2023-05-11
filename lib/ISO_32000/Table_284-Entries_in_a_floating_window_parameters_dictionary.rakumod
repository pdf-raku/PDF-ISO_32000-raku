use v6;
role ISO_32000::Table_284-Entries_in_a_floating_window_parameters_dictionary {
    method Type {...};
    method D {...};
    method RT {...};
    method P {...};
    method O {...};
    method T {...};
    method UC {...};
    method R {...};
    method TT {...};
}

=begin pod

=head1 Description

Table 284 – Entries in a floating window parameters dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is FWParams for a floating window parameters dictionary.

=head2 D [array]
- (Required) An array containing two non-negative integers that represents the floating window’s width and height, in pixels, respectively. These values corresponds to the dimensions of the rectangle in which the media plays, not including such items as title bar and resizing handles.

=head2 RT [integer]
- (Optional) The window relative to which the floating window is positioned:
0 The document window
1 The application window
2 The full virtual desktop
3 The monitor specified by M in the media screen parameters MH or BE dictionary (see 9.22)
Default value: 0.

=head2 P [integer]
- (Optional) The location where the floating window (including such items as title bar and resizing handles) is positioned relative to the window specified by RT:
0 Upper-left corner
1 Upper center
2 Upper-right corner
3Center left
4Center
5Center right
6 Lower-left corner
7 Lower center
8 Lower-right corner
Default value: 4.

=head2 O [integer]
- (Optional) Specifies what occurs if the floating window is positioned totally or partially offscreen (that is, not visible on any physical monitor):
0 Take no special action
1 Move and/or resize the window so that it is on-screen
2 Consider the object to be non-viable
Default value: 1

=head2 T [boolean]
- (Optional) If true, the floating window has a title bar. Default value: true.

=head2 UC [boolean]
- (Optional; meaningful only if T is true) If true, the floating window includes user interface elements that allow a user to close a floating window.
Default value: true

=head2 R [integer]
- (Optional) Specifies whether the floating window may be resized by a user:
0 May not be resized
1 May be resized only if aspect ratio is preserved
2 May be resized without preserving aspect ratio
Default value: 0.

=head2 TT [array]
- (Optional; meaningful only if T is true) An array providing text to display on the floating window’s title bar. See 14.9.2.4, “Multi-language Text Arrays.” If this entry is not present, the conforming reader may provide default text.

=end pod
