use v6;
#  -- DO NOT EDIT --
# generated by: ../../bin/make-modules.p6 --role-name=ISO_32000::Bead ../tables/Bead_entries.html

role ISO_32000::Bead {
    method Type {...};	#| [name] (Optional) The type of PDF object that this dictionary describes; if present, shall be Bead for a bead dictionary.
    method T {...};	#| [dictionary] (Required for the first bead of a thread; optional for all others; shall be an indirect reference) The thread to which this bead belongs.
	#| (PDF 1.1) This entry shall be permitted only for the first bead of a thread.
	#| (PDF 1.2) It shall be permitted for any bead but required only for the first.
    method N {...};	#| [dictionary] (Required; shall be an indirect reference) The next bead in the thread. In the last bead, this entry shall refer to the first bead.
    method V {...};	#| [dictionary] (Required; shall be an indirect reference) The previous bead in the thread. In the first bead, this entry shall refer to the last bead.
    method P {...};	#| [dictionary] (Required; shall be an indirect reference) The page object representing the page on which this bead appears.
    method R {...};	#| [rectangle] (Required) A rectangle specifying the location of this bead on the page.
}
