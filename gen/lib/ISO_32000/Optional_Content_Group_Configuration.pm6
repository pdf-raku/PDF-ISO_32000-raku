use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Optional_Content_Group_Configuration ../tables/Optional_Content_Group_Configuration_entries.html

role ISO_32000::Optional_Content_Group_Configuration {
    method Name {...};	#| [text string] (Optional) A name for the configuration, suitable for presentation in a user interface.
    method Creator {...};	#| [text string] (Optional) Name of the application or feature that created this configuration dictionary.
    method BaseState {...};	#| [name] (Optional) Used to initialize the states of all the optional content groups in a document when this configuration is applied. The value of this entry shall be one of the following names:
	#| ON The states of all groups shall be turned ON.
	#| OFF The states of all groups shall be turned OFF.
	#| Unchanged The states of all groups shall be left unchanged.
	#| After this initialization, the contents of the ON and OFF arrays shall beprocessed, overriding the state of the groups included in the arrays.
	#| Default value: ON.
	#| If BaseState is present in the document’s default configuration dictionary, its value shall be ON.
    method ON {...};	#| [array] (Optional) An array of optional content groups whose state shall beset to ON when this configuration is applied.
	#| If the BaseState entry is ON, this entry is redundant.
    method OFF {...};	#| [array] (Optional) An array of optional content groups whose state shall beset to OFF when this configuration is applied.
	#| If the BaseState entry is OFF, this entry is redundant.
    method Intent {...};	#| [name or array] (Optional) A single intent name or an array containing any combination of names. it shall be used to determine which optional content groups’ states to consider and which to ignore in calculating the visibility of content (see Link 8.11.2.3, "Intent" ).
	#| PDF defines two intent names, View and Design. In addition, the name All shall indicate the set of all intents, including those not yet defined. Default value: View. The value shall be View for the document’s default configuration.
    method AS {...};	#| [array] (Optional) An array of usage application dictionaries (see Link Ta b l e 103 ) specifying which usage dictionary categories (see Link Table 102 ) shall be consulted by conforming readers to automatically set the states of optional content groups based on external factors, such as the current system language or viewing magnification, and when they shall beapplied.
    method Order {...};	#| [array] (Optional) An array specifying the order for presentation of optional content groups in a conforming reader’s user interface. The array elements may include the following objects:
	#| Optional content group dictionaries, whose Name entry shall bedisplayed in the user interface by the conforming reader.
	#| Arrays of optional content groups which may be displayed by a conforming reader in a tree or outline structure. Each nested array may optionally have as its first element a text string to be used as a non-selectable label in a conforming reader’s user interface.
	#| Text labels in nested arrays shall be used to present collections of related optional content groups, and not to communicate actual nesting of content inside multiple layers of groups (see Link EXAMPLE 1 in Link 8.11.4.3, "Optional Content Configuration Dictionaries" ). To reflect actual nesting of groups in the content, such as for layers with sublayers, nested arrays of groups without a text label shall be used (see Link EXAMPLE 2 in Link 8.11.4.3, "Optional Content Configuration Dictionaries" ).
	#| An empty array [] explicitly specifies that no groups shall bepresented.
	#| In the default configuration dictionary, the default value shall be an empty array; in other configuration dictionaries, the default shall be the Order value from the default configuration dictionary.
	#| Any groups not listed in this array shall not be presented in any user interface that uses the configuration.
    method ListMode {...};	#| [name] (Optional) A name specifying which optional content groups in the Order array shall be displayed to the user. Valid values shall be:
	#| AllPages Display all groups in the Order array.
	#| VisiblePages Display only those groups in the Order array that are referenced by one or more visible pages.
	#| Default value: AllPages.
    method RBGroups {...};	#| [array] (Optional) An array consisting of one or more arrays, each of which represents a collection of optional content groups whose states shall be intended to follow a radio button paradigm. That is, the state of at most one optional content group in each array shall be ON at a time. If one group is turned ON, all others shall be turned OFF. However, turning a group from ON to OFF does not force any other group to be turned ON.
	#| An empty array [] explicitly indicates that no such collections exist.
	#| In the default configuration dictionary, the default value shall be an empty array; in other configuration dictionaries, the default is the RBGroups value from the default configuration dictionary.
    method Locked {...};	#| [array] (Optional; PDF 1.6) An array of optional content groups that shall belocked when this configuration is applied. The state of a locked group cannot be changed through the user interface of a conforming reader. Conforming writers can use this entry to prevent the visibility of content that depends on these groups from being changed by users.
	#| Default value: an empty array.
	#| A conforming reader may allow the states of optional content groups from being changed by means other than the user interface, such as JavaScript or items in the AS entry of a configuration dictionary.
}
