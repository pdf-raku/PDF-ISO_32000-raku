use v6;
role ISO_32000::Table_153-Entries_in_an_outline_item_dictionary {
    method Title {...};
    method Parent {...};
    method Prev {...};
    method Next {...};
    method First {...};
    method Last {...};
    method Count {...};
    method Dest {...};
    method A {...};
    method SE {...};
    method C {...};
    method F {...};
}

=begin pod

=head1 Description

Table 153 – Entries in an outline item dictionary

=head1 Methods (Entries)

=head2 Title [text string]
- (Required) The text that is displayed on the screen for this item.

=head2 Parent [dictionary]
- (Required; is an indirect reference) The parent of this item in the outline hierarchy. The parent of a top-level item is the outline dictionary itself.

=head2 Prev [dictionary]
- (Required for all but the first item at each level; is an indirect reference) The previous item at this outline level.

=head2 Next [dictionary]
- (Required for all but the last item at each level; is an indirect reference) The next item at this outline level.

=head2 First [dictionary]
- (Required if the item has any descendants; is an indirect reference) The first of this item’s immediate children in the outline hierarchy.

=head2 Last [dictionary]
- (Required if the item has any descendants; is an indirect reference) The last of this item’s immediate children in the outline hierarchy.

=head2 Count [integer]
- (Required if the item has any descendants) If the outline item is open, Count is the sum of the number of visible descendent outline items at all levels. The number of visible descendent outline items is determined by the following recursive process:
Step 1. Initialize Count to zero.
Step 2. Add to Count the number of immediate children. During repetitions of this step, update only the Count of the original outline item.
Step 3. For each of those immediate children whose Count is positive and non-zero, repeat steps 2 and 3.
If the outline item is closed, Count is negative and its absolute value is the number of descendants that would be visible if the outline item were opened.

=head2 Dest [name, byte string, or array]
- (Optional; is not present if an A entry is present) The destination that is displayed when this item is activated (see 12.3.2, “Destinations”).

=head2 A [dictionary]
- (Optional; PDF 1.1; is not present if a Dest entry is present) The action that is performed when this item is activated (see 12.6, “Actions”).

=head2 SE [dictionary]
- (Optional; PDF 1.3; is an indirect reference) The structure element to which the item refers (see 14.7.2, “Structure Hierarchy”).
(PDF 1.0) An item may also specify a destination (Dest) corresponding to an area of a page where the contents of the designated structure element are displayed.

=head2 C [array]
- (Optional; PDF 1.4) An array of three numbers in the range 0.0 to 1.0, representing the components in the DeviceRGB colour space of the colour that is used for the outline entry’s text. Default value: [ 0.0 0.0 0.0 ].

=head2 F [integer]
- (Optional; PDF 1.4) A set of flags specifying style characteristics for displaying the outline item’s text (see Table 154). Default value: 0.

=end pod
