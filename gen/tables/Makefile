## Makefile to desseminate tables from PDF Specification
## as referenced throughout the Perl 6 PDF Tool-chain.
## Used for documentation and automated cross-checking
## Notes:
## - Tables aren't mapped to Outlines (outline dicts don't have a /SE entry to
##   cross reference the struct-tree).
## - Need to be dug out of the spec either by bredth-first search of the struct-tree,
##   or page-by-page.
## - I've chosen page-by-page. Easier to reference the spec this way.
## - Doing them one at a time. Not fast.
## - Would be good to generate them all in one run,
##   but that takes a lot of memory.
## - Could batch a few at a time, with a bit more work
## - But only need to do this occasionally, anyway

PDF_SPEC=../../src/PDF32000_2008.pdf
define table_to_html
    (echo '<Html><Head/><Body>' && perl6 ../../bin/pdf-struct-dump.p6 --/atts --max-depth=8 --search-tag=Table --page=$(1) $(2) $(PDF_SPEC) && echo '</Body></Html>')
endef

all : tables
tables : Stream_entries.html Standard_filters.html LZW_and_Flate_filter_params.html CCITTFax_filter_params.html File_trailer_entries.html Object_stream_entries.html Cross_reference_stream_entries.html Cross_reference_stream_fields.html Encryption_entries.html Additional_encryption_entries.html User_access_permissions.html Catalog_entries.html Pages_entries.html Page_entries.html Catalog_Name_tree_entries.html Resource_entries.html PDF_data_types.html String_object_data_types.html Name_tree_node_entries.html Number_tree_node_entries.html Function_common_entries.html Type_0_Function_entries.html Type_2_Function_entries.html Type_3_Function_entries.html Type_4_Function_operators.html File_specification_entries.html Embedded_file_stream_entries.html Embedded_file_parameter_entries.html Operator_categories.html Device_independent_graphics_state.html Device_dependent_graphics_state.html Graphics_state_operators.html Graphics_state_entries.html Path_construction_operators.html Path_painting_operators.html Clipping_path_operators.html Colour_space_families.html CalGray_colour_space_entries.html CalRGB_colour_space_entries.html Lab_colour_space_entries.html ICC_profile_entries.html ICC_profile_versions.html ICC_profile_types.html ICC_profile_ranges.html Rendering_intents.html DeviceN_colour_space_attributes_entries.html DeviceN_process_entries.html DeviceN_mixing_hints_entries.html Colour_operators.html Type_1_Pattern_entries.html Type_2_Pattern_entries.html Shading_operator.html Shading_common_entries.html Type_1_Shading_entries.html Type_2_Shading_entries.html Type_3_Shading_entries.html Type_4_Shading_entries.html Type_5_Shading_entries.html Type_6_Shading_entries.html Data_values_in_a_coons_patch_mesh.html Data_values_in_a_tensor_product_patch_mesh.html XObject_operator.html Postscript_XObject_entries.html Image_entries.html Default_decode_arrays.html Alternate_Image_entries.html Inline_Image_operators.html Inline_Image_entries.html Inline_Image_additional_operators.html Type_1_Form_entries.html Group_Attributes_entries.html Reference_entries.html Optional_Content_Group_entries.html Optional_Content_Group_Membership_entries.html Optional_Content_Group_Properties_entries.html Optional_Content_Group_Configuration_entries.html Optional_Content_Group_Usage_entries.html Optional_Content_Group_Application_entries.html Text_state_parameters.html Text_state_operators.html Text_rendering_modes.html Text_object_operators.html Text_position_operators.html Text_showing_operators.html Font_types.html Type_1_Font_entries.html Type_3_Font_entries.html Type_3_Font_operators.html Encoding_entries.html MacOS_encoding_differences.html CIDSystemInfo_entries.html CIDFont_entries.html CJK_CMap_names.html Character_collections_for_CMaps.html CMap_stream_entries.html Type_0_Font_entries.html Font_descriptor_entries.html Font_descriptor_flags.html CIDFont_descriptor_additional_entries.html Glyph_classes_in_CJK_fonts.html Embedded_font_organisation.html Embedded_font_stream_additional_entries.html Soft-mask_entries.html Transparency_group_additional_entries.html Viewer_preferences_entries.html Destination_syntax.html Outline_entries.html Outline_item_entries.html 

# Table 5
Stream_entries.html :
	$(call table_to_html,28) > $@

# Table 6
Standard_filters.html :
	$(call table_to_html,31) > $@

# Table 8
LZW_and_Flate_filter_params.html :
	$(call table_to_html,35) > $@

# Table 11
CCITTFax_filter_params.html :
	$(call table_to_html,38) > $@

# Table 15
File_trailer_entries.html :
	$(call table_to_html,51) > $@

