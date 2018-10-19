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
tables : Table_5_Stream_entries.html Table_6_Standard_filters.html Table_8_LZW_and_Flate_filter_params.html Table_11_CCITTFax_filter_params.html Table_15_File_trailer_entries.html Table_16_Object_stream_entries.html Table_17_Cross_reference_stream_entries.html Table_18_Cross_reference_stream_fields.html Table_20_Encryption_entries.html Table_21_Additional_encryption_entries.html Table_22_User_access_permissions.html Table_28_Catalog_entries.html Table_29_Pages_entries.html Table_30_Page_entries.html Table_31_Catalog_Name_entries.html Table_33_Resource_entries.html Table_34_PDF_data_types.html Table_35_String_object_data_types.html Table_36_Name_tree_node_entries.html Table_37_Number_tree_node_entries.html Table_38_Function_common_entries.html Table_39_Type_0_function_entries.html Table_40_Type_2_function_entries.html Table_41_Type_3_function_entries.html Table_42_Type_4_function_operators.html Table_44_File_specification_entries.html Table_45_Embedded_file_stream_entries.html Table_46_Embedded_file_parameter_entries.html Table_51_Operator_categories.html Table_52_Device_independent_graphics_state.html Table_53_Device_dependent_graphics_state.html Table_57_Graphics_state_operators.html Table_58_Graphics_state_dict_entries.html Table_59_Path_construction_operators.html Table_60_Path_painting_operators.html Table_61_Clipping_path_operators.html Table_62_Colour_space_families.html Table_63_CalGray_colour_space_entries.html Table_64_CalRGB_colour_space_entries.html Table_65_Lab_colour_space_entries.html Table_66_ICC_profile_entries.html Table_67_ICC_profile_versions.html Table_68_ICC_profile_types.html Table_69_ICC_profile_ranges.html Table_70_Rendering_intents.html Table_71_DeviceN_colour_space_attribute_entries.html Table_72_DeviceN_process_entries.html Table_73_DeviceN_mixing_hints_entries.html Table_74_Colour_operators.html Table_75_Type_1_Pattern_entries.html Table_76_Type_2_Pattern_entries.html Table_77_Shading_operator.html Table_78_Shading_common_entries.html Table_79_Type_1_Shading_entries.html Table_80_Type_2_Shading_entries.html Table_81_Type_3_Shading_entries.html Table_82_Type_4_Shading_entries.html Table_83_Type_5_Shading_entries.html Table_84_Type_6_Shading_entries.html Table_85_Data_values_in_a_coons_patch_mesh.html Table_86_Data_values_in_a_tensor_product_patch_mesh.html Table_87_XObject_operator.html Table_88_Postscript_XObject_entries.html Table_89_Image_entries.html Table_90_Default_decode_arrays.html Table_91_Alternate_Image_entries.html Table_92_Inline_Image_operators.html Table_93_Inline_Image_entries.html Table_94_Inline_Image_additional_operators.html Table_95_Type_1_Form_entries.html Table_96_Group_Attributes_entries.html Table_97_Reference_entries.html Table_98_Optional_Content_Group_entries.html Table_99_Optional_Content_Group_Membership_entries.html Table_100_Optional_Content_Group_Properties_entries.html Table_101_Optional_Content_Group_Configuration_entries.html Table_102_Optional_Content_Group_Usage_entries.html Table_103_Optional_Content_Group_Application_entries.html Table_104_Text_state_parameters.html Table_105_Text_state_operators.html Table_106_Text_rendering_modes.html Table_107_Text_object_operators.html Table_108_Text_position_operators.html Table_109_Text_showing_operators.html Table_110_Font_types.html Table_111_Type_1_Font_entries.html Table_112_Type_3_Font_entries.html Table_113_Type_3_Font_operators.html Table_114_Encoding_entries.html Table_115_MacOS_encoding_differences.html Table_116_CIDSystemInfo_entries.html Table_117_CIDFont_entries.html Table_118_CJK_CMap_names.html Table_119_Character_collections_for_CMaps.html Table_120_CMap_stream_entries.html 

Table_5_Stream_entries.html :
	$(call table_to_html,28) > $@

Table_6_Standard_filters.html :
	$(call table_to_html,31) > $@

Table_8_LZW_and_Flate_filter_params.html :
	$(call table_to_html,35) > $@

Table_11_CCITTFax_filter_params.html :
	$(call table_to_html,38) > $@

Table_15_File_trailer_entries.html :
	$(call table_to_html,51) > $@

Table_16_Object_stream_entries.html :
	$(call table_to_html,54) > $@

Table_17_Cross_reference_stream_entries.html :
	$(call table_to_html,58) > $@

Table_18_Cross_reference_stream_fields.html :
	$(call table_to_html,59,--select=1) > $@

Table_20_Encryption_entries.html :
	$(call table_to_html,64) > $@

Table_21_Additional_encryption_entries.html :
	$(call table_to_html,68) > $@

Table_22_User_access_permissions.html :
	$(call table_to_html,69) > $@

Table_28_Catalog_entries.html :
	$(call table_to_html,81) > $@

Table_29_Pages_entries.html :
	$(call table_to_html,84) > $@

Table_30_Page_entries.html :
	$(call table_to_html,85) > $@

Table_31_Catalog_Name_entries.html :
	$(call table_to_html,89) > $@

Table_33_Resource_entries.html :
	$(call table_to_html,91) > $@

Table_34_PDF_data_types.html :
	$(call table_to_html,92) > $@

Table_35_String_object_data_types.html :
	$(call table_to_html,94) > $@

Table_36_Name_tree_node_entries.html :
	$(call table_to_html,97) > $@

Table_37_Number_tree_node_entries.html :
	$(call table_to_html,99) > $@

Table_38_Function_common_entries.html :
	$(call table_to_html,101) > $@

Table_39_Type_0_function_entries.html :
	$(call table_to_html,102) > $@

Table_40_Type_2_function_entries.html :
	$(call table_to_html,104) > $@

Table_41_Type_3_function_entries.html :
	$(call table_to_html,105) > $@

Table_42_Type_4_function_operators.html :
	$(call table_to_html,106) > $@

Table_44_File_specification_entries.html :
	$(call table_to_html,110) > $@

Table_45_Embedded_file_stream_entries.html :
	$(call table_to_html,112,--select=1) > $@

Table_46_Embedded_file_parameter_entries.html :
	$(call table_to_html,112,--select=2) > $@

Table_51_Operator_categories.html :
	$(call table_to_html,120) > $@

Table_52_Device_independent_graphics_state.html :
	$(call table_to_html,129) > $@

Table_53_Device_dependent_graphics_state.html :
	$(call table_to_html,130) > $@

Table_57_Graphics_state_operators.html :
	$(call table_to_html,135,--select=2) > $@

Table_58_Graphics_state_dict_entries.html :
	$(call table_to_html,136) > $@

Table_59_Path_construction_operators.html :
	$(call table_to_html,140) > $@

Table_60_Path_painting_operators.html :
	$(call table_to_html,143) > $@

Table_61_Clipping_path_operators.html :
	$(call table_to_html,146) > $@

Table_62_Colour_space_families.html :
	$(call table_to_html,147) > $@

Table_63_CalGray_colour_space_entries.html :
	$(call table_to_html,153) > $@

Table_64_CalRGB_colour_space_entries.html :
	$(call table_to_html,154) > $@

Table_65_Lab_colour_space_entries.html :
	$(call table_to_html,156) > $@

Table_66_ICC_profile_entries.html :
	$(call table_to_html,157) > $@

Table_67_ICC_profile_versions.html :
	$(call table_to_html,158) > $@

Table_68_ICC_profile_types.html :
	$(call table_to_html,159,--select=1) > $@

Table_69_ICC_profile_ranges.html :
	$(call table_to_html,159,--select=2) > $@

Table_70_Rendering_intents.html :
	$(call table_to_html,163) > $@

Table_71_DeviceN_colour_space_attribute_entries.html :
	$(call table_to_html,169) > $@

Table_72_DeviceN_process_entries.html :
	$(call table_to_html,171,--select=1) > $@

Table_73_DeviceN_mixing_hints_entries.html :
	$(call table_to_html,171,--select=2) > $@

Table_74_Colour_operators.html :
	$(call table_to_html,179) > $@

