use v6;
# generated by: ../../etc/make-modules.p6 --role-name=ISO_32000::Three-D_activation ../tables/Three-D_activation_entries.html

#| PDF 32000-1:2008 Table 299 – Entries in a 3D activation dictionary
role ISO_32000::Three-D_activation {
    method A {...};
    method AIS {...};
    method D {...};
    method DIS {...};
    method TB {...};
    method NP {...};

=begin pod

=head1 Methods (Entries)

=head2 A [name]
- (Optional) A name specifying the circumstances under which the annotation is activated. Valid values are:
PO The annotation is activated as soon as the page containing the annotation is opened.
PV The annotation is activated as soon as any part of the page containing the annotation becomes visible.
XA The annotation shall remain inactive until explicitly activated by a script or user action.
NOTE 1 At any one time, only a single page is considered open in a conforming reader, even though more than one page may be visible, depending on the page layout. Default value: XA.
NOTE 2 For performance reasons, documents intended for viewing in a web browser should use explicit activation (XA). In non-interactive applications, such as printing systems or aggregating conforming reader, PO and PV indicate that the annotation is activated when the page is printed or placed; XA indicates that the annotation shall never be activated and the normal appearance is used.

=head2 AIS [name]
- (Optional) A name specifying the state of the artwork instance upon activation of the annotation. Valid values are:
IThe artwork is instantiated, but real-time script-driven animations is disabled.
L Real-time script-driven animations is enabled if present; if not, the artwork is instantiated.
Default value: L.
NOTE 3 In non-interactive conforming readers, the artwork is instantiated and scripts is disabled.

=head2 D [name]
- (Optional) A name specifying the circumstances under which the annotation is deactivated. Valid values are:
PC The annotation is deactivated as soon as the page is closed.
PI The annotation is deactivated as soon as the page containing the annotation becomes invisible.
XD The annotation shall remain active until explicitly deactivated by a script or user action.
NOTE 4 At any one time, only a single page is considered open in the conforming reader, even though more than one page may be visible, depending on the page layout. Default value: PI.

=head2 DIS [name]
- (Optional) A name specifying the state of the artwork instance upon deactivation of the annotation. Valid values are U (uninstantiated), I(instantiated), and L (live). Default value: U.
NOTE 5 If the value of this entry is L, uninstantiation of instantiated artwork is necessary unless it has been modified. Uninstantiation is never required in non-interactive conforming readers.

=head2 TB [boolean]
- (Optional; PDF 1.7) A flag indicating the default behavior of an interactive toolbar associated with this annotation. If true, a toolbar is displayed by default when the annotation is activated and given focus. If false, a toolbar shall not be displayed by default.
NOTE 6 Typically, a toolbar is positioned in proximity to the 3D annotation. Default value: true.

=head2 NP [boolean]
- (Optional; PDF 1.7) A flag indicating the default behavior of the user interface for viewing or managing information about the 3D artwork. Such user interfaces can enable navigation to different views or can depict the hierarchy of the objects in the artwork (the model tree). If true, the user interface should be made visible when the annotation is activated. If false, the user interface should not be made visible by default.
Default value: false

=end pod
}