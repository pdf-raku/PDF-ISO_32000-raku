use v6;
role ISO_32000::Table_101-Entries_in_an_Optional_Content_Configuration_Dictionary {
    method Name {...};
    method Creator {...};
    method BaseState {...};
    method ON {...};
    method OFF {...};
    method Intent {...};
    method AS {...};
    method Order {...};
    method ListMode {...};
    method RBGroups {...};
    method Locked {...};
}

=begin pod

=head1 Description

Table 101 – Entries in an Optional Content Configuration Dictionary

=head1 Methods (Entries)

=head2 Name [text string]
- (Optional) A name for the configuration, suitable for presentation in a user interface.

=head2 Creator [text string]
- (Optional) Name of the application or feature that created this configuration dictionary.

=head2 BaseState [name]
- (Optional) Used to initialize the states of all the optional content groups in a document when this configuration is applied. The value of this entry is one of the following names:
ON The states of all groups is turned ON.
OFF The states of all groups is turned OFF.
Unchanged The states of all groups is left unchanged.
After this initialization, the contents of the ON and OFF arrays shall beprocessed, overriding the state of the groups included in the arrays.
Default value: ON.
If BaseState is present in the document’s default configuration dictionary, its value is ON.

=head2 ON [array]
- (Optional) An array of optional content groups whose state shall beset to ON when this configuration is applied.
If the BaseState entry is ON, this entry is redundant.

=head2 OFF [array]
- (Optional) An array of optional content groups whose state shall beset to OFF when this configuration is applied.
If the BaseState entry is OFF, this entry is redundant.

=head2 Intent [name or array]
- (Optional) A single intent name or an array containing any combination of names. it is used to determine which optional content groups’ states to consider and which to ignore in calculating the visibility of content (see 8.11.2.3, "Intent").
PDF defines two intent names, View and Design. In addition, the name All indicates the set of all intents, including those not yet defined. Default value: View. The value is View for the document’s default configuration.

=head2 AS [array]
- (Optional) An array of usage application dictionaries (see Table 103) specifying which usage dictionary categories (see Table 102) shall beconsulted by conforming readers to automatically set the states of optional content groups based on external factors, such as the current system language or viewing magnification, and when they is applied.

=head2 Order [array]
- (Optional) An array specifying the order for presentation of optional content groups in a conforming reader’s user interface. The array elements may include the following objects:
Optional content group dictionaries, whose Name entry shall bedisplayed in the user interface by the conforming reader.
Arrays of optional content groups which may be displayed by a conforming reader in a tree or outline structure. Each nested array may optionally have as its first element a text string to be used as a non-selectable label in a conforming reader’s user interface.
Text labels in nested arrays is used to present collections of related optional content groups, and not to communicate actual nesting of content inside multiple layers of groups (see EXAMPLE 1 in 8.11.4.3, "Optional Content Configuration Dictionaries"). To reflect actual nesting of groups in the content, such as for layers with sublayers, nested arrays of groups without a text label is used (see EXAMPLE 2 in 8.11.4.3, "Optional Content Configuration Dictionaries").
An empty array [] explicitly specifies that no groups is presented.
In the default configuration dictionary, the default value is an empty array; in other configuration dictionaries, the default is the Order value from the default configuration dictionary.
Any groups not listed in this array is not presented in any user interface that uses the configuration.

=head2 ListMode [name]
- (Optional) A name specifying which optional content groups in the Order array is displayed to the user. Valid values is:
AllPages Display all groups in the Order array.
VisiblePages Display only those groups in the Order array that are referenced by one or more visible pages.
Default value: AllPages.

=head2 RBGroups [array]
- (Optional) An array consisting of one or more arrays, each of which represents a collection of optional content groups whose states is intended to follow a radio button paradigm. That is, the state of at most one optional content group in each array is ON at a time. If one group is turned ON, all others is turned OFF. However, turning a group from ON to OFF does not force any other group to be turned ON.
An empty array [] explicitly indicates that no such collections exist.
In the default configuration dictionary, the default value is an empty array; in other configuration dictionaries, the default is the RBGroups value from the default configuration dictionary.

=head2 Locked [array]
- (Optional; PDF 1.6) An array of optional content groups that shall belocked when this configuration is applied. The state of a locked group cannot be changed through the user interface of a conforming reader. Conforming writers can use this entry to prevent the visibility of content that depends on these groups from being changed by users.
Default value: an empty array.
A conforming reader may allow the states of optional content groups from being changed by means other than the user interface, such as JavaScript or items in the AS entry of a configuration dictionary.

=end pod