Table_75_Type_1_Pattern_entries.html :
	$(call table_to_html,182) > $@

Table_76_Type_2_Pattern_entries.html :
	$(call table_to_html,189) > $@

Table_77_Shading_operator.html :
	$(call table_to_html,190) > $@

Table_78_Shading_common_entries.html :
	$(call table_to_html,191) > $@

Table_79_Type_1_Shading_entries.html :
	$(call table_to_html,193) > $@

Table_80_Type_2_Shading_entries.html :
	$(call table_to_html,194) > $@

Table_81_Type_3_Shading_entries.html :
	$(call table_to_html,195) > $@

Table_82_Type_4_Shading_entries.html :
	$(call table_to_html,197) > $@

Table_83_Type_5_Shading_entries.html :
	$(call table_to_html,201) > $@

Table_84_Type_6_Shading_entries.html :
	$(call table_to_html,204) > $@

Table_85_Data_values_in_a_coons_patch_mesh.html :
	$(call table_to_html,206) > $@

Table_86_Data_values_in_a_tensor_product_patch_mesh.html :
	$(call table_to_html,209) > $@

Table_87_XObject_operator.html :
	$(call table_to_html,210,--select=1) > $@

Table_88_Postscript_XObject_entries.html :
	$(call table_to_html,210,--select=2) > $@

Table_89_Image_entries.html :
	$(call table_to_html,214) > $@

Table_90_Default_decode_arrays.html :
	$(call table_to_html,218) > $@

Table_91_Alternate_Image_entries.html :
	$(call table_to_html,220) > $@

Table_92_Inline_Image_operators.html :
	$(call table_to_html,223,--select=1) > $@

Table_93_Inline_Image_entries.html :
	$(call table_to_html,223,--select=2) > $@

Table_94_Inline_Image_additional_operators.html :
	$(call table_to_html,223,--select=3) > $@

Table_95_Type_1_Form_entries.html :
	$(call table_to_html,226) > $@

Table_96_Group_Attributes_entries.html :
	$(call table_to_html,228) > $@

Table_97_Reference_entries.html :
	$(call table_to_html,229) > $@

Table_98_Optional_Content_Group_entries.html :
	$(call table_to_html,230) > $@

Table_99_Optional_Content_Group_Membership_entries.html :
	$(call table_to_html,231) > $@

Table_100_Optional_Content_Group_Properties_entries.html :
	$(call table_to_html,236) > $@

Table_101_Optional_Content_Group_Configuration_entries.html :
	$(call table_to_html,237) > $@

Table_102_Optional_Content_Group_Usage_entries.html :
	$(call table_to_html,240) > $@

Table_103_Optional_Content_Group_Application_entries.html :
	$(call table_to_html,241) > $@

Table_104_Text_state_parameters.html :
	$(call table_to_html,251,--select=1) > $@

Table_105_Text_state_operators.html :
	$(call table_to_html,251,--select=2) > $@

Table_106_Text_rendering_modes.html :
	$(call table_to_html,255) > $@

Table_107_Text_object_operators.html :
	$(call table_to_html,256) > $@

Table_108_Text_position_operators.html :
	$(call table_to_html,257) > $@

Table_109_Text_showing_operators.html :
	$(call table_to_html,258) > $@

Table_110_Font_types.html :
	$(call table_to_html,261) > $@

Table_111_Type_1_Font_entries.html :
	$(call table_to_html,262) > $@

Table_112_Type_3_Font_entries.html :
	$(call table_to_html,266) > $@

Table_113_Type_3_Font_operators.html :
	$(call table_to_html,268) > $@

Table_114_Encoding_entries.html :
	$(call table_to_html,271) > $@

Table_115_MacOS_encoding_differences.html :
	$(call table_to_html,274) > $@

Table_116_CIDSystemInfo_entries.html :
	$(call table_to_html,276) > $@

Table_117_CIDFont_entries.html :
	$(call table_to_html,277) > $@

Table_118_CJK_CMap_names.html :
	$(call table_to_html,281) > $@

Table_119_Character_collections_for_CMaps.html :
	$(call table_to_html,283) > $@

Table_120_CMap_stream_entries.html :
	$(call table_to_html,285) > $@