# Table 16
Object_stream_entries.html :
	$(call table_to_html,54) > $@

# Table 17
Cross_reference_stream_entries.html :
	$(call table_to_html,58) > $@

# Table 18
Cross_reference_stream_fields.html :
	$(call table_to_html,59,--select=1) > $@

# Table 20
Encryption_entries.html :
	$(call table_to_html,64) > $@

# Table 21
Additional_encryption_entries.html :
	$(call table_to_html,68) > $@

# Table 22
User_access_permissions.html :
	$(call table_to_html,69) > $@

# Table 28
Catalog_entries.html :
	$(call table_to_html,81) > $@

# Table 29
Pages_entries.html :
	$(call table_to_html,84) > $@

# Table 30
Page_entries.html :
	$(call table_to_html,85) > $@

# Table 31
Catalog_Name_tree_entries.html :
	$(call table_to_html,89) > $@

# Table 33
Resource_entries.html :
	$(call table_to_html,91) > $@

# Table 34
PDF_data_types.html :
	$(call table_to_html,92) > $@

# Table 35
String_object_data_types.html :
	$(call table_to_html,94) > $@

# Table 36
Name_tree_node_entries.html :
	$(call table_to_html,97) > $@

# Table 37
Number_tree_node_entries.html :
	$(call table_to_html,99) > $@

# Table 38
Function_common_entries.html :
	$(call table_to_html,101) > $@

# Table 39
Type_0_Function_entries.html :
	$(call table_to_html,102) > $@

# Table 40
Type_2_Function_entries.html :
	$(call table_to_html,104) > $@

# Table 41
Type_3_Function_entries.html :
	$(call table_to_html,105) > $@

# Table 42
Type_4_Function_operators.html :
	$(call table_to_html,106) > $@

# Table 44
File_specification_entries.html :
	$(call table_to_html,110) > $@

# Table 45
Embedded_file_stream_entries.html :
	$(call table_to_html,112,--select=1) > $@

# Table 46
Embedded_file_parameter_entries.html :
	$(call table_to_html,112,--select=2) > $@

# Table 51
Operator_categories.html :
	$(call table_to_html,120) > $@

# Table 52
Device_independent_graphics_state.html :
	$(call table_to_html,129) > $@

# Table 53
Device_dependent_graphics_state.html :
	$(call table_to_html,130) > $@

# Table 57
Graphics_state_operators.html :
	$(call table_to_html,135,--select=2) > $@

# Table 58
Graphics_state_entries.html :
	$(call table_to_html,136) > $@

# Table 59
Path_construction_operators.html :
	$(call table_to_html,140) > $@

# Table 60
Path_painting_operators.html :
	$(call table_to_html,143) > $@

# Table 61
Clipping_path_operators.html :
	$(call table_to_html,146) > $@

# Table 62
Colour_space_families.html :
	$(call table_to_html,147) > $@

# Table 63
CalGray_colour_space_entries.html :
	$(call table_to_html,153) > $@

# Table 64
CalRGB_colour_space_entries.html :
	$(call table_to_html,154) > $@

# Table 65
Lab_colour_space_entries.html :
	$(call table_to_html,156) > $@

# Table 66
ICC_profile_entries.html :
	$(call table_to_html,157) > $@

# Table 67
ICC_profile_versions.html :
	$(call table_to_html,158) > $@

# Table 68
ICC_profile_types.html :
	$(call table_to_html,159,--select=1) > $@

# Table 69
ICC_profile_ranges.html :
	$(call table_to_html,159,--select=2) > $@

# Table 70
Rendering_intents.html :
	$(call table_to_html,163) > $@

# Table 71
DeviceN_colour_space_attributes_entries.html :
	$(call table_to_html,169) > $@

# Table 72
DeviceN_process_entries.html :
	$(call table_to_html,171,--select=1) > $@

# Table 73
DeviceN_mixing_hints_entries.html :
	$(call table_to_html,171,--select=2) > $@

# Table 74
Colour_operators.html :
	$(call table_to_html,179) > $@

# Table 75
Type_1_Pattern_entries.html :
	$(call table_to_html,182) > $@

# Table 76
Type_2_Pattern_entries.html :
	$(call table_to_html,189) > $@

# Table 77
Shading_operator.html :
	$(call table_to_html,190) > $@

# Table 78
Shading_common_entries.html :
	$(call table_to_html,191) > $@

# Table 79
Type_1_Shading_entries.html :
	$(call table_to_html,193) > $@

# Table 80
Type_2_Shading_entries.html :
	$(call table_to_html,194) > $@

# Table 81
Type_3_Shading_entries.html :
	$(call table_to_html,195) > $@

# Table 82
Type_4_Shading_entries.html :
	$(call table_to_html,197) > $@

# Table 83
Type_5_Shading_entries.html :
	$(call table_to_html,201) > $@

# Table 84
Type_6_Shading_entries.html :
	$(call table_to_html,204) > $@

# Table 85
Data_values_in_a_coons_patch_mesh.html :
	$(call table_to_html,206) > $@

# Table 86
Data_values_in_a_tensor_product_patch_mesh.html :
	$(call table_to_html,209) > $@

# Table 87
XObject_operator.html :
	$(call table_to_html,210,--select=1) > $@

# Table 88
Postscript_XObject_entries.html :
	$(call table_to_html,210,--select=2) > $@

# Table 89
Image_entries.html :
	$(call table_to_html,214) > $@

# Table 90
Default_decode_arrays.html :
	$(call table_to_html,218) > $@

# Table 91
Alternate_Image_entries.html :
	$(call table_to_html,220) > $@

# Table 92
Inline_Image_operators.html :
	$(call table_to_html,223,--select=1) > $@

# Table 93
Inline_Image_entries.html :
	$(call table_to_html,223,--select=2) > $@

# Table 94
Inline_Image_additional_operators.html :
	$(call table_to_html,223,--select=3) > $@

# Table 95
Type_1_Form_entries.html :
	$(call table_to_html,226) > $@

# Table 96
Group_Attributes_entries.html :
	$(call table_to_html,228) > $@

# Table 97
Reference_entries.html :
	$(call table_to_html,229) > $@

# Table 98
Optional_Content_Group_entries.html :
	$(call table_to_html,230) > $@

# Table 99
Optional_Content_Group_Membership_entries.html :
	$(call table_to_html,231) > $@

# Table 100
Optional_Content_Group_Properties_entries.html :
	$(call table_to_html,236) > $@

# Table 101
Optional_Content_Group_Configuration_entries.html :
	$(call table_to_html,237) > $@

# Table 102
Optional_Content_Group_Usage_entries.html :
	$(call table_to_html,240) > $@

# Table 103
Optional_Content_Group_Application_entries.html :
	$(call table_to_html,241) > $@

# Table 104
Text_state_parameters.html :
	$(call table_to_html,251,--select=1) > $@

# Table 105
Text_state_operators.html :
	$(call table_to_html,251,--select=2) > $@

# Table 106
Text_rendering_modes.html :
	$(call table_to_html,255) > $@

# Table 107
Text_object_operators.html :
	$(call table_to_html,256) > $@

# Table 108
Text_position_operators.html :
	$(call table_to_html,257) > $@

# Table 109
Text_showing_operators.html :
	$(call table_to_html,258) > $@

# Table 110
Font_types.html :
	$(call table_to_html,261) > $@

# Table 111
Type_1_Font_entries.html :
	$(call table_to_html,262) > $@

# Table 112
Type_3_Font_entries.html :
	$(call table_to_html,266) > $@

# Table 113
Type_3_Font_operators.html :
	$(call table_to_html,268) > $@

# Table 114
Encoding_entries.html :
	$(call table_to_html,271) > $@

# Table 115
MacOS_encoding_differences.html :
	$(call table_to_html,274) > $@

# Table 116
CIDSystemInfo_entries.html :
	$(call table_to_html,276) > $@

# Table 117
CIDFont_entries.html :
	$(call table_to_html,277) > $@

# Table 118
CJK_CMap_names.html :
	$(call table_to_html,281) > $@

# Table 119
Character_collections_for_CMaps.html :
	$(call table_to_html,283) > $@

# Table 120
CMap_stream_entries.html :
	$(call table_to_html,285) > $@

# Table 121
Type_0_Font_entries.html :
	$(call table_to_html,287) > $@

# Table 122
Font_descriptor_entries.html :
	$(call table_to_html,290) > $@

# Table 123
Font_descriptor_flags.html :
	$(call table_to_html,291) > $@

# Table 124
CIDFont_descriptor_additional_entries.html :
	$(call table_to_html,293) > $@

# Table 125
Glyph_classes_in_CJK_fonts.html :
	$(call table_to_html,295) > $@

# Table 126
Embedded_font_organisation.html :
	$(call table_to_html,297) > $@

# Table 127
Embedded_font_stream_additional_entries.html :
	$(call table_to_html,298) > $@

# Table 144
Soft-mask_entries.html :
	$(call table_to_html,355) > $@

# Table 147
Transparency_group_additional_entries.html :
	$(call table_to_html,358) > $@

# Table 150
Viewer_preferences_entries.html :
	$(call table_to_html,370) > $@

# Table 151
Destination_syntax.html :
	$(call table_to_html,374) > $@

# Table 152
Outline_entries.html :
	$(call table_to_html,376,--select=1) > $@

# Table 153
Outline_item_entries.html :
	$(call table_to_html,376,--select=2) > $@

