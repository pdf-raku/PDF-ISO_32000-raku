use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Check_box_and_radio_button_additional ../tables/Check_box_and_radio_button_additional_entries.html

role ISO_32000::Check_box_and_radio_button_additional {
    method Opt {...};	#| [array of text strings] (Optional; inheritable; PDF 1.4) An array containing one entry for each widget annotation in the Kids array of the radio button or check box field. Each entry shall be a text string representing the on state of the corresponding widget annotation.
	#| When this entry is present, the names used to represent the on state in the APdictionary of each annotation (for example, /1, /2) numerical position (starting with 0) of the annotation in the Kids array, encoded as a name object. This allows distinguishing between the annotations even if two or more of them have the same value in the Opt array.
}