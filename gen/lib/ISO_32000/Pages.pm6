use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Pages ../tables/Pages_entries.html

role ISO_32000::Pages {
    method Type {...};	#| [name] (Required) The type of PDF object that this dictionary describes; shall be Pages for a page tree node.
    method Parent {...};	#| [dictionary] (Required except in root node; prohibited in the root node; shall be an indirect reference) The page tree node that is the immediate parent of this one.
    method Kids {...};	#| [array] (Required) An array of indirect references to the immediate children of this node. The children shall only be page objects or other page tree nodes.
    method Count {...};	#| [integer] (Required) The number of leaf nodes (page objects) that are descendants of this node within the page tree.
}
