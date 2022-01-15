use v6;
role ISO_32000::Table_366-Additional_entries_specific_to_a_trap_network_annotation {
    method Subtype {...};
    method LastModified {...};
    method Version {...};
    method AnnotStates {...};
    method FontFauxing {...};
}

=begin pod

=head1 Description

Table 366 – Additional entries specific to a trap network annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is TrapNet for a trap network annotation.

=head2 LastModified [date]
- (Required if Version and AnnotStates are absent; is absent if Version and AnnotStates are present; PDF 1.4) The date and time (see 7.9.4, “Dates”) when the trap network was most recently modified.

=head2 Version [array]
- (Required if AnnotStates is present; is absent if LastModifiedis present) An unordered array of all objects present in the page description at the time the trap networks were generated and that, if changed, could affect the appearance of the page. If present, the array includes the following objects:
• All content streams identified in the page object’s Contents entry (see 7.7.3.3, “Page Objects”)
• All resource objects (other than procedure sets) in the page’s resource dictionary (see 7.8.3, “Resource Dictionaries”)
• All resource objects (other than procedure sets) in the resource dictionaries of any form XObjects on the page (see 8.10, “Form XObjects”)
• All OPI dictionaries associated with XObjects on the page (see 14.11.7, “Open Prepress Interface (OPI)”)

=head2 AnnotStates [array]
- (Required if Version is present; is absent if LastModified is present) An array of name objects representing the appearance states (value of the AS entry) for annotations associated with the page. The appearance states is listed in the same order as the annotations in the page’s Annots array (see 7.7.3.3, “Page Objects”). For an annotation with no AS entry, the corresponding array element is null. No appearance state is included for the trap network annotation itself.

=head2 FontFauxing [array]
- (Optional) An array of font dictionaries representing fonts that were fauxed (replaced by substitute fonts) during the generation of trap networks for the page.

=end pod
