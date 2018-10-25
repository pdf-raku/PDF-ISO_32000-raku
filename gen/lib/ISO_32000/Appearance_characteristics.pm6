use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Appearance_characteristics ../tables/Appearance_characteristics_entries.html

role ISO_32000::Appearance_characteristics {
    method R {...};	#| [integer] (Optional) The number of degrees by which the widget annotation shall be rotated counterclockwise relative to the page. The value shall be a multiple of 90. Default value: 0.
    method BC {...};	#| [array] (Optional) An array of numbers that shall be in the range 0.0 to 1.0 specifying the colour of the widget annotation’s border. The number of array elements determines the colour space in which the colour shall bedefined:
	#| 0 No colour; transparent
	#| 1DeviceGray
	#| 3DeviceRGB
	#| 4DeviceCMYK
    method BG {...};	#| [array] (Optional) An array of numbers that shall be in the range 0.0 to 1.0 specifying the colour of the widget annotation’s background. The number of array elements shall determine the colour space, as described for BC.
    method CA {...};	#| [text string] (Optional; button fields only) The widget annotation’s normal caption, which shall be displayed when it is not interacting with the user.
	#| Unlike the remaining entries listed in this Table, which apply only to widget annotations associated with pushbutton fields (see Link Pushbuttons in Link 12.7.4.2, “Button Fields” ), the CA entry may be used with any type of button field, including check boxes (see Link Check Boxes in Link 12.7.4.2, “Button Fields” ) and radio buttons ( Link Radio Buttons in Link 12.7.4.2, “Button Fields” ).
    method RC {...};	#| [text string] (Optional; pushbutton fields only) The widget annotation’s rollover caption, which shall be displayed when the user rolls the cursor into its active area without pressing the mouse button.
    method AC {...};	#| [text string] (Optional; pushbutton fields only) The widget annotation’s alternate (down) caption, which shall be displayed when the mouse button is pressed within its active area.
    method I {...};	#| [stream] (Optional; pushbutton fields only; shall be an indirect reference) A form XObject defining the widget annotation’s normal icon, which shall be displayed when it is not interacting with the user.
    method RI {...};	#| [stream] (Optional; pushbutton fields only; shall be an indirect reference) A form XObject defining the widget annotation’s rollover icon, which shall be displayed when the user rolls the cursor into its active area without pressing the mouse button.
    method IX {...};	#| [stream] (Optional; pushbutton fields only; shall be an indirect reference) A form XObject defining the widget annotation’s alternate (down) icon, which shall be displayed when the mouse button is pressed within its active area.
    method IF {...};	#| [dictionary] (Optional; pushbutton fields only) An icon fit dictionary (see Link Table 247 ) specifying how the widget annotation’s icon shall be displayed within its annotation rectangle. If present, the icon fit dictionary shall apply to all of the annotation’s icons (normal, rollover, and alternate).
    method TP {...};	#| [integer] (Optional; pushbutton fields only) A code indicating where to position the text of the widget annotation’s caption relative to its icon:
	#| 0 No icon; caption only
	#| 1 No caption; icon only
	#| 2 Caption below the icon
	#| 3 Caption above the icon
	#| 4 Caption to the right of the icon
	#| 5 Caption to the left of the icon
	#| 6 Caption overlaid directly on the icon
	#| Default value: 0.
}
