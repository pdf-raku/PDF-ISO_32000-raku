use v6;
role ISO_32000::Table_322-Entries_in_the_structure_tree_root {
    method Type {...};
    method K {...};
    method IDTree {...};
    method ParentTree {...};
    method ParentTreeNextKey {...};
    method RoleMap {...};
    method ClassMap {...};
}

=begin pod

=head1 Description

Table 322 – Entries in the structure tree root

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is StructTreeRoot for a structure tree root.

=head2 K [dictionary or array]
- (Optional) The immediate child or children of the structure tree root in the structure hierarchy. The value may be either a dictionary representing a single structure element or an array of such dictionaries.

=head2 IDTree [name tree]
- (Required if any structure elements have element identifiers) A name tree that maps element identifiers (see Table 323) to the structure elements they denote.

=head2 ParentTree [number tree]
- (Required if any structure element contains content items) A number tree (see 7.9.7, “Number Trees”) used in finding the structure elements to which content items belong. Each integer key in the number tree corresponds to a single page of the document or to an individual object (such as an annotation or an XObject) that is a content item in its own right. The integer key is the value of the StructParent or StructParents entry in that object (see 14.7.4.4, “Finding Structure Elements from Content Items”). The form of the associated value depends on the nature of the object:
For an object that is a content item in its own right, the value is an indirect reference to the object’s parent element (the structure element that contains it as a content item).
For a page object or content stream containing marked-content sequences that are content items, the value is an array of references to the parent elements of those marked-content sequences.
See 14.7.4.4, “Finding Structure Elements from Content Items” for further discussion.

=head2 ParentTreeNextKey [integer]
- (Optional) An integer greater than any key in the parent tree, is used as a key for the next entry added to the tree.

=head2 RoleMap [dictionary]
- (Optional) A dictionary that maps the names of structure types used in the document to their approximate equivalents in the set of standard structure types (see 14.8.4, “Standard Structure Types”).

=head2 ClassMap [dictionary]
- (Optional) A dictionary that maps name objects designating attribute classes to the corresponding attribute objects or arrays of attribute objects (see 14.7.5.2, “Attribute Classes”).

=end pod
