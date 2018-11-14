# PDF-ISO_32000-p6

This library contains XHTML tables that have been mined from the PDF-32000 1.7 specification.

Roles have been generated for tables that represent PDF obbjects:

The roles are named ISO_32000::Xxxx and contain documentation and for each entry in the role, e.g.:


```
% p6doc ISO_320000:Catalog
```

The roles also contain [method stubs](https://docs.perl6.org/language/objects#Stubs) for the entries that need to be implemented for the role. For example:

```
% cat << EOF > lib/Catalog.pm6
use ISO_32000::Catalog;
class Catalog does ISO_32000::Catalog {
}
EOF
% perl6 -I lib -M Catalog
===SORRY!=== Error while compiling /tmp/lib/Catalog.pm6 (Catalog)
Method 'SpiderInfo' must be implemented by Catalog because it is required by roles: ISO_32000::Catalog.
at lib/Catalog.pm6 (Catalog):1
```

===SORRY!=== Error while compiling /tmp/lib/Catalog.pm6 (Catalog)
Method 'SpiderInfo' must be implemented by Catalog because it is required by roles: ISO_32000::Catalog.

This module contains:

- a copy of the [PDF-32000 specification](src/PDF32000_2008.pdf)
- [XML tables](blob/master/gen/tables) extracted from the above
- [generated interface roles](blob/master/gen/lib/ISO_32000) for building and validating PDF objects
- scripts and Makefiles for regenerating the XML tables and roles

todo: runtime introspection of resources and generated artifiacts, e.g.:

```
use PDF::ISO_32000;
PDF::ISO_32000.table[28].xhtml;          # ?? access extracted xhtml by table number ??
PDF::ISO_32000.table[28].json;           # ?? access converted json by table number ??
PDF::ISO_32000.table<Catalog>.interface; # ?? access generated role by table name ??
```

## Scripts in this Distribution

##### `pdf-struct-dump.p6 --password=Xxxx --page=i --max-depth=j --search-tag=Ttt --select=k --obj-num=l --gen-num=m --render --atts --debug src/PDF32000_2008.pdf`

Dumps tagged PDF content as XML.

At the moment just does enough to semi-reliabily extract content from the PDF ISO-32000 specification documents. Could evolve into a general purpose tool for mining elements from tagged PDF's. 



ISO_32000 Role|Entry
----|-----
[Action_common](/gen/lib/ISO_32000/Action_common.pm6)|Type S Next
[Additional_encryption](/gen/lib/ISO_32000/Additional_encryption.pm6)|R O U P EncryptMetadata
[Alternate_Image](/gen/lib/ISO_32000/Alternate_Image.pm6)|Image DefaultForPrinting OC
[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6)|E X D U Fo Bl PO PC PV PI
[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6)|Type Subtype Rect Contents P NM M F AP AS Border C StructParent OC
[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6)|T Popup CA RC CreationDate IRT Subj RT IT ExData
[Appearance](/gen/lib/ISO_32000/Appearance.pm6)|N R D
[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6)|R BC BG CA RC AC I RI IX IF TP
[Artifact](/gen/lib/ISO_32000/Artifact.pm6)|Type BBox Attached Subtype
[Attribute_object](/gen/lib/ISO_32000/Attribute_object.pm6)|O
[Attribute_object_for_user_properties](/gen/lib/ISO_32000/Attribute_object_for_user_properties.pm6)|O P
[Bead](/gen/lib/ISO_32000/Bead.pm6)|Type T N V P R
[Border_effect](/gen/lib/ISO_32000/Border_effect.pm6)|S I
[Border_style](/gen/lib/ISO_32000/Border_style.pm6)|Type W S D
[Box_colour_information](/gen/lib/ISO_32000/Box_colour_information.pm6)|CropBox BleedBox TrimBox ArtBox
[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6)|Type Subtype BaseFont CIDSystemInfo FontDescriptor DW W DW2 W2 CIDToGIDMap
[CIDFont_descriptor_additional](/gen/lib/ISO_32000/CIDFont_descriptor_additional.pm6)|Style Lang FD CIDSet
[CIDSystemInfo](/gen/lib/ISO_32000/CIDSystemInfo.pm6)|Registry Ordering Supplement
[CMap_stream](/gen/lib/ISO_32000/CMap_stream.pm6)|Type CMapName CIDSystemInfo WMode UseCMap
[CalGray_colour_space](/gen/lib/ISO_32000/CalGray_colour_space.pm6)|WhitePoint BlackPoint Gamma
[CalRGB_colour_space](/gen/lib/ISO_32000/CalRGB_colour_space.pm6)|WhitePoint BlackPoint Gamma Matrix
[Caret_annotation_additional](/gen/lib/ISO_32000/Caret_annotation_additional.pm6)|Subtype RD Sy
[Catalog](/gen/lib/ISO_32000/Catalog.pm6)|Type Version Extensions Pages PageLabels Names Dests ViewerPreferences PageLayout PageMode Outlines Threads OpenAction AA URI AcroForm Metadata StructTreeRoot MarkInfo Lang SpiderInfo OutputIntents PieceInfo OCProperties Perms Legal Requirements Collection NeedsRendering
[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)|Dests AP JavaScript Pages Templates IDS URLS EmbeddedFiles AlternatePresentations Renditions
[Catalog_additional_actions](/gen/lib/ISO_32000/Catalog_additional_actions.pm6)|WC WS DS WP DP
[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6)|Type Ff Subject SubjectDN KeyUsage Issuer OID URL URLType
[Check_box_and_radio_button_additional](/gen/lib/ISO_32000/Check_box_and_radio_button_additional.pm6)|Opt
[Choice_field_additional](/gen/lib/ISO_32000/Choice_field_additional.pm6)|Opt TI I
[Collection](/gen/lib/ISO_32000/Collection.pm6)|Type Schema D View Sort
[Collection_field](/gen/lib/ISO_32000/Collection_field.pm6)|Type Subtype N O V E
[Collection_schema](/gen/lib/ISO_32000/Collection_schema.pm6)|Type
[Collection_sort](/gen/lib/ISO_32000/Collection_sort.pm6)|Type S A
[Cross_reference_stream](/gen/lib/ISO_32000/Cross_reference_stream.pm6)|Type Size Index Prev W
[Data](/gen/lib/ISO_32000/Data.pm6)|LastModified Private
[DeviceN_colour_space_attributes](/gen/lib/ISO_32000/DeviceN_colour_space_attributes.pm6)|Subtype Colorants Process MixingHints
[DeviceN_mixing_hints](/gen/lib/ISO_32000/DeviceN_mixing_hints.pm6)|Solidities PrintingOrder DotGain
[DeviceN_process](/gen/lib/ISO_32000/DeviceN_process.pm6)|ColorSpace Components
[DocMDP_transform](/gen/lib/ISO_32000/DocMDP_transform.pm6)|Type P V
[Embedded_file_parameter](/gen/lib/ISO_32000/Embedded_file_parameter.pm6)|Size CreationDate ModDate Mac CheckSum
[Embedded_file_stream](/gen/lib/ISO_32000/Embedded_file_stream.pm6)|Type Subtype Params
[Embedded_font_stream_additional](/gen/lib/ISO_32000/Embedded_font_stream_additional.pm6)|Length1 Length2 Length3 Subtype Metadata
[Embedded_goto_action_additional](/gen/lib/ISO_32000/Embedded_goto_action_additional.pm6)|S F D NewWindow T
[Encoding](/gen/lib/ISO_32000/Encoding.pm6)|Type BaseEncoding Differences
[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6)|Filter SubFilter V Length CF StmF StrF EFF
[FDF_annotation_additional](/gen/lib/ISO_32000/FDF_annotation_additional.pm6)|Page
[FDF_catalog](/gen/lib/ISO_32000/FDF_catalog.pm6)|Version FDF
[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6)|F ID Fields Status Pages Encoding Annots Differences Target EmbeddedFDFs JavaScript
[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)|Kids T V Ff SetFf ClrFf F SetF ClrF AP APRef IF Opt A AA RV
[FDF_named_page_reference](/gen/lib/ISO_32000/FDF_named_page_reference.pm6)|Name F
[FDF_page](/gen/lib/ISO_32000/FDF_page.pm6)|Templates Info
[FDF_template](/gen/lib/ISO_32000/FDF_template.pm6)|TRef Fields Rename
[FDF_trailer](/gen/lib/ISO_32000/FDF_trailer.pm6)|Root
[FieldMDP_transform](/gen/lib/ISO_32000/FieldMDP_transform.pm6)|Type Action Fields V
[Field_common](/gen/lib/ISO_32000/Field_common.pm6)|FT Parent Kids T TU TM Ff V DV AA
[File_attachment_annotation_additional](/gen/lib/ISO_32000/File_attachment_annotation_additional.pm6)|Subtype FS Name
[File_specification](/gen/lib/ISO_32000/File_specification.pm6)|Type FS F UF DOS Mac Unix ID V EF RF Desc CI
[File_trailer](/gen/lib/ISO_32000/File_trailer.pm6)|Size Prev Root Encrypt Info ID
[Fixed_print](/gen/lib/ISO_32000/Fixed_print.pm6)|Type Matrix H V
[Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6)|Type D RT P O T UC R TT
[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)|Type FontName FontFamily FontStretch FontWeight Flags FontBBox ItalicAngle Ascent Descent Leading CapHeight XHeight StemV StemH AvgWidth MaxWidth MissingWidth FontFile FontFile2 FontFile3 CharSet
[Form_additional_actions](/gen/lib/ISO_32000/Form_additional_actions.pm6)|K F V C
[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6)|Subtype DA Q RC DS CL IT BE RD BS LE
[Function_common](/gen/lib/ISO_32000/Function_common.pm6)|FunctionType Domain Range
[Goto_3D_view_action_additional](/gen/lib/ISO_32000/Goto_3D_view_action_additional.pm6)|S TA V
[Goto_action_additional](/gen/lib/ISO_32000/Goto_action_additional.pm6)|S D
[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)|Type LW LC LJ ML D RI OP op OPM Font BG BG2 UCR UCR2 TR TR2 HT FL SM SA BM SMask CA ca AIS TK
[Group_Attributes_common](/gen/lib/ISO_32000/Group_Attributes_common.pm6)|Type S
[Hide_action_additional](/gen/lib/ISO_32000/Hide_action_additional.pm6)|S T H
[ICC_profile](/gen/lib/ISO_32000/ICC_profile.pm6)|N Alternate Range Metadata
[Icon_fit](/gen/lib/ISO_32000/Icon_fit.pm6)|SW S A FB
[Image](/gen/lib/ISO_32000/Image.pm6)|Type Subtype Width Height ColorSpace BitsPerComponent Intent ImageMask Mask Decode Interpolate Alternates SMask SMaskInData Name StructParent ID OPI Metadata OC
[Import-data_action_additional](/gen/lib/ISO_32000/Import-data_action_additional.pm6)|S F
[Info](/gen/lib/ISO_32000/Info.pm6)|Title Author Subject Keywords Creator Producer CreationDate ModDate Trapped
[Ink_annotation_additional](/gen/lib/ISO_32000/Ink_annotation_additional.pm6)|Subtype InkList BS
[Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6)|BitsPerComponent ColorSpace Decode DecodeParms Filter Height ImageMask Intent Interpolate Width
[Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6)|Fields NeedAppearances SigFlags CO DR DA Q XFA
[JavaScript](/gen/lib/ISO_32000/JavaScript.pm6)|Before After AfterPermsReady Doc
[JavaScript_action_additional](/gen/lib/ISO_32000/JavaScript_action_additional.pm6)|S JS
[Lab_colour_space](/gen/lib/ISO_32000/Lab_colour_space.pm6)|WhitePoint BlackPoint Range
[Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6)|S F Win Mac Unix NewWindow
[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6)|Subtype L BS LE IC LL LLE Cap IT LLO CP Measure CO
[Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6)|Linearized L H O E N T P
[Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6)|Subtype A Dest H PA QuadPoints BS
[Mark_information](/gen/lib/ISO_32000/Mark_information.pm6)|Marked UserProperties Suspects
[Marked_content_reference](/gen/lib/ISO_32000/Marked_content_reference.pm6)|Type Pg Stm StmOwn MCID
[Measure](/gen/lib/ISO_32000/Measure.pm6)|Type Subtype
[Media_clip_common](/gen/lib/ISO_32000/Media_clip_common.pm6)|Type S N
[Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6)|D CT P Alt PL MH BE
[Media_clip_data_MH-BE](/gen/lib/ISO_32000/Media_clip_data_MH-BE.pm6)|BU
[Media_clip_section](/gen/lib/ISO_32000/Media_clip_section.pm6)|D Alt MH BE
[Media_clip_section_MH-BE](/gen/lib/ISO_32000/Media_clip_section_MH-BE.pm6)|B E
[Media_duration](/gen/lib/ISO_32000/Media_duration.pm6)|Type S T
[Media_offset_common](/gen/lib/ISO_32000/Media_offset_common.pm6)|Type S
[Media_offset_frame](/gen/lib/ISO_32000/Media_offset_frame.pm6)|F
[Media_offset_marker](/gen/lib/ISO_32000/Media_offset_marker.pm6)|M
[Media_offset_time](/gen/lib/ISO_32000/Media_offset_time.pm6)|T
[Media_permissions](/gen/lib/ISO_32000/Media_permissions.pm6)|Type TF
[Media_play_parameters](/gen/lib/ISO_32000/Media_play_parameters.pm6)|Type PL MH BE
[Media_player_info](/gen/lib/ISO_32000/Media_player_info.pm6)|Type PID MH BE
[Media_players](/gen/lib/ISO_32000/Media_players.pm6)|Type MU A NU
[Media_rendition](/gen/lib/ISO_32000/Media_rendition.pm6)|C P SP
[Media_screen_parameters](/gen/lib/ISO_32000/Media_screen_parameters.pm6)|Type MH BE
[Media_screen_parameters_MH-BE](/gen/lib/ISO_32000/Media_screen_parameters_MH-BE.pm6)|W B O M F
[Metadata_additional](/gen/lib/ISO_32000/Metadata_additional.pm6)|Metadata
[Metadata_stream_additional](/gen/lib/ISO_32000/Metadata_stream_additional.pm6)|Type Subtype
[Mimimum_screen_size](/gen/lib/ISO_32000/Mimimum_screen_size.pm6)|Type V M
[Minimum_bit_depth](/gen/lib/ISO_32000/Minimum_bit_depth.pm6)|Type V M
[Movie](/gen/lib/ISO_32000/Movie.pm6)|F Aspect Rotate Poster
[Movie_action_additional](/gen/lib/ISO_32000/Movie_action_additional.pm6)|S Annotation T Operation
[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)|Start Duration Rate Volume ShowControls Mode Synchronous FWScale FWPosition
[Movie_annotation_additional](/gen/lib/ISO_32000/Movie_annotation_additional.pm6)|Subtype T Movie A
[Name_tree_node](/gen/lib/ISO_32000/Name_tree_node.pm6)|Kids Names Limits
[Named_action_additional](/gen/lib/ISO_32000/Named_action_additional.pm6)|S N
[Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6)|Type NA PA Next Prev Dur
[Number_format](/gen/lib/ISO_32000/Number_format.pm6)|Type U C F D FD RT RD PS SS O
[Number_tree_node](/gen/lib/ISO_32000/Number_tree_node.pm6)|Kids Nums Limits
[OPI_version](/gen/lib/ISO_32000/OPI_version.pm6)|
[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)|Type Version F ID Comments Size CropRect CropFixed Position Resolution ColorType Color Tint Overprint ImageType GrayMap Transparency Tags
[OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)|Type Version F MainImage Tags Size CropRect Overprint Inks IncludedImageDimensions IncludedImageQuality
[Object_reference](/gen/lib/ISO_32000/Object_reference.pm6)|Type Pg Obj
[Object_stream](/gen/lib/ISO_32000/Object_stream.pm6)|Type N First Extends
[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)|Name Creator BaseState ON OFF Intent AS Order ListMode RBGroups Locked
[Optional_Content_Group](/gen/lib/ISO_32000/Optional_Content_Group.pm6)|Type Name Intent Usage
[Optional_Content_Group_Application](/gen/lib/ISO_32000/Optional_Content_Group_Application.pm6)|Event OCGs Category
[Optional_Content_Group_Membership](/gen/lib/ISO_32000/Optional_Content_Group_Membership.pm6)|Type OCGs P VE
[Optional_Content_Group_Properties](/gen/lib/ISO_32000/Optional_Content_Group_Properties.pm6)|OCGs D Configs
[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)|CreatorInfo Language Export Zoom Print View User PageElement
[Outline](/gen/lib/ISO_32000/Outline.pm6)|Type First Last Count
[Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)|Title Parent Prev Next First Last Count Dest A SE C F
[Output_intent](/gen/lib/ISO_32000/Output_intent.pm6)|Type S OutputCondition OutputConditionIdentifier RegistryName Info DestOutputProfile
[Page-piece](/gen/lib/ISO_32000/Page-piece.pm6)|
[Page](/gen/lib/ISO_32000/Page.pm6)|Type Parent LastModified Resources MediaBox CropBox BleedBox TrimBox ArtBox BoxColorInfo Contents Rotate Group Thumb B Dur Trans Annots AA Metadata PieceInfo StructParents ID PZ SeparationInfo Tabs TemplateInstantiated PresSteps UserUnit VP
[Page_additional_actions](/gen/lib/ISO_32000/Page_additional_actions.pm6)|O C
[Page_label](/gen/lib/ISO_32000/Page_label.pm6)|Type S P St
[Pages](/gen/lib/ISO_32000/Pages.pm6)|Type Parent Kids Count
[Permissions](/gen/lib/ISO_32000/Permissions.pm6)|DocMDP UR3
[Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6)|Subtype Vertices LE BS IC BE IT Measure
[Popup_annotation_additional](/gen/lib/ISO_32000/Popup_annotation_additional.pm6)|Subtype Parent Open
[Postscript_XObject](/gen/lib/ISO_32000/Postscript_XObject.pm6)|Type Subtype Level1
[Printers_mark_annotation](/gen/lib/ISO_32000/Printers_mark_annotation.pm6)|Subtype MN
[Printers_mark_form](/gen/lib/ISO_32000/Printers_mark_form.pm6)|MarkStyle Colorants
[Projection](/gen/lib/ISO_32000/Projection.pm6)|Subtype CS F N FOV PS OS OB
[Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6)|R X Y D A T S O CYX
[Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6)|Subtype QuadPoints IC RO OverlayText Repeat DA Q
[Reference](/gen/lib/ISO_32000/Reference.pm6)|F Page ID
[Render_mode](/gen/lib/ISO_32000/Render_mode.pm6)|Type Subtype AC FC O CV
[Rendition_MH-BE](/gen/lib/ISO_32000/Rendition_MH-BE.pm6)|C
[Rendition_action_additional](/gen/lib/ISO_32000/Rendition_action_additional.pm6)|S R AN OP JS
[Rendition_common](/gen/lib/ISO_32000/Rendition_common.pm6)|Type S N MH BE
[Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6)|Type A C O S R D Z V P L
[Requirement_common](/gen/lib/ISO_32000/Requirement_common.pm6)|Type S RH
[Requirement_handler](/gen/lib/ISO_32000/Requirement_handler.pm6)|Type S Script
[Reset_form_action](/gen/lib/ISO_32000/Reset_form_action.pm6)|S Fields Flags
[Resource](/gen/lib/ISO_32000/Resource.pm6)|ExtGState ColorSpace Pattern Shading XObject Font ProcSet Properties
[Rubber_stamp_annotation_additional](/gen/lib/ISO_32000/Rubber_stamp_annotation_additional.pm6)|Subtype Name
[Screen_annotation_additional](/gen/lib/ISO_32000/Screen_annotation_additional.pm6)|Subtype T MK A AA
[Selector_rendition](/gen/lib/ISO_32000/Selector_rendition.pm6)|R
[Separation](/gen/lib/ISO_32000/Separation.pm6)|Pages DeviceColorant ColorSpace
[Set-OCG-state_action_additional](/gen/lib/ISO_32000/Set-OCG-state_action_additional.pm6)|S State PreserveRB
[Shading_common](/gen/lib/ISO_32000/Shading_common.pm6)|ShadingType ColorSpace Background BBox AntiAlias
[Signature](/gen/lib/ISO_32000/Signature.pm6)|Type Filter SubFilter Contents Cert ByteRange Reference Changes Name M Location Reason ContactInfo R V Prop_Build Prop_AuthTime Prop_AuthType
[Signature_field](/gen/lib/ISO_32000/Signature_field.pm6)|Lock SV
[Signature_field_lock](/gen/lib/ISO_32000/Signature_field_lock.pm6)|Type Action Fields
[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)|Type Ff Filter SubFilter DigestMethod V Cert Reasons MDP TimeStamp LegalAttestation AddRevInfo
[Signature_reference](/gen/lib/ISO_32000/Signature_reference.pm6)|Type TransformMethod TransformParams Data DigestMethod
[Slideshow](/gen/lib/ISO_32000/Slideshow.pm6)|Type Subtype Resources StartResource
[Soft-mask](/gen/lib/ISO_32000/Soft-mask.pm6)|Type S G BC TR
[Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6)|Type U L LI H HI OS
[Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6)|S Sound Volume Synchronous Repeat Mix
[Sound_annotation_additional](/gen/lib/ISO_32000/Sound_annotation_additional.pm6)|Subtype Sound Name
[Sound_object](/gen/lib/ISO_32000/Sound_object.pm6)|Type R C B E CO CP
[Source_information](/gen/lib/ISO_32000/Source_information.pm6)|AU TS E S C
[Square_or_circle_annotation_additional](/gen/lib/ISO_32000/Square_or_circle_annotation_additional.pm6)|Subtype BS IC BE RD
[Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)|Length Filter DecodeParms F FFilter FDecodeParms DL
[Structure_element_access_additional](/gen/lib/ISO_32000/Structure_element_access_additional.pm6)|StructParent StructParents
[Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6)|Type S P ID Pg K A C R T Lang Alt E ActualText
[Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6)|Type K IDTree ParentTree ParentTreeNextKey RoleMap ClassMap
[Submit_form_action](/gen/lib/ISO_32000/Submit_form_action.pm6)|S F Fields Flags
[Target](/gen/lib/ISO_32000/Target.pm6)|R N P A T
[Text_annotation_additional](/gen/lib/ISO_32000/Text_annotation_additional.pm6)|Subtype Open Name State StateModel
[Text_field_additional](/gen/lib/ISO_32000/Text_field_additional.pm6)|MaxLen
[Text_markup_annotation_additional](/gen/lib/ISO_32000/Text_markup_annotation_additional.pm6)|Subtype QuadPoints
[Thread](/gen/lib/ISO_32000/Thread.pm6)|Type F I
[Thread_action_additional](/gen/lib/ISO_32000/Thread_action_additional.pm6)|S F D B
[Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6)|A AIS D DIS TB NP
[Three-D_animation_style](/gen/lib/ISO_32000/Three-D_animation_style.pm6)|Type Subtype PC TM
[Three-D_annotation](/gen/lib/ISO_32000/Three-D_annotation.pm6)|Subtype
[Three-D_background](/gen/lib/ISO_32000/Three-D_background.pm6)|Type Subtype CS C EA
[Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6)|Type C O PO PC IV IC
[Three-D_external_data](/gen/lib/ISO_32000/Three-D_external_data.pm6)|Type Subtype MD5
[Three-D_lighting_scheme](/gen/lib/ISO_32000/Three-D_lighting_scheme.pm6)|Type Subtype
[Three-D_node](/gen/lib/ISO_32000/Three-D_node.pm6)|Type N O V M
[Three-D_reference](/gen/lib/ISO_32000/Three-D_reference.pm6)|Type
[Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6)|Type Subtype VA DV Resources OnInstantiate AN
[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)|Type XN IN MS C2W U3DPath CO P O BG RM LS SA NA NR
[Timespan](/gen/lib/ISO_32000/Timespan.pm6)|Type S V
[Transition](/gen/lib/ISO_32000/Transition.pm6)|Type S D Dm M Di SS B
[Transition_action_additional](/gen/lib/ISO_32000/Transition_action_additional.pm6)|S Trans
[Transparency_group_additional](/gen/lib/ISO_32000/Transparency_group_additional.pm6)|S CS I K
[Trap_network_annotation](/gen/lib/ISO_32000/Trap_network_annotation.pm6)|Subtype LastModified Version AnnotStates FontFauxing
[Trap_network_appearance_stream](/gen/lib/ISO_32000/Trap_network_appearance_stream.pm6)|PCM SeparationColorNames TrapRegions TrapStyles
[Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6)|Type Subtype BaseFont Encoding DescendantFonts ToUnicode
[Type_0_Function](/gen/lib/ISO_32000/Type_0_Function.pm6)|Size BitsPerSample Order Encode Decode
[Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6)|Type Subtype Name BaseFont FirstChar LastChar Widths FontDescriptor Encoding ToUnicode
[Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)|Type Subtype FormType BBox Matrix Resources Group Ref Metadata PieceInfo LastModified StructParent StructParents OPI OC Name
[Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6)|Type PatternType PaintType TilingType BBox XStep YStep Resources Matrix
[Type_1_Shading](/gen/lib/ISO_32000/Type_1_Shading.pm6)|Domain Matrix Function
[Type_2_Function](/gen/lib/ISO_32000/Type_2_Function.pm6)|C0 C1 N
[Type_2_Pattern](/gen/lib/ISO_32000/Type_2_Pattern.pm6)|Type PatternType Shading Matrix ExtGState
[Type_2_Shading](/gen/lib/ISO_32000/Type_2_Shading.pm6)|Coords Domain Function Extend
[Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)|Type Subtype Name FontBBox FontMatrix CharProcs Encoding FirstChar LastChar Widths FontDescriptor Resources ToUnicode
[Type_3_Function](/gen/lib/ISO_32000/Type_3_Function.pm6)|Functions Bounds Encode
[Type_3_Shading](/gen/lib/ISO_32000/Type_3_Shading.pm6)|Coords Domain Function Extend
[Type_4_Shading](/gen/lib/ISO_32000/Type_4_Shading.pm6)|BitsPerCoordinate BitsPerComponent BitsPerFlag Decode Function
[Type_5_Shading](/gen/lib/ISO_32000/Type_5_Shading.pm6)|BitsPerCoordinate BitsPerComponent VerticesPerRow Decode Function
[Type_6_Shading](/gen/lib/ISO_32000/Type_6_Shading.pm6)|BitsPerCoordinate BitsPerComponent BitsPerFlag Decode Function
[URI](/gen/lib/ISO_32000/URI.pm6)|Base
[URI_action_additional](/gen/lib/ISO_32000/URI_action_additional.pm6)|S URI IsMap
[URL_alias](/gen/lib/ISO_32000/URL_alias.pm6)|U C
[UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)|Type Document Msg V Annots Form Signature EF P
[User_property](/gen/lib/ISO_32000/User_property.pm6)|N V F H
[Variable_text_field](/gen/lib/ISO_32000/Variable_text_field.pm6)|DA Q DS RV
[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)|HideToolbar HideMenubar HideWindowUI FitWindow CenterWindow DisplayDocTitle NonFullScreenPageMode Direction ViewArea ViewClip PrintArea PrintClip PrintScaling Duplex PickTrayByPDFSize PrintPageRange NumCopies
[Viewport](/gen/lib/ISO_32000/Viewport.pm6)|Type BBox Name Measure
[Watermark_annotation_additional](/gen/lib/ISO_32000/Watermark_annotation_additional.pm6)|Subtype FixedPrint
[Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6)|Type S ID O SI CT TS
[Web_Capture_image_set](/gen/lib/ISO_32000/Web_Capture_image_set.pm6)|S R
[Web_Capture_information](/gen/lib/ISO_32000/Web_Capture_information.pm6)|V C
[Web_Capture_page_set_additional](/gen/lib/ISO_32000/Web_Capture_page_set_additional.pm6)|S T TID
[Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6)|URL L F P CT H S
[Web_capture_command_settings](/gen/lib/ISO_32000/Web_capture_command_settings.pm6)|G C
[Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)|Subtype H MK A AA BS Parent
[Windows_launch_parameters](/gen/lib/ISO_32000/Windows_launch_parameters.pm6)|F D O P

## Entry to role mappings

Entry|ISO_32000 Roles
----|-----
A|[Collection_sort](/gen/lib/ISO_32000/Collection_sort.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [Icon_fit](/gen/lib/ISO_32000/Icon_fit.pm6) [Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Media_players](/gen/lib/ISO_32000/Media_players.pm6) [Movie_annotation_additional](/gen/lib/ISO_32000/Movie_annotation_additional.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Screen_annotation_additional](/gen/lib/ISO_32000/Screen_annotation_additional.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Target](/gen/lib/ISO_32000/Target.pm6) [Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
AA|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Screen_annotation_additional](/gen/lib/ISO_32000/Screen_annotation_additional.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
AC|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Render_mode](/gen/lib/ISO_32000/Render_mode.pm6)
AIS|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6)
AN|[Rendition_action_additional](/gen/lib/ISO_32000/Rendition_action_additional.pm6) [Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6)
AP|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
APRef|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
AS|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
AU|[Source_information](/gen/lib/ISO_32000/Source_information.pm6)
AcroForm|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Action|[FieldMDP_transform](/gen/lib/ISO_32000/FieldMDP_transform.pm6) [Signature_field_lock](/gen/lib/ISO_32000/Signature_field_lock.pm6)
ActualText|[Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6)
AddRevInfo|[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
After|[JavaScript](/gen/lib/ISO_32000/JavaScript.pm6)
AfterPermsReady|[JavaScript](/gen/lib/ISO_32000/JavaScript.pm6)
Alt|[Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Media_clip_section](/gen/lib/ISO_32000/Media_clip_section.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6)
Alternate|[ICC_profile](/gen/lib/ISO_32000/ICC_profile.pm6)
AlternatePresentations|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)
Alternates|[Image](/gen/lib/ISO_32000/Image.pm6)
AnnotStates|[Trap_network_annotation](/gen/lib/ISO_32000/Trap_network_annotation.pm6)
Annotation|[Movie_action_additional](/gen/lib/ISO_32000/Movie_action_additional.pm6)
Annots|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)
AntiAlias|[Shading_common](/gen/lib/ISO_32000/Shading_common.pm6)
ArtBox|[Box_colour_information](/gen/lib/ISO_32000/Box_colour_information.pm6) [Page](/gen/lib/ISO_32000/Page.pm6)
Ascent|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Aspect|[Movie](/gen/lib/ISO_32000/Movie.pm6)
Attached|[Artifact](/gen/lib/ISO_32000/Artifact.pm6)
Author|[Info](/gen/lib/ISO_32000/Info.pm6)
AvgWidth|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
B|[Media_clip_section_MH-BE](/gen/lib/ISO_32000/Media_clip_section_MH-BE.pm6) [Media_screen_parameters_MH-BE](/gen/lib/ISO_32000/Media_screen_parameters_MH-BE.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6) [Thread_action_additional](/gen/lib/ISO_32000/Thread_action_additional.pm6) [Transition](/gen/lib/ISO_32000/Transition.pm6)
BBox|[Artifact](/gen/lib/ISO_32000/Artifact.pm6) [Shading_common](/gen/lib/ISO_32000/Shading_common.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6) [Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6) [Viewport](/gen/lib/ISO_32000/Viewport.pm6)
BC|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Soft-mask](/gen/lib/ISO_32000/Soft-mask.pm6)
BE|[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Media_clip_section](/gen/lib/ISO_32000/Media_clip_section.pm6) [Media_play_parameters](/gen/lib/ISO_32000/Media_play_parameters.pm6) [Media_player_info](/gen/lib/ISO_32000/Media_player_info.pm6) [Media_screen_parameters](/gen/lib/ISO_32000/Media_screen_parameters.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6) [Rendition_common](/gen/lib/ISO_32000/Rendition_common.pm6) [Square_or_circle_annotation_additional](/gen/lib/ISO_32000/Square_or_circle_annotation_additional.pm6)
BG|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
BG2|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
BM|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
BS|[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Ink_annotation_additional](/gen/lib/ISO_32000/Ink_annotation_additional.pm6) [Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6) [Square_or_circle_annotation_additional](/gen/lib/ISO_32000/Square_or_circle_annotation_additional.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
BU|[Media_clip_data_MH-BE](/gen/lib/ISO_32000/Media_clip_data_MH-BE.pm6)
Background|[Shading_common](/gen/lib/ISO_32000/Shading_common.pm6)
Base|[URI](/gen/lib/ISO_32000/URI.pm6)
BaseEncoding|[Encoding](/gen/lib/ISO_32000/Encoding.pm6)
BaseFont|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6) [Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6)
BaseState|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
Before|[JavaScript](/gen/lib/ISO_32000/JavaScript.pm6)
BitsPerComponent|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6) [Type_4_Shading](/gen/lib/ISO_32000/Type_4_Shading.pm6) [Type_5_Shading](/gen/lib/ISO_32000/Type_5_Shading.pm6) [Type_6_Shading](/gen/lib/ISO_32000/Type_6_Shading.pm6)
BitsPerCoordinate|[Type_4_Shading](/gen/lib/ISO_32000/Type_4_Shading.pm6) [Type_5_Shading](/gen/lib/ISO_32000/Type_5_Shading.pm6) [Type_6_Shading](/gen/lib/ISO_32000/Type_6_Shading.pm6)
BitsPerFlag|[Type_4_Shading](/gen/lib/ISO_32000/Type_4_Shading.pm6) [Type_6_Shading](/gen/lib/ISO_32000/Type_6_Shading.pm6)
BitsPerSample|[Type_0_Function](/gen/lib/ISO_32000/Type_0_Function.pm6)
Bl|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6)
BlackPoint|[CalGray_colour_space](/gen/lib/ISO_32000/CalGray_colour_space.pm6) [CalRGB_colour_space](/gen/lib/ISO_32000/CalRGB_colour_space.pm6) [Lab_colour_space](/gen/lib/ISO_32000/Lab_colour_space.pm6)
BleedBox|[Box_colour_information](/gen/lib/ISO_32000/Box_colour_information.pm6) [Page](/gen/lib/ISO_32000/Page.pm6)
Border|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6)
Bounds|[Type_3_Function](/gen/lib/ISO_32000/Type_3_Function.pm6)
BoxColorInfo|[Page](/gen/lib/ISO_32000/Page.pm6)
ByteRange|[Signature](/gen/lib/ISO_32000/Signature.pm6)
C|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Form_additional_actions](/gen/lib/ISO_32000/Form_additional_actions.pm6) [Media_rendition](/gen/lib/ISO_32000/Media_rendition.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6) [Page_additional_actions](/gen/lib/ISO_32000/Page_additional_actions.pm6) [Rendition_MH-BE](/gen/lib/ISO_32000/Rendition_MH-BE.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6) [Source_information](/gen/lib/ISO_32000/Source_information.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Three-D_background](/gen/lib/ISO_32000/Three-D_background.pm6) [Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6) [URL_alias](/gen/lib/ISO_32000/URL_alias.pm6) [Web_Capture_information](/gen/lib/ISO_32000/Web_Capture_information.pm6) [Web_capture_command_settings](/gen/lib/ISO_32000/Web_capture_command_settings.pm6)
C0|[Type_2_Function](/gen/lib/ISO_32000/Type_2_Function.pm6)
C1|[Type_2_Function](/gen/lib/ISO_32000/Type_2_Function.pm6)
C2W|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
CA|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6) [Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
CF|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6)
CI|[File_specification](/gen/lib/ISO_32000/File_specification.pm6)
CIDSet|[CIDFont_descriptor_additional](/gen/lib/ISO_32000/CIDFont_descriptor_additional.pm6)
CIDSystemInfo|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6) [CMap_stream](/gen/lib/ISO_32000/CMap_stream.pm6)
CIDToGIDMap|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6)
CL|[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6)
CMapName|[CMap_stream](/gen/lib/ISO_32000/CMap_stream.pm6)
CO|[Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6) [Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
CP|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6)
CS|[Projection](/gen/lib/ISO_32000/Projection.pm6) [Three-D_background](/gen/lib/ISO_32000/Three-D_background.pm6) [Transparency_group_additional](/gen/lib/ISO_32000/Transparency_group_additional.pm6)
CT|[Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6)
CV|[Render_mode](/gen/lib/ISO_32000/Render_mode.pm6)
CYX|[Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6)
Cap|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6)
CapHeight|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Category|[Optional_Content_Group_Application](/gen/lib/ISO_32000/Optional_Content_Group_Application.pm6)
CenterWindow|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
Cert|[Signature](/gen/lib/ISO_32000/Signature.pm6) [Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
Changes|[Signature](/gen/lib/ISO_32000/Signature.pm6)
CharProcs|[Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
CharSet|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
CheckSum|[Embedded_file_parameter](/gen/lib/ISO_32000/Embedded_file_parameter.pm6)
ClassMap|[Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6)
ClrF|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
ClrFf|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
Collection|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Color|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
ColorSpace|[DeviceN_process](/gen/lib/ISO_32000/DeviceN_process.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6) [Resource](/gen/lib/ISO_32000/Resource.pm6) [Separation](/gen/lib/ISO_32000/Separation.pm6) [Shading_common](/gen/lib/ISO_32000/Shading_common.pm6)
ColorType|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
Colorants|[DeviceN_colour_space_attributes](/gen/lib/ISO_32000/DeviceN_colour_space_attributes.pm6) [Printers_mark_form](/gen/lib/ISO_32000/Printers_mark_form.pm6)
Comments|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
Components|[DeviceN_process](/gen/lib/ISO_32000/DeviceN_process.pm6)
Configs|[Optional_Content_Group_Properties](/gen/lib/ISO_32000/Optional_Content_Group_Properties.pm6)
ContactInfo|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Contents|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6)
Coords|[Type_2_Shading](/gen/lib/ISO_32000/Type_2_Shading.pm6) [Type_3_Shading](/gen/lib/ISO_32000/Type_3_Shading.pm6)
Count|[Outline](/gen/lib/ISO_32000/Outline.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6) [Pages](/gen/lib/ISO_32000/Pages.pm6)
CreationDate|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6) [Embedded_file_parameter](/gen/lib/ISO_32000/Embedded_file_parameter.pm6) [Info](/gen/lib/ISO_32000/Info.pm6)
Creator|[Info](/gen/lib/ISO_32000/Info.pm6) [Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
CreatorInfo|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
CropBox|[Box_colour_information](/gen/lib/ISO_32000/Box_colour_information.pm6) [Page](/gen/lib/ISO_32000/Page.pm6)
CropFixed|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
CropRect|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
D|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6) [Appearance](/gen/lib/ISO_32000/Appearance.pm6) [Border_style](/gen/lib/ISO_32000/Border_style.pm6) [Collection](/gen/lib/ISO_32000/Collection.pm6) [Embedded_goto_action_additional](/gen/lib/ISO_32000/Embedded_goto_action_additional.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Goto_action_additional](/gen/lib/ISO_32000/Goto_action_additional.pm6) [Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Media_clip_section](/gen/lib/ISO_32000/Media_clip_section.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Optional_Content_Group_Properties](/gen/lib/ISO_32000/Optional_Content_Group_Properties.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Thread_action_additional](/gen/lib/ISO_32000/Thread_action_additional.pm6) [Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6) [Transition](/gen/lib/ISO_32000/Transition.pm6) [Windows_launch_parameters](/gen/lib/ISO_32000/Windows_launch_parameters.pm6)
DA|[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6) [Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6) [Variable_text_field](/gen/lib/ISO_32000/Variable_text_field.pm6)
DIS|[Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6)
DL|[Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)
DOS|[File_specification](/gen/lib/ISO_32000/File_specification.pm6)
DP|[Catalog_additional_actions](/gen/lib/ISO_32000/Catalog_additional_actions.pm6)
DR|[Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6)
DS|[Catalog_additional_actions](/gen/lib/ISO_32000/Catalog_additional_actions.pm6) [Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Variable_text_field](/gen/lib/ISO_32000/Variable_text_field.pm6)
DV|[Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6)
DW|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6)
DW2|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6)
Data|[Signature_reference](/gen/lib/ISO_32000/Signature_reference.pm6)
Decode|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6) [Type_0_Function](/gen/lib/ISO_32000/Type_0_Function.pm6) [Type_4_Shading](/gen/lib/ISO_32000/Type_4_Shading.pm6) [Type_5_Shading](/gen/lib/ISO_32000/Type_5_Shading.pm6) [Type_6_Shading](/gen/lib/ISO_32000/Type_6_Shading.pm6)
DecodeParms|[Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6) [Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)
DefaultForPrinting|[Alternate_Image](/gen/lib/ISO_32000/Alternate_Image.pm6)
Desc|[File_specification](/gen/lib/ISO_32000/File_specification.pm6)
DescendantFonts|[Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6)
Descent|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Dest|[Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
DestOutputProfile|[Output_intent](/gen/lib/ISO_32000/Output_intent.pm6)
Dests|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)
DeviceColorant|[Separation](/gen/lib/ISO_32000/Separation.pm6)
Di|[Transition](/gen/lib/ISO_32000/Transition.pm6)
Differences|[Encoding](/gen/lib/ISO_32000/Encoding.pm6) [FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6)
DigestMethod|[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6) [Signature_reference](/gen/lib/ISO_32000/Signature_reference.pm6)
Direction|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
DisplayDocTitle|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
Dm|[Transition](/gen/lib/ISO_32000/Transition.pm6)
Doc|[JavaScript](/gen/lib/ISO_32000/JavaScript.pm6)
DocMDP|[Permissions](/gen/lib/ISO_32000/Permissions.pm6)
Document|[UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)
Domain|[Function_common](/gen/lib/ISO_32000/Function_common.pm6) [Type_1_Shading](/gen/lib/ISO_32000/Type_1_Shading.pm6) [Type_2_Shading](/gen/lib/ISO_32000/Type_2_Shading.pm6) [Type_3_Shading](/gen/lib/ISO_32000/Type_3_Shading.pm6)
DotGain|[DeviceN_mixing_hints](/gen/lib/ISO_32000/DeviceN_mixing_hints.pm6)
Duplex|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
Dur|[Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6) [Page](/gen/lib/ISO_32000/Page.pm6)
Duration|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
E|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6) [Collection_field](/gen/lib/ISO_32000/Collection_field.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Media_clip_section_MH-BE](/gen/lib/ISO_32000/Media_clip_section_MH-BE.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6) [Source_information](/gen/lib/ISO_32000/Source_information.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6)
EA|[Three-D_background](/gen/lib/ISO_32000/Three-D_background.pm6)
EF|[File_specification](/gen/lib/ISO_32000/File_specification.pm6) [UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)
EFF|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6)
EmbeddedFDFs|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6)
EmbeddedFiles|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)
Encode|[Type_0_Function](/gen/lib/ISO_32000/Type_0_Function.pm6) [Type_3_Function](/gen/lib/ISO_32000/Type_3_Function.pm6)
Encoding|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6) [Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
Encrypt|[File_trailer](/gen/lib/ISO_32000/File_trailer.pm6)
EncryptMetadata|[Additional_encryption](/gen/lib/ISO_32000/Additional_encryption.pm6)
Event|[Optional_Content_Group_Application](/gen/lib/ISO_32000/Optional_Content_Group_Application.pm6)
ExData|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6)
Export|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
ExtGState|[Resource](/gen/lib/ISO_32000/Resource.pm6) [Type_2_Pattern](/gen/lib/ISO_32000/Type_2_Pattern.pm6)
Extend|[Type_2_Shading](/gen/lib/ISO_32000/Type_2_Shading.pm6) [Type_3_Shading](/gen/lib/ISO_32000/Type_3_Shading.pm6)
Extends|[Object_stream](/gen/lib/ISO_32000/Object_stream.pm6)
Extensions|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
F|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Embedded_goto_action_additional](/gen/lib/ISO_32000/Embedded_goto_action_additional.pm6) [FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [FDF_named_page_reference](/gen/lib/ISO_32000/FDF_named_page_reference.pm6) [File_specification](/gen/lib/ISO_32000/File_specification.pm6) [Form_additional_actions](/gen/lib/ISO_32000/Form_additional_actions.pm6) [Import-data_action_additional](/gen/lib/ISO_32000/Import-data_action_additional.pm6) [Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6) [Media_offset_frame](/gen/lib/ISO_32000/Media_offset_frame.pm6) [Media_screen_parameters_MH-BE](/gen/lib/ISO_32000/Media_screen_parameters_MH-BE.pm6) [Movie](/gen/lib/ISO_32000/Movie.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6) [Projection](/gen/lib/ISO_32000/Projection.pm6) [Reference](/gen/lib/ISO_32000/Reference.pm6) [Stream_common](/gen/lib/ISO_32000/Stream_common.pm6) [Submit_form_action](/gen/lib/ISO_32000/Submit_form_action.pm6) [Thread](/gen/lib/ISO_32000/Thread.pm6) [Thread_action_additional](/gen/lib/ISO_32000/Thread_action_additional.pm6) [User_property](/gen/lib/ISO_32000/User_property.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6) [Windows_launch_parameters](/gen/lib/ISO_32000/Windows_launch_parameters.pm6)
FB|[Icon_fit](/gen/lib/ISO_32000/Icon_fit.pm6)
FC|[Render_mode](/gen/lib/ISO_32000/Render_mode.pm6)
FD|[CIDFont_descriptor_additional](/gen/lib/ISO_32000/CIDFont_descriptor_additional.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6)
FDF|[FDF_catalog](/gen/lib/ISO_32000/FDF_catalog.pm6)
FDecodeParms|[Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)
FFilter|[Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)
FL|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
FOV|[Projection](/gen/lib/ISO_32000/Projection.pm6)
FS|[File_attachment_annotation_additional](/gen/lib/ISO_32000/File_attachment_annotation_additional.pm6) [File_specification](/gen/lib/ISO_32000/File_specification.pm6)
FT|[Field_common](/gen/lib/ISO_32000/Field_common.pm6)
FWPosition|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
FWScale|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
Ff|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
Fields|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6) [FDF_template](/gen/lib/ISO_32000/FDF_template.pm6) [FieldMDP_transform](/gen/lib/ISO_32000/FieldMDP_transform.pm6) [Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6) [Reset_form_action](/gen/lib/ISO_32000/Reset_form_action.pm6) [Signature_field_lock](/gen/lib/ISO_32000/Signature_field_lock.pm6) [Submit_form_action](/gen/lib/ISO_32000/Submit_form_action.pm6)
Filter|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6) [Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)
First|[Object_stream](/gen/lib/ISO_32000/Object_stream.pm6) [Outline](/gen/lib/ISO_32000/Outline.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
FirstChar|[Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
FitWindow|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
FixedPrint|[Watermark_annotation_additional](/gen/lib/ISO_32000/Watermark_annotation_additional.pm6)
Flags|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6) [Reset_form_action](/gen/lib/ISO_32000/Reset_form_action.pm6) [Submit_form_action](/gen/lib/ISO_32000/Submit_form_action.pm6)
Fo|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6)
Font|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Resource](/gen/lib/ISO_32000/Resource.pm6)
FontBBox|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
FontDescriptor|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
FontFamily|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
FontFauxing|[Trap_network_annotation](/gen/lib/ISO_32000/Trap_network_annotation.pm6)
FontFile|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
FontFile2|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
FontFile3|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
FontMatrix|[Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
FontName|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
FontStretch|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
FontWeight|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Form|[UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)
FormType|[Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
Function|[Type_1_Shading](/gen/lib/ISO_32000/Type_1_Shading.pm6) [Type_2_Shading](/gen/lib/ISO_32000/Type_2_Shading.pm6) [Type_3_Shading](/gen/lib/ISO_32000/Type_3_Shading.pm6) [Type_4_Shading](/gen/lib/ISO_32000/Type_4_Shading.pm6) [Type_5_Shading](/gen/lib/ISO_32000/Type_5_Shading.pm6) [Type_6_Shading](/gen/lib/ISO_32000/Type_6_Shading.pm6)
FunctionType|[Function_common](/gen/lib/ISO_32000/Function_common.pm6)
Functions|[Type_3_Function](/gen/lib/ISO_32000/Type_3_Function.pm6)
G|[Soft-mask](/gen/lib/ISO_32000/Soft-mask.pm6) [Web_capture_command_settings](/gen/lib/ISO_32000/Web_capture_command_settings.pm6)
Gamma|[CalGray_colour_space](/gen/lib/ISO_32000/CalGray_colour_space.pm6) [CalRGB_colour_space](/gen/lib/ISO_32000/CalRGB_colour_space.pm6)
GrayMap|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
Group|[Page](/gen/lib/ISO_32000/Page.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
H|[Fixed_print](/gen/lib/ISO_32000/Fixed_print.pm6) [Hide_action_additional](/gen/lib/ISO_32000/Hide_action_additional.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6) [User_property](/gen/lib/ISO_32000/User_property.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
HI|[Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6)
HT|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
Height|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6)
HideMenubar|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
HideToolbar|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
HideWindowUI|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
I|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Border_effect](/gen/lib/ISO_32000/Border_effect.pm6) [Choice_field_additional](/gen/lib/ISO_32000/Choice_field_additional.pm6) [Thread](/gen/lib/ISO_32000/Thread.pm6) [Transparency_group_additional](/gen/lib/ISO_32000/Transparency_group_additional.pm6)
IC|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6) [Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6) [Square_or_circle_annotation_additional](/gen/lib/ISO_32000/Square_or_circle_annotation_additional.pm6) [Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6)
ID|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6) [File_specification](/gen/lib/ISO_32000/File_specification.pm6) [File_trailer](/gen/lib/ISO_32000/File_trailer.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Reference](/gen/lib/ISO_32000/Reference.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6)
IDS|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)
IDTree|[Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6)
IF|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
IN|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
IRT|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6)
IT|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6) [Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6)
IV|[Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6)
IX|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6)
Image|[Alternate_Image](/gen/lib/ISO_32000/Alternate_Image.pm6)
ImageMask|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6)
ImageType|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
IncludedImageDimensions|[OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
IncludedImageQuality|[OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
Index|[Cross_reference_stream](/gen/lib/ISO_32000/Cross_reference_stream.pm6)
Info|[FDF_page](/gen/lib/ISO_32000/FDF_page.pm6) [File_trailer](/gen/lib/ISO_32000/File_trailer.pm6) [Output_intent](/gen/lib/ISO_32000/Output_intent.pm6)
InkList|[Ink_annotation_additional](/gen/lib/ISO_32000/Ink_annotation_additional.pm6)
Inks|[OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
Intent|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6) [Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6) [Optional_Content_Group](/gen/lib/ISO_32000/Optional_Content_Group.pm6)
Interpolate|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6)
IsMap|[URI_action_additional](/gen/lib/ISO_32000/URI_action_additional.pm6)
Issuer|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6)
ItalicAngle|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
JS|[JavaScript_action_additional](/gen/lib/ISO_32000/JavaScript_action_additional.pm6) [Rendition_action_additional](/gen/lib/ISO_32000/Rendition_action_additional.pm6)
JavaScript|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6) [FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6)
K|[Form_additional_actions](/gen/lib/ISO_32000/Form_additional_actions.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6) [Transparency_group_additional](/gen/lib/ISO_32000/Transparency_group_additional.pm6)
KeyUsage|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6)
Keywords|[Info](/gen/lib/ISO_32000/Info.pm6)
Kids|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Name_tree_node](/gen/lib/ISO_32000/Name_tree_node.pm6) [Number_tree_node](/gen/lib/ISO_32000/Number_tree_node.pm6) [Pages](/gen/lib/ISO_32000/Pages.pm6)
L|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6)
LC|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
LE|[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6)
LI|[Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6)
LJ|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
LL|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6)
LLE|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6)
LLO|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6)
LS|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
LW|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
Lang|[CIDFont_descriptor_additional](/gen/lib/ISO_32000/CIDFont_descriptor_additional.pm6) [Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6)
Language|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
Last|[Outline](/gen/lib/ISO_32000/Outline.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
LastChar|[Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
LastModified|[Data](/gen/lib/ISO_32000/Data.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Trap_network_annotation](/gen/lib/ISO_32000/Trap_network_annotation.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
Leading|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Legal|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
LegalAttestation|[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
Length|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6) [Stream_common](/gen/lib/ISO_32000/Stream_common.pm6)
Length1|[Embedded_font_stream_additional](/gen/lib/ISO_32000/Embedded_font_stream_additional.pm6)
Length2|[Embedded_font_stream_additional](/gen/lib/ISO_32000/Embedded_font_stream_additional.pm6)
Length3|[Embedded_font_stream_additional](/gen/lib/ISO_32000/Embedded_font_stream_additional.pm6)
Level1|[Postscript_XObject](/gen/lib/ISO_32000/Postscript_XObject.pm6)
Limits|[Name_tree_node](/gen/lib/ISO_32000/Name_tree_node.pm6) [Number_tree_node](/gen/lib/ISO_32000/Number_tree_node.pm6)
Linearized|[Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6)
ListMode|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
Location|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Lock|[Signature_field](/gen/lib/ISO_32000/Signature_field.pm6)
Locked|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
M|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Media_offset_marker](/gen/lib/ISO_32000/Media_offset_marker.pm6) [Media_screen_parameters_MH-BE](/gen/lib/ISO_32000/Media_screen_parameters_MH-BE.pm6) [Mimimum_screen_size](/gen/lib/ISO_32000/Mimimum_screen_size.pm6) [Minimum_bit_depth](/gen/lib/ISO_32000/Minimum_bit_depth.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Three-D_node](/gen/lib/ISO_32000/Three-D_node.pm6) [Transition](/gen/lib/ISO_32000/Transition.pm6)
MCID|[Marked_content_reference](/gen/lib/ISO_32000/Marked_content_reference.pm6)
MD5|[Three-D_external_data](/gen/lib/ISO_32000/Three-D_external_data.pm6)
MDP|[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
MH|[Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Media_clip_section](/gen/lib/ISO_32000/Media_clip_section.pm6) [Media_play_parameters](/gen/lib/ISO_32000/Media_play_parameters.pm6) [Media_player_info](/gen/lib/ISO_32000/Media_player_info.pm6) [Media_screen_parameters](/gen/lib/ISO_32000/Media_screen_parameters.pm6) [Rendition_common](/gen/lib/ISO_32000/Rendition_common.pm6)
MK|[Screen_annotation_additional](/gen/lib/ISO_32000/Screen_annotation_additional.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
ML|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
MN|[Printers_mark_annotation](/gen/lib/ISO_32000/Printers_mark_annotation.pm6)
MS|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
MU|[Media_players](/gen/lib/ISO_32000/Media_players.pm6)
Mac|[Embedded_file_parameter](/gen/lib/ISO_32000/Embedded_file_parameter.pm6) [File_specification](/gen/lib/ISO_32000/File_specification.pm6) [Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6)
MainImage|[OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
MarkInfo|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
MarkStyle|[Printers_mark_form](/gen/lib/ISO_32000/Printers_mark_form.pm6)
Marked|[Mark_information](/gen/lib/ISO_32000/Mark_information.pm6)
Mask|[Image](/gen/lib/ISO_32000/Image.pm6)
Matrix|[CalRGB_colour_space](/gen/lib/ISO_32000/CalRGB_colour_space.pm6) [Fixed_print](/gen/lib/ISO_32000/Fixed_print.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6) [Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6) [Type_1_Shading](/gen/lib/ISO_32000/Type_1_Shading.pm6) [Type_2_Pattern](/gen/lib/ISO_32000/Type_2_Pattern.pm6)
MaxLen|[Text_field_additional](/gen/lib/ISO_32000/Text_field_additional.pm6)
MaxWidth|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Measure|[Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6) [Viewport](/gen/lib/ISO_32000/Viewport.pm6)
MediaBox|[Page](/gen/lib/ISO_32000/Page.pm6)
Metadata|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Embedded_font_stream_additional](/gen/lib/ISO_32000/Embedded_font_stream_additional.pm6) [ICC_profile](/gen/lib/ISO_32000/ICC_profile.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Metadata_additional](/gen/lib/ISO_32000/Metadata_additional.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
MissingWidth|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Mix|[Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6)
MixingHints|[DeviceN_colour_space_attributes](/gen/lib/ISO_32000/DeviceN_colour_space_attributes.pm6)
ModDate|[Embedded_file_parameter](/gen/lib/ISO_32000/Embedded_file_parameter.pm6) [Info](/gen/lib/ISO_32000/Info.pm6)
Mode|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
Movie|[Movie_annotation_additional](/gen/lib/ISO_32000/Movie_annotation_additional.pm6)
Msg|[UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)
N|[Appearance](/gen/lib/ISO_32000/Appearance.pm6) [Bead](/gen/lib/ISO_32000/Bead.pm6) [Collection_field](/gen/lib/ISO_32000/Collection_field.pm6) [ICC_profile](/gen/lib/ISO_32000/ICC_profile.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Media_clip_common](/gen/lib/ISO_32000/Media_clip_common.pm6) [Named_action_additional](/gen/lib/ISO_32000/Named_action_additional.pm6) [Object_stream](/gen/lib/ISO_32000/Object_stream.pm6) [Projection](/gen/lib/ISO_32000/Projection.pm6) [Rendition_common](/gen/lib/ISO_32000/Rendition_common.pm6) [Target](/gen/lib/ISO_32000/Target.pm6) [Three-D_node](/gen/lib/ISO_32000/Three-D_node.pm6) [Type_2_Function](/gen/lib/ISO_32000/Type_2_Function.pm6) [User_property](/gen/lib/ISO_32000/User_property.pm6)
NA|[Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
NM|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6)
NP|[Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6)
NR|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
NU|[Media_players](/gen/lib/ISO_32000/Media_players.pm6)
Name|[FDF_named_page_reference](/gen/lib/ISO_32000/FDF_named_page_reference.pm6) [File_attachment_annotation_additional](/gen/lib/ISO_32000/File_attachment_annotation_additional.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6) [Optional_Content_Group](/gen/lib/ISO_32000/Optional_Content_Group.pm6) [Rubber_stamp_annotation_additional](/gen/lib/ISO_32000/Rubber_stamp_annotation_additional.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Sound_annotation_additional](/gen/lib/ISO_32000/Sound_annotation_additional.pm6) [Text_annotation_additional](/gen/lib/ISO_32000/Text_annotation_additional.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6) [Viewport](/gen/lib/ISO_32000/Viewport.pm6)
Names|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Name_tree_node](/gen/lib/ISO_32000/Name_tree_node.pm6)
NeedAppearances|[Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6)
NeedsRendering|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
NewWindow|[Embedded_goto_action_additional](/gen/lib/ISO_32000/Embedded_goto_action_additional.pm6) [Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6)
Next|[Action_common](/gen/lib/ISO_32000/Action_common.pm6) [Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
NonFullScreenPageMode|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
NumCopies|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
Nums|[Number_tree_node](/gen/lib/ISO_32000/Number_tree_node.pm6)
O|[Additional_encryption](/gen/lib/ISO_32000/Additional_encryption.pm6) [Attribute_object](/gen/lib/ISO_32000/Attribute_object.pm6) [Attribute_object_for_user_properties](/gen/lib/ISO_32000/Attribute_object_for_user_properties.pm6) [Collection_field](/gen/lib/ISO_32000/Collection_field.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Media_screen_parameters_MH-BE](/gen/lib/ISO_32000/Media_screen_parameters_MH-BE.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Page_additional_actions](/gen/lib/ISO_32000/Page_additional_actions.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6) [Render_mode](/gen/lib/ISO_32000/Render_mode.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6) [Three-D_node](/gen/lib/ISO_32000/Three-D_node.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6) [Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6) [Windows_launch_parameters](/gen/lib/ISO_32000/Windows_launch_parameters.pm6)
OB|[Projection](/gen/lib/ISO_32000/Projection.pm6)
OC|[Alternate_Image](/gen/lib/ISO_32000/Alternate_Image.pm6) [Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
OCGs|[Optional_Content_Group_Application](/gen/lib/ISO_32000/Optional_Content_Group_Application.pm6) [Optional_Content_Group_Membership](/gen/lib/ISO_32000/Optional_Content_Group_Membership.pm6) [Optional_Content_Group_Properties](/gen/lib/ISO_32000/Optional_Content_Group_Properties.pm6)
OCProperties|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
OFF|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
OID|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6)
ON|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
OP|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Rendition_action_additional](/gen/lib/ISO_32000/Rendition_action_additional.pm6)
OPI|[Image](/gen/lib/ISO_32000/Image.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
OPM|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
OS|[Projection](/gen/lib/ISO_32000/Projection.pm6) [Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6)
Obj|[Object_reference](/gen/lib/ISO_32000/Object_reference.pm6)
OnInstantiate|[Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6)
Open|[Popup_annotation_additional](/gen/lib/ISO_32000/Popup_annotation_additional.pm6) [Text_annotation_additional](/gen/lib/ISO_32000/Text_annotation_additional.pm6)
OpenAction|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Operation|[Movie_action_additional](/gen/lib/ISO_32000/Movie_action_additional.pm6)
Opt|[Check_box_and_radio_button_additional](/gen/lib/ISO_32000/Check_box_and_radio_button_additional.pm6) [Choice_field_additional](/gen/lib/ISO_32000/Choice_field_additional.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
Order|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6) [Type_0_Function](/gen/lib/ISO_32000/Type_0_Function.pm6)
Ordering|[CIDSystemInfo](/gen/lib/ISO_32000/CIDSystemInfo.pm6)
Outlines|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
OutputCondition|[Output_intent](/gen/lib/ISO_32000/Output_intent.pm6)
OutputConditionIdentifier|[Output_intent](/gen/lib/ISO_32000/Output_intent.pm6)
OutputIntents|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
OverlayText|[Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6)
Overprint|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
P|[Additional_encryption](/gen/lib/ISO_32000/Additional_encryption.pm6) [Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Attribute_object_for_user_properties](/gen/lib/ISO_32000/Attribute_object_for_user_properties.pm6) [Bead](/gen/lib/ISO_32000/Bead.pm6) [DocMDP_transform](/gen/lib/ISO_32000/DocMDP_transform.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Media_rendition](/gen/lib/ISO_32000/Media_rendition.pm6) [Optional_Content_Group_Membership](/gen/lib/ISO_32000/Optional_Content_Group_Membership.pm6) [Page_label](/gen/lib/ISO_32000/Page_label.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Target](/gen/lib/ISO_32000/Target.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6) [UR_transform](/gen/lib/ISO_32000/UR_transform.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6) [Windows_launch_parameters](/gen/lib/ISO_32000/Windows_launch_parameters.pm6)
PA|[Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6)
PC|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6) [Three-D_animation_style](/gen/lib/ISO_32000/Three-D_animation_style.pm6) [Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6)
PCM|[Trap_network_appearance_stream](/gen/lib/ISO_32000/Trap_network_appearance_stream.pm6)
PI|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6)
PID|[Media_player_info](/gen/lib/ISO_32000/Media_player_info.pm6)
PL|[Media_clip_data](/gen/lib/ISO_32000/Media_clip_data.pm6) [Media_play_parameters](/gen/lib/ISO_32000/Media_play_parameters.pm6)
PO|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6) [Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6)
PS|[Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Projection](/gen/lib/ISO_32000/Projection.pm6)
PV|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6)
PZ|[Page](/gen/lib/ISO_32000/Page.pm6)
Page|[FDF_annotation_additional](/gen/lib/ISO_32000/FDF_annotation_additional.pm6) [Reference](/gen/lib/ISO_32000/Reference.pm6)
PageElement|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
PageLabels|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
PageLayout|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
PageMode|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Pages|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6) [FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6) [Separation](/gen/lib/ISO_32000/Separation.pm6)
PaintType|[Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6)
Params|[Embedded_file_stream](/gen/lib/ISO_32000/Embedded_file_stream.pm6)
Parent|[Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Pages](/gen/lib/ISO_32000/Pages.pm6) [Popup_annotation_additional](/gen/lib/ISO_32000/Popup_annotation_additional.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
ParentTree|[Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6)
ParentTreeNextKey|[Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6)
Pattern|[Resource](/gen/lib/ISO_32000/Resource.pm6)
PatternType|[Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6) [Type_2_Pattern](/gen/lib/ISO_32000/Type_2_Pattern.pm6)
Perms|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Pg|[Marked_content_reference](/gen/lib/ISO_32000/Marked_content_reference.pm6) [Object_reference](/gen/lib/ISO_32000/Object_reference.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6)
PickTrayByPDFSize|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
PieceInfo|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
Popup|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6)
Position|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
Poster|[Movie](/gen/lib/ISO_32000/Movie.pm6)
PresSteps|[Page](/gen/lib/ISO_32000/Page.pm6)
PreserveRB|[Set-OCG-state_action_additional](/gen/lib/ISO_32000/Set-OCG-state_action_additional.pm6)
Prev|[Cross_reference_stream](/gen/lib/ISO_32000/Cross_reference_stream.pm6) [File_trailer](/gen/lib/ISO_32000/File_trailer.pm6) [Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
Print|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
PrintArea|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
PrintClip|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
PrintPageRange|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
PrintScaling|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
PrintingOrder|[DeviceN_mixing_hints](/gen/lib/ISO_32000/DeviceN_mixing_hints.pm6)
Private|[Data](/gen/lib/ISO_32000/Data.pm6)
ProcSet|[Resource](/gen/lib/ISO_32000/Resource.pm6)
Process|[DeviceN_colour_space_attributes](/gen/lib/ISO_32000/DeviceN_colour_space_attributes.pm6)
Producer|[Info](/gen/lib/ISO_32000/Info.pm6)
Prop_AuthTime|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Prop_AuthType|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Prop_Build|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Properties|[Resource](/gen/lib/ISO_32000/Resource.pm6)
Q|[Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6) [Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6) [Variable_text_field](/gen/lib/ISO_32000/Variable_text_field.pm6)
QuadPoints|[Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6) [Text_markup_annotation_additional](/gen/lib/ISO_32000/Text_markup_annotation_additional.pm6)
R|[Additional_encryption](/gen/lib/ISO_32000/Additional_encryption.pm6) [Appearance](/gen/lib/ISO_32000/Appearance.pm6) [Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Bead](/gen/lib/ISO_32000/Bead.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6) [Rendition_action_additional](/gen/lib/ISO_32000/Rendition_action_additional.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Selector_rendition](/gen/lib/ISO_32000/Selector_rendition.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Target](/gen/lib/ISO_32000/Target.pm6) [Web_Capture_image_set](/gen/lib/ISO_32000/Web_Capture_image_set.pm6)
RBGroups|[Optional_Content_Configuration](/gen/lib/ISO_32000/Optional_Content_Configuration.pm6)
RC|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6) [Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6)
RD|[Caret_annotation_additional](/gen/lib/ISO_32000/Caret_annotation_additional.pm6) [Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Square_or_circle_annotation_additional](/gen/lib/ISO_32000/Square_or_circle_annotation_additional.pm6)
RF|[File_specification](/gen/lib/ISO_32000/File_specification.pm6)
RH|[Requirement_common](/gen/lib/ISO_32000/Requirement_common.pm6)
RI|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6) [Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
RM|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
RO|[Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6)
RT|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6)
RV|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [Variable_text_field](/gen/lib/ISO_32000/Variable_text_field.pm6)
Range|[Function_common](/gen/lib/ISO_32000/Function_common.pm6) [ICC_profile](/gen/lib/ISO_32000/ICC_profile.pm6) [Lab_colour_space](/gen/lib/ISO_32000/Lab_colour_space.pm6)
Rate|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
Reason|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Reasons|[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
Rect|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6)
Ref|[Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
Reference|[Signature](/gen/lib/ISO_32000/Signature.pm6)
Registry|[CIDSystemInfo](/gen/lib/ISO_32000/CIDSystemInfo.pm6)
RegistryName|[Output_intent](/gen/lib/ISO_32000/Output_intent.pm6)
Rename|[FDF_template](/gen/lib/ISO_32000/FDF_template.pm6)
Renditions|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)
Repeat|[Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6) [Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6)
Requirements|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Resolution|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
Resources|[Page](/gen/lib/ISO_32000/Page.pm6) [Slideshow](/gen/lib/ISO_32000/Slideshow.pm6) [Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6) [Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
RoleMap|[Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6)
Root|[FDF_trailer](/gen/lib/ISO_32000/FDF_trailer.pm6) [File_trailer](/gen/lib/ISO_32000/File_trailer.pm6)
Rotate|[Movie](/gen/lib/ISO_32000/Movie.pm6) [Page](/gen/lib/ISO_32000/Page.pm6)
S|[Action_common](/gen/lib/ISO_32000/Action_common.pm6) [Border_effect](/gen/lib/ISO_32000/Border_effect.pm6) [Border_style](/gen/lib/ISO_32000/Border_style.pm6) [Collection_sort](/gen/lib/ISO_32000/Collection_sort.pm6) [Embedded_goto_action_additional](/gen/lib/ISO_32000/Embedded_goto_action_additional.pm6) [Goto_3D_view_action_additional](/gen/lib/ISO_32000/Goto_3D_view_action_additional.pm6) [Goto_action_additional](/gen/lib/ISO_32000/Goto_action_additional.pm6) [Group_Attributes_common](/gen/lib/ISO_32000/Group_Attributes_common.pm6) [Hide_action_additional](/gen/lib/ISO_32000/Hide_action_additional.pm6) [Icon_fit](/gen/lib/ISO_32000/Icon_fit.pm6) [Import-data_action_additional](/gen/lib/ISO_32000/Import-data_action_additional.pm6) [JavaScript_action_additional](/gen/lib/ISO_32000/JavaScript_action_additional.pm6) [Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6) [Media_clip_common](/gen/lib/ISO_32000/Media_clip_common.pm6) [Media_duration](/gen/lib/ISO_32000/Media_duration.pm6) [Media_offset_common](/gen/lib/ISO_32000/Media_offset_common.pm6) [Movie_action_additional](/gen/lib/ISO_32000/Movie_action_additional.pm6) [Named_action_additional](/gen/lib/ISO_32000/Named_action_additional.pm6) [Output_intent](/gen/lib/ISO_32000/Output_intent.pm6) [Page_label](/gen/lib/ISO_32000/Page_label.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6) [Rendition_action_additional](/gen/lib/ISO_32000/Rendition_action_additional.pm6) [Rendition_common](/gen/lib/ISO_32000/Rendition_common.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Requirement_common](/gen/lib/ISO_32000/Requirement_common.pm6) [Requirement_handler](/gen/lib/ISO_32000/Requirement_handler.pm6) [Reset_form_action](/gen/lib/ISO_32000/Reset_form_action.pm6) [Set-OCG-state_action_additional](/gen/lib/ISO_32000/Set-OCG-state_action_additional.pm6) [Soft-mask](/gen/lib/ISO_32000/Soft-mask.pm6) [Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6) [Source_information](/gen/lib/ISO_32000/Source_information.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Submit_form_action](/gen/lib/ISO_32000/Submit_form_action.pm6) [Thread_action_additional](/gen/lib/ISO_32000/Thread_action_additional.pm6) [Timespan](/gen/lib/ISO_32000/Timespan.pm6) [Transition](/gen/lib/ISO_32000/Transition.pm6) [Transition_action_additional](/gen/lib/ISO_32000/Transition_action_additional.pm6) [Transparency_group_additional](/gen/lib/ISO_32000/Transparency_group_additional.pm6) [URI_action_additional](/gen/lib/ISO_32000/URI_action_additional.pm6) [Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6) [Web_Capture_image_set](/gen/lib/ISO_32000/Web_Capture_image_set.pm6) [Web_Capture_page_set_additional](/gen/lib/ISO_32000/Web_Capture_page_set_additional.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6)
SA|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
SE|[Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
SI|[Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6)
SM|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
SMask|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Image](/gen/lib/ISO_32000/Image.pm6)
SMaskInData|[Image](/gen/lib/ISO_32000/Image.pm6)
SP|[Media_rendition](/gen/lib/ISO_32000/Media_rendition.pm6)
SS|[Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Transition](/gen/lib/ISO_32000/Transition.pm6)
SV|[Signature_field](/gen/lib/ISO_32000/Signature_field.pm6)
SW|[Icon_fit](/gen/lib/ISO_32000/Icon_fit.pm6)
Schema|[Collection](/gen/lib/ISO_32000/Collection.pm6)
Script|[Requirement_handler](/gen/lib/ISO_32000/Requirement_handler.pm6)
SeparationColorNames|[Trap_network_appearance_stream](/gen/lib/ISO_32000/Trap_network_appearance_stream.pm6)
SeparationInfo|[Page](/gen/lib/ISO_32000/Page.pm6)
SetF|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
SetFf|[FDF_field](/gen/lib/ISO_32000/FDF_field.pm6)
Shading|[Resource](/gen/lib/ISO_32000/Resource.pm6) [Type_2_Pattern](/gen/lib/ISO_32000/Type_2_Pattern.pm6)
ShadingType|[Shading_common](/gen/lib/ISO_32000/Shading_common.pm6)
ShowControls|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
SigFlags|[Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6)
Signature|[UR_transform](/gen/lib/ISO_32000/UR_transform.pm6)
Size|[Cross_reference_stream](/gen/lib/ISO_32000/Cross_reference_stream.pm6) [Embedded_file_parameter](/gen/lib/ISO_32000/Embedded_file_parameter.pm6) [File_trailer](/gen/lib/ISO_32000/File_trailer.pm6) [OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6) [Type_0_Function](/gen/lib/ISO_32000/Type_0_Function.pm6)
Solidities|[DeviceN_mixing_hints](/gen/lib/ISO_32000/DeviceN_mixing_hints.pm6)
Sort|[Collection](/gen/lib/ISO_32000/Collection.pm6)
Sound|[Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6) [Sound_annotation_additional](/gen/lib/ISO_32000/Sound_annotation_additional.pm6)
SpiderInfo|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
St|[Page_label](/gen/lib/ISO_32000/Page_label.pm6)
Start|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6)
StartResource|[Slideshow](/gen/lib/ISO_32000/Slideshow.pm6)
State|[Set-OCG-state_action_additional](/gen/lib/ISO_32000/Set-OCG-state_action_additional.pm6) [Text_annotation_additional](/gen/lib/ISO_32000/Text_annotation_additional.pm6)
StateModel|[Text_annotation_additional](/gen/lib/ISO_32000/Text_annotation_additional.pm6)
Status|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6)
StemH|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
StemV|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
Stm|[Marked_content_reference](/gen/lib/ISO_32000/Marked_content_reference.pm6)
StmF|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6)
StmOwn|[Marked_content_reference](/gen/lib/ISO_32000/Marked_content_reference.pm6)
StrF|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6)
StructParent|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Structure_element_access_additional](/gen/lib/ISO_32000/Structure_element_access_additional.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
StructParents|[Page](/gen/lib/ISO_32000/Page.pm6) [Structure_element_access_additional](/gen/lib/ISO_32000/Structure_element_access_additional.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6)
StructTreeRoot|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Style|[CIDFont_descriptor_additional](/gen/lib/ISO_32000/CIDFont_descriptor_additional.pm6)
SubFilter|[Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
Subj|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6)
Subject|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6) [Info](/gen/lib/ISO_32000/Info.pm6)
SubjectDN|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6)
Subtype|[Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Artifact](/gen/lib/ISO_32000/Artifact.pm6) [CIDFont](/gen/lib/ISO_32000/CIDFont.pm6) [Caret_annotation_additional](/gen/lib/ISO_32000/Caret_annotation_additional.pm6) [Collection_field](/gen/lib/ISO_32000/Collection_field.pm6) [DeviceN_colour_space_attributes](/gen/lib/ISO_32000/DeviceN_colour_space_attributes.pm6) [Embedded_file_stream](/gen/lib/ISO_32000/Embedded_file_stream.pm6) [Embedded_font_stream_additional](/gen/lib/ISO_32000/Embedded_font_stream_additional.pm6) [File_attachment_annotation_additional](/gen/lib/ISO_32000/File_attachment_annotation_additional.pm6) [Free_text_annotation_additional](/gen/lib/ISO_32000/Free_text_annotation_additional.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Ink_annotation_additional](/gen/lib/ISO_32000/Ink_annotation_additional.pm6) [Line_annotation_additional](/gen/lib/ISO_32000/Line_annotation_additional.pm6) [Link_annotation_additional](/gen/lib/ISO_32000/Link_annotation_additional.pm6) [Measure](/gen/lib/ISO_32000/Measure.pm6) [Metadata_stream_additional](/gen/lib/ISO_32000/Metadata_stream_additional.pm6) [Movie_annotation_additional](/gen/lib/ISO_32000/Movie_annotation_additional.pm6) [Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6) [Popup_annotation_additional](/gen/lib/ISO_32000/Popup_annotation_additional.pm6) [Postscript_XObject](/gen/lib/ISO_32000/Postscript_XObject.pm6) [Printers_mark_annotation](/gen/lib/ISO_32000/Printers_mark_annotation.pm6) [Projection](/gen/lib/ISO_32000/Projection.pm6) [Redaction_annotation_additional](/gen/lib/ISO_32000/Redaction_annotation_additional.pm6) [Render_mode](/gen/lib/ISO_32000/Render_mode.pm6) [Rubber_stamp_annotation_additional](/gen/lib/ISO_32000/Rubber_stamp_annotation_additional.pm6) [Screen_annotation_additional](/gen/lib/ISO_32000/Screen_annotation_additional.pm6) [Slideshow](/gen/lib/ISO_32000/Slideshow.pm6) [Sound_annotation_additional](/gen/lib/ISO_32000/Sound_annotation_additional.pm6) [Square_or_circle_annotation_additional](/gen/lib/ISO_32000/Square_or_circle_annotation_additional.pm6) [Text_annotation_additional](/gen/lib/ISO_32000/Text_annotation_additional.pm6) [Text_markup_annotation_additional](/gen/lib/ISO_32000/Text_markup_annotation_additional.pm6) [Three-D_animation_style](/gen/lib/ISO_32000/Three-D_animation_style.pm6) [Three-D_annotation](/gen/lib/ISO_32000/Three-D_annotation.pm6) [Three-D_background](/gen/lib/ISO_32000/Three-D_background.pm6) [Three-D_external_data](/gen/lib/ISO_32000/Three-D_external_data.pm6) [Three-D_lighting_scheme](/gen/lib/ISO_32000/Three-D_lighting_scheme.pm6) [Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6) [Trap_network_annotation](/gen/lib/ISO_32000/Trap_network_annotation.pm6) [Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6) [Watermark_annotation_additional](/gen/lib/ISO_32000/Watermark_annotation_additional.pm6) [Widget_annotation_additional](/gen/lib/ISO_32000/Widget_annotation_additional.pm6)
Supplement|[CIDSystemInfo](/gen/lib/ISO_32000/CIDSystemInfo.pm6)
Suspects|[Mark_information](/gen/lib/ISO_32000/Mark_information.pm6)
Sy|[Caret_annotation_additional](/gen/lib/ISO_32000/Caret_annotation_additional.pm6)
Synchronous|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6) [Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6)
T|[Annotation_markup_additional](/gen/lib/ISO_32000/Annotation_markup_additional.pm6) [Bead](/gen/lib/ISO_32000/Bead.pm6) [Embedded_goto_action_additional](/gen/lib/ISO_32000/Embedded_goto_action_additional.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Hide_action_additional](/gen/lib/ISO_32000/Hide_action_additional.pm6) [Linearization_parameter](/gen/lib/ISO_32000/Linearization_parameter.pm6) [Media_duration](/gen/lib/ISO_32000/Media_duration.pm6) [Media_offset_time](/gen/lib/ISO_32000/Media_offset_time.pm6) [Movie_action_additional](/gen/lib/ISO_32000/Movie_action_additional.pm6) [Movie_annotation_additional](/gen/lib/ISO_32000/Movie_annotation_additional.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6) [Screen_annotation_additional](/gen/lib/ISO_32000/Screen_annotation_additional.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Target](/gen/lib/ISO_32000/Target.pm6) [Web_Capture_page_set_additional](/gen/lib/ISO_32000/Web_Capture_page_set_additional.pm6)
TA|[Goto_3D_view_action_additional](/gen/lib/ISO_32000/Goto_3D_view_action_additional.pm6)
TB|[Three-D_activation](/gen/lib/ISO_32000/Three-D_activation.pm6)
TF|[Media_permissions](/gen/lib/ISO_32000/Media_permissions.pm6)
TI|[Choice_field_additional](/gen/lib/ISO_32000/Choice_field_additional.pm6)
TID|[Web_Capture_page_set_additional](/gen/lib/ISO_32000/Web_Capture_page_set_additional.pm6)
TK|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
TM|[Field_common](/gen/lib/ISO_32000/Field_common.pm6) [Three-D_animation_style](/gen/lib/ISO_32000/Three-D_animation_style.pm6)
TP|[Appearance_characteristics](/gen/lib/ISO_32000/Appearance_characteristics.pm6)
TR|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Soft-mask](/gen/lib/ISO_32000/Soft-mask.pm6)
TR2|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
TRef|[FDF_template](/gen/lib/ISO_32000/FDF_template.pm6)
TS|[Source_information](/gen/lib/ISO_32000/Source_information.pm6) [Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6)
TT|[Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6)
TU|[Field_common](/gen/lib/ISO_32000/Field_common.pm6)
Tabs|[Page](/gen/lib/ISO_32000/Page.pm6)
Tags|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6)
Target|[FDF_dictionary](/gen/lib/ISO_32000/FDF_dictionary.pm6)
TemplateInstantiated|[Page](/gen/lib/ISO_32000/Page.pm6)
Templates|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6) [FDF_page](/gen/lib/ISO_32000/FDF_page.pm6)
Threads|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Thumb|[Page](/gen/lib/ISO_32000/Page.pm6)
TilingType|[Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6)
TimeStamp|[Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6)
Tint|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
Title|[Info](/gen/lib/ISO_32000/Info.pm6) [Outline_item](/gen/lib/ISO_32000/Outline_item.pm6)
ToUnicode|[Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
Trans|[Page](/gen/lib/ISO_32000/Page.pm6) [Transition_action_additional](/gen/lib/ISO_32000/Transition_action_additional.pm6)
TransformMethod|[Signature_reference](/gen/lib/ISO_32000/Signature_reference.pm6)
TransformParams|[Signature_reference](/gen/lib/ISO_32000/Signature_reference.pm6)
Transparency|[OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6)
TrapRegions|[Trap_network_appearance_stream](/gen/lib/ISO_32000/Trap_network_appearance_stream.pm6)
TrapStyles|[Trap_network_appearance_stream](/gen/lib/ISO_32000/Trap_network_appearance_stream.pm6)
Trapped|[Info](/gen/lib/ISO_32000/Info.pm6)
TrimBox|[Box_colour_information](/gen/lib/ISO_32000/Box_colour_information.pm6) [Page](/gen/lib/ISO_32000/Page.pm6)
Type|[Action_common](/gen/lib/ISO_32000/Action_common.pm6) [Annotation_common](/gen/lib/ISO_32000/Annotation_common.pm6) [Artifact](/gen/lib/ISO_32000/Artifact.pm6) [Bead](/gen/lib/ISO_32000/Bead.pm6) [Border_style](/gen/lib/ISO_32000/Border_style.pm6) [CIDFont](/gen/lib/ISO_32000/CIDFont.pm6) [CMap_stream](/gen/lib/ISO_32000/CMap_stream.pm6) [Catalog](/gen/lib/ISO_32000/Catalog.pm6) [Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6) [Collection](/gen/lib/ISO_32000/Collection.pm6) [Collection_field](/gen/lib/ISO_32000/Collection_field.pm6) [Collection_schema](/gen/lib/ISO_32000/Collection_schema.pm6) [Collection_sort](/gen/lib/ISO_32000/Collection_sort.pm6) [Cross_reference_stream](/gen/lib/ISO_32000/Cross_reference_stream.pm6) [DocMDP_transform](/gen/lib/ISO_32000/DocMDP_transform.pm6) [Embedded_file_stream](/gen/lib/ISO_32000/Embedded_file_stream.pm6) [Encoding](/gen/lib/ISO_32000/Encoding.pm6) [FieldMDP_transform](/gen/lib/ISO_32000/FieldMDP_transform.pm6) [File_specification](/gen/lib/ISO_32000/File_specification.pm6) [Fixed_print](/gen/lib/ISO_32000/Fixed_print.pm6) [Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6) [Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6) [Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6) [Group_Attributes_common](/gen/lib/ISO_32000/Group_Attributes_common.pm6) [Image](/gen/lib/ISO_32000/Image.pm6) [Marked_content_reference](/gen/lib/ISO_32000/Marked_content_reference.pm6) [Measure](/gen/lib/ISO_32000/Measure.pm6) [Media_clip_common](/gen/lib/ISO_32000/Media_clip_common.pm6) [Media_duration](/gen/lib/ISO_32000/Media_duration.pm6) [Media_offset_common](/gen/lib/ISO_32000/Media_offset_common.pm6) [Media_permissions](/gen/lib/ISO_32000/Media_permissions.pm6) [Media_play_parameters](/gen/lib/ISO_32000/Media_play_parameters.pm6) [Media_player_info](/gen/lib/ISO_32000/Media_player_info.pm6) [Media_players](/gen/lib/ISO_32000/Media_players.pm6) [Media_screen_parameters](/gen/lib/ISO_32000/Media_screen_parameters.pm6) [Metadata_stream_additional](/gen/lib/ISO_32000/Metadata_stream_additional.pm6) [Mimimum_screen_size](/gen/lib/ISO_32000/Mimimum_screen_size.pm6) [Minimum_bit_depth](/gen/lib/ISO_32000/Minimum_bit_depth.pm6) [Navigation_node](/gen/lib/ISO_32000/Navigation_node.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6) [Object_reference](/gen/lib/ISO_32000/Object_reference.pm6) [Object_stream](/gen/lib/ISO_32000/Object_stream.pm6) [Optional_Content_Group](/gen/lib/ISO_32000/Optional_Content_Group.pm6) [Optional_Content_Group_Membership](/gen/lib/ISO_32000/Optional_Content_Group_Membership.pm6) [Outline](/gen/lib/ISO_32000/Outline.pm6) [Output_intent](/gen/lib/ISO_32000/Output_intent.pm6) [Page](/gen/lib/ISO_32000/Page.pm6) [Page_label](/gen/lib/ISO_32000/Page_label.pm6) [Pages](/gen/lib/ISO_32000/Pages.pm6) [Postscript_XObject](/gen/lib/ISO_32000/Postscript_XObject.pm6) [Render_mode](/gen/lib/ISO_32000/Render_mode.pm6) [Rendition_common](/gen/lib/ISO_32000/Rendition_common.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Requirement_common](/gen/lib/ISO_32000/Requirement_common.pm6) [Requirement_handler](/gen/lib/ISO_32000/Requirement_handler.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Signature_field_lock](/gen/lib/ISO_32000/Signature_field_lock.pm6) [Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6) [Signature_reference](/gen/lib/ISO_32000/Signature_reference.pm6) [Slideshow](/gen/lib/ISO_32000/Slideshow.pm6) [Soft-mask](/gen/lib/ISO_32000/Soft-mask.pm6) [Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6) [Sound_object](/gen/lib/ISO_32000/Sound_object.pm6) [Structure_tree_element](/gen/lib/ISO_32000/Structure_tree_element.pm6) [Structure_tree_root](/gen/lib/ISO_32000/Structure_tree_root.pm6) [Thread](/gen/lib/ISO_32000/Thread.pm6) [Three-D_animation_style](/gen/lib/ISO_32000/Three-D_animation_style.pm6) [Three-D_background](/gen/lib/ISO_32000/Three-D_background.pm6) [Three-D_cross_section](/gen/lib/ISO_32000/Three-D_cross_section.pm6) [Three-D_external_data](/gen/lib/ISO_32000/Three-D_external_data.pm6) [Three-D_lighting_scheme](/gen/lib/ISO_32000/Three-D_lighting_scheme.pm6) [Three-D_node](/gen/lib/ISO_32000/Three-D_node.pm6) [Three-D_reference](/gen/lib/ISO_32000/Three-D_reference.pm6) [Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6) [Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6) [Timespan](/gen/lib/ISO_32000/Timespan.pm6) [Transition](/gen/lib/ISO_32000/Transition.pm6) [Type_0_Font](/gen/lib/ISO_32000/Type_0_Font.pm6) [Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_1_Form](/gen/lib/ISO_32000/Type_1_Form.pm6) [Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6) [Type_2_Pattern](/gen/lib/ISO_32000/Type_2_Pattern.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6) [UR_transform](/gen/lib/ISO_32000/UR_transform.pm6) [Viewport](/gen/lib/ISO_32000/Viewport.pm6) [Web_Capture_content_sets](/gen/lib/ISO_32000/Web_Capture_content_sets.pm6)
U|[Additional_encryption](/gen/lib/ISO_32000/Additional_encryption.pm6) [Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6) [Number_format](/gen/lib/ISO_32000/Number_format.pm6) [Software_identifier](/gen/lib/ISO_32000/Software_identifier.pm6) [URL_alias](/gen/lib/ISO_32000/URL_alias.pm6)
U3DPath|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
UC|[Floating_window_parameter](/gen/lib/ISO_32000/Floating_window_parameter.pm6)
UCR|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
UCR2|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
UF|[File_specification](/gen/lib/ISO_32000/File_specification.pm6)
UR3|[Permissions](/gen/lib/ISO_32000/Permissions.pm6)
URI|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [URI_action_additional](/gen/lib/ISO_32000/URI_action_additional.pm6)
URL|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6) [Web_capture_command](/gen/lib/ISO_32000/Web_capture_command.pm6)
URLS|[Catalog_Name_tree](/gen/lib/ISO_32000/Catalog_Name_tree.pm6)
URLType|[Certificate_seed_value](/gen/lib/ISO_32000/Certificate_seed_value.pm6)
Unix|[File_specification](/gen/lib/ISO_32000/File_specification.pm6) [Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6)
Usage|[Optional_Content_Group](/gen/lib/ISO_32000/Optional_Content_Group.pm6)
UseCMap|[CMap_stream](/gen/lib/ISO_32000/CMap_stream.pm6)
User|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
UserProperties|[Mark_information](/gen/lib/ISO_32000/Mark_information.pm6)
UserUnit|[Page](/gen/lib/ISO_32000/Page.pm6)
V|[Bead](/gen/lib/ISO_32000/Bead.pm6) [Collection_field](/gen/lib/ISO_32000/Collection_field.pm6) [DocMDP_transform](/gen/lib/ISO_32000/DocMDP_transform.pm6) [Encryption_common](/gen/lib/ISO_32000/Encryption_common.pm6) [FDF_field](/gen/lib/ISO_32000/FDF_field.pm6) [FieldMDP_transform](/gen/lib/ISO_32000/FieldMDP_transform.pm6) [Field_common](/gen/lib/ISO_32000/Field_common.pm6) [File_specification](/gen/lib/ISO_32000/File_specification.pm6) [Fixed_print](/gen/lib/ISO_32000/Fixed_print.pm6) [Form_additional_actions](/gen/lib/ISO_32000/Form_additional_actions.pm6) [Goto_3D_view_action_additional](/gen/lib/ISO_32000/Goto_3D_view_action_additional.pm6) [Mimimum_screen_size](/gen/lib/ISO_32000/Mimimum_screen_size.pm6) [Minimum_bit_depth](/gen/lib/ISO_32000/Minimum_bit_depth.pm6) [Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6) [Signature](/gen/lib/ISO_32000/Signature.pm6) [Signature_field_seed_value](/gen/lib/ISO_32000/Signature_field_seed_value.pm6) [Three-D_node](/gen/lib/ISO_32000/Three-D_node.pm6) [Timespan](/gen/lib/ISO_32000/Timespan.pm6) [UR_transform](/gen/lib/ISO_32000/UR_transform.pm6) [User_property](/gen/lib/ISO_32000/User_property.pm6) [Web_Capture_information](/gen/lib/ISO_32000/Web_Capture_information.pm6)
VA|[Three-D_stream](/gen/lib/ISO_32000/Three-D_stream.pm6)
VE|[Optional_Content_Group_Membership](/gen/lib/ISO_32000/Optional_Content_Group_Membership.pm6)
VP|[Page](/gen/lib/ISO_32000/Page.pm6)
Version|[Catalog](/gen/lib/ISO_32000/Catalog.pm6) [FDF_catalog](/gen/lib/ISO_32000/FDF_catalog.pm6) [OPI_version_1_3](/gen/lib/ISO_32000/OPI_version_1_3.pm6) [OPI_version_2_0](/gen/lib/ISO_32000/OPI_version_2_0.pm6) [Trap_network_annotation](/gen/lib/ISO_32000/Trap_network_annotation.pm6)
Vertices|[Polygon_or_polyline_annotation_additional](/gen/lib/ISO_32000/Polygon_or_polyline_annotation_additional.pm6)
VerticesPerRow|[Type_5_Shading](/gen/lib/ISO_32000/Type_5_Shading.pm6)
View|[Collection](/gen/lib/ISO_32000/Collection.pm6) [Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
ViewArea|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
ViewClip|[Viewer_preferences](/gen/lib/ISO_32000/Viewer_preferences.pm6)
ViewerPreferences|[Catalog](/gen/lib/ISO_32000/Catalog.pm6)
Volume|[Movie_activitation](/gen/lib/ISO_32000/Movie_activitation.pm6) [Sound_action_additional](/gen/lib/ISO_32000/Sound_action_additional.pm6)
W|[Border_style](/gen/lib/ISO_32000/Border_style.pm6) [CIDFont](/gen/lib/ISO_32000/CIDFont.pm6) [Cross_reference_stream](/gen/lib/ISO_32000/Cross_reference_stream.pm6) [Media_screen_parameters_MH-BE](/gen/lib/ISO_32000/Media_screen_parameters_MH-BE.pm6)
W2|[CIDFont](/gen/lib/ISO_32000/CIDFont.pm6)
WC|[Catalog_additional_actions](/gen/lib/ISO_32000/Catalog_additional_actions.pm6)
WMode|[CMap_stream](/gen/lib/ISO_32000/CMap_stream.pm6)
WP|[Catalog_additional_actions](/gen/lib/ISO_32000/Catalog_additional_actions.pm6)
WS|[Catalog_additional_actions](/gen/lib/ISO_32000/Catalog_additional_actions.pm6)
WhitePoint|[CalGray_colour_space](/gen/lib/ISO_32000/CalGray_colour_space.pm6) [CalRGB_colour_space](/gen/lib/ISO_32000/CalRGB_colour_space.pm6) [Lab_colour_space](/gen/lib/ISO_32000/Lab_colour_space.pm6)
Width|[Image](/gen/lib/ISO_32000/Image.pm6) [Inline_Image](/gen/lib/ISO_32000/Inline_Image.pm6)
Widths|[Type_1_Font](/gen/lib/ISO_32000/Type_1_Font.pm6) [Type_3_Font](/gen/lib/ISO_32000/Type_3_Font.pm6)
Win|[Launch_action_additional](/gen/lib/ISO_32000/Launch_action_additional.pm6)
X|[Annotation_additional_actions](/gen/lib/ISO_32000/Annotation_additional_actions.pm6) [Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6)
XFA|[Interactive_form](/gen/lib/ISO_32000/Interactive_form.pm6)
XHeight|[Font_descriptor_common](/gen/lib/ISO_32000/Font_descriptor_common.pm6)
XN|[Three-D_view](/gen/lib/ISO_32000/Three-D_view.pm6)
XObject|[Resource](/gen/lib/ISO_32000/Resource.pm6)
XStep|[Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6)
Y|[Rectilinear_measure_additional](/gen/lib/ISO_32000/Rectilinear_measure_additional.pm6)
YStep|[Type_1_Pattern](/gen/lib/ISO_32000/Type_1_Pattern.pm6)
Z|[Rendition_critera](/gen/lib/ISO_32000/Rendition_critera.pm6)
Zoom|[Optional_Content_Group_Usage](/gen/lib/ISO_32000/Optional_Content_Group_Usage.pm6)
ca|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
op|[Graphics_state](/gen/lib/ISO_32000/Graphics_state.pm6)
