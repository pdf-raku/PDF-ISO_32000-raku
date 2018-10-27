use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Mimimum_screen_size ../tables/Mimimum_screen_size_entries.html

role ISO_32000::Mimimum_screen_size {
    method Type {...};	#| [name] (Optional) The type of PDF object that this dictionary describes; if present, shall be MinScreenSize for a rendition object.
    method V {...};	#| [array] (Required) An array containing two non-negative integers. The width and height (in pixels) of the monitor specified by M shall be greater than or equal to the values of the first and second integers in the array, respectively, in order for this object to be viable.
    method M {...};	#| [integer] (Optional) A monitor specifier (see Link Ta b l e 293 ) that specifies which monitor the value of V should be tested against. If the value is unrecognized, the object shall be not viable.
	#| Default value: 0.
}
