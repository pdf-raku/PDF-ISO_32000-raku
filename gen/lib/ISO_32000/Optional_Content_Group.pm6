use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Optional_Content_Group ../tables/Optional_Content_Group_entries.html

role ISO_32000::Optional_Content_Group {
    method Type {...};	#| [name] (Required) The type of PDF object that this dictionary describes; shall beOCG for an optional content group dictionary.
    method Name {...};	#| [text string] (Required) The name of the optional content group, suitable for presentation in a reader’s user interface.
    method Intent {...};	#| [name or array] (Optional) A single intent name or an array containing any combination of names. PDF defines two names, View and Design, that may indicate the intended use of the graphics in the group. A conforming reader may choose to use only groups that have a specific intent and ignore others.
	#| Default value: View. See Link 8.11.2.3, "Intent" for more information.
    method Usage {...};	#| [dictionary] (Optional) A usage dictionary describing the nature of the content controlled by the group. It may be used by features that automatically control the state of the group based on outside factors. See Link 8.11.4.4, "Usage and Usage Application Dictionaries" for more information.
}
