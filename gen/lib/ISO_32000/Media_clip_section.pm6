use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Media_clip_section ../tables/Media_clip_section_entries.html

role ISO_32000::Media_clip_section {
    method D {...};	#| [dictionary] (Required) The media clip section or media clip data object (the next-level media object) of which this media clip section object defines a continuous section.
    method Alt {...};	#| [array] (Optional) An array that provides alternate text descriptions for the media clip section in case it cannot be played; see Link 14.9.2.4, “Multi-language Text Arrays.” Span 
    method MH {...};	#| [dictionary] (Optional) A dictionary whose entries (see Link Ta b l e 278 ) shall be honoured for the media clip section to be considered viable.
    method BE {...};	#| [dictionary] (Optional) A dictionary whose entries (see Link Ta b l e 278 ) shall only be honoured in a “best effort” sense.
}
