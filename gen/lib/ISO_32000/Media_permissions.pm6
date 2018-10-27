use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Media_permissions ../tables/Media_permissions_entries.html

role ISO_32000::Media_permissions {
    method Type {...};	#| [name] (Optional) The type of PDF object that this dictionary describes; if present, shall be MediaPermissions for a media permissions dictionary.
    method TF {...};	#| [ASCII string] (Optional) An ASCII string indicating the circumstances under which it is acceptable to write a temporary file in order to play a media clip. Valid values are:
	#| (TEMPNEVER) Never allowed.
	#| (TEMPEXTRACT) Allowed only if the document permissions allow content extraction; when bit 5 of the user access permissions (see Link Table 22 ) is set.
	#| (TEMPACCESS) Allowed only if the document permissions allow content extraction, including for accessibility purposes; when bits 5 or 10 of the user access permissions (see Link Table 22 ) are set, or both.
	#| (TEMPALWAYS) Always allowed.
	#| Default value: (TEMPNEVER).
	#| An unrecognized value shall be treated as (TEMPNEVER).
}
