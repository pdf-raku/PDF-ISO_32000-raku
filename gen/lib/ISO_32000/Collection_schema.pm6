use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Collection_schema ../tables/Collection_schema_entries.html

role ISO_32000::Collection_schema {
    method Type {...};	#| [name] (Optional) The type of PDF object that this dictionary describes; if present, shall be CollectionSchema for a collection schema dictionary.
    method Other keys {...};	#| [dictionary] (Optional) A collection field dictionary. Each key name is chosen at the discretion of the conforming writer. The key name shall be used to identify a corresponding collection item dictionary referenced from the file specification dictionary's CI entry (see CI key in Link Ta b l e 44 ).
}
