use v6;
role ISO_32000::Table_303-Entries_in_a_ThreeD_reference_dictionary {
    method Type {...};
    INIT {
        for "3DD" {
            my &m = method {...};
            &m.set_name($_);
            $?ROLE.^add_method($_, &m);
        }
    }
}

=begin pod

=head1 Description

Table 303 – Entries in a 3D reference dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is 3DRef for a 3D reference dictionary.

=head2 3DD [stream]
- (Required) The 3D stream (see 13.6.3, “3D Streams”) containing the specification of the 3D artwork.

=end pod
