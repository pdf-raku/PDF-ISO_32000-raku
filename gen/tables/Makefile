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

PDF_SPEC=../../etc/PDF32000_2008.pdf
define table-to-html
    (echo '<Html><Head/><Body>' && perl6 ../../bin/pdf-struct-dump.p6 --/atts --max-depth=8 --search-tag=Table --page=$(1) $(PDF_SPEC) && echo '</Body></Html>')
endef

all : tables
tables : Table-5-Stream_dictionaries.html Table-6-Standard_filters.html Table-8-LZW_and_Flate_filter_params.html Table-11-CCITTFax_filter_params.html Table-15-File_trailer_entries.html Table-16-Object_stream_entries.html Table-17-Cross_reference_stream_dict_entries.html Table-18-19-Cross_reference_stream_entries.html Table-20-Encryption_entries.html Table-21-Additional_encryption_entries.html Table-22-User_access_permissions.html Table-28-Catalog_entries.html Table-29-Pages_entries.html Table-30-Page_entries.html Table-31-Catalog_Name_entries.html Table-33-Resource_entries.html Table-34-PDF_data_types.html Table-35-String_object_data_types.html Table-36-Name_tree_node_entries.html Table-37-Number_tree_node_entries.html Table-38-Function_common_entries.html Table-39-Type-0-function_entries.html Table-40-Type-2-function_entries.html Table-41-Type-3-function_entries.html Table-42-Type-4-function_operators.html Table-44-45-File_specification_streams_and_parameters.html Table-51-Operator_categories.html Table-52-Device_independent_graphics_state.html Table-53-Device_dependent_graphics_state.html Table-57-Graphics_state_operators.html Table-58-Graphics_state_dict_entries.html Table-59-Path_construction_operators.html Table-60-Path_painting_operators.html Table-61-Clipping_path_operators.html Table-62-Colour_space_families.html Table-63-CalGray_colour_space_entries.html Table-64-CalRGB_colour_space_entries.html Table-65-Lab_colour_space_entries.html Table-66-ICC_profile_entries.html Table-67-ICC_profile_versions.html Table-68-69-ICC_profile_types_and_ranges.html Table-70-Rendering-intents.html Table-71-DeviceN_colour_space_attribute_entries.html Table-72-73-DeviceN_process_and_mixing_hints_entries.html Table-74-Colour_operators.html Table-75-Type_1_Pattern_entries.html Table-76-Type_2_Pattern_entries.html Table-77-Shading_operator.html Table-78-Shading_common_entries.html Table-79-Type_1_Shading_entries.html Table-80-Type_2_Shading_entries.html Table-81-Type_3_Shading_entries.html Table-82-Type_4_Shading_entries.html Table-83-Type_5_Shading_entries.html Table-84-Type_6_Shading_entries.html Table-85-Data_values_in-a_coons_patch_mesh.html Table-86-Data_values_in-a_tensor-product_patch_mesh.html Table-87-88-XObject_operator_and_postscript_entries.html Table-89-Image_entries.html Table-90-Default_decode_arrays.html Table-91-Alternate_Image_entries.html Table-92-93-94-Inline_Image_operators_and_entries_and_additional_operators.html Table-95-Type_1_Form_entries.html Table-96-Group_Attributes_entries.html Table-97-Reference_entries.html Table-98-Optional_Content_Group_entries.html Table-99-Optional_Content_Group_Membership_entries.html Table-100-Optional_Content_Group_Properties_entries.html Table-101-Optional_Content_Group_Configuration_entries.html Table-102-103-Optional_Content_Group_Usage_and_Application_entries.html Table-104-105-Text_state_parameters_and_operators.html Table-106-Text_rendering_modes.html Table-107-Text_object_operators.html Table-108-Text_position_operators.html Table-109-Text_showing_operators.html

Table-5-Stream_dictionaries.html :
	$(call table-to-html,28) > $@

Table-6-Standard_filters.html :
	$(call table-to-html,31) > $@

Table-8-LZW_and_Flate_filter_params.html :
	$(call table-to-html,35) > $@

Table-11-CCITTFax_filter_params.html :
	$(call table-to-html,38) > $@

Table-15-File_trailer_entries.html :
	$(call table-to-html,51) > $@

Table-16-Object_stream_entries.html :
	$(call table-to-html,54) > $@

Table-17-Cross_reference_stream_dict_entries.html :
	$(call table-to-html,58) > $@

Table-18-19-Cross_reference_stream_entries.html :
	$(call table-to-html,59) > $@

Table-20-Encryption_entries.html :
	$(call table-to-html,64) > $@

Table-21-Additional_encryption_entries.html :
	$(call table-to-html,68) > $@

Table-22-User_access_permissions.html :
	$(call table-to-html,69) > $@

Table-28-Catalog_entries.html :
	$(call table-to-html,81) > $@

Table-29-Pages_entries.html :
	$(call table-to-html,84) > $@

Table-30-Page_entries.html :
	$(call table-to-html,85) > $@

Table-31-Catalog_Name_entries.html :
	$(call table-to-html,89) > $@

Table-33-Resource_entries.html :
	$(call table-to-html,91) > $@

Table-34-PDF_data_types.html :
	$(call table-to-html,93) > $@

Table-35-String_object_data_types.html :
	$(call table-to-html,94) > $@

Table-36-Name_tree_node_entries.html :
	$(call table-to-html,97) > $@

Table-37-Number_tree_node_entries.html :
	$(call table-to-html,99) > $@

Table-38-Function_common_entries.html :
	$(call table-to-html,101) > $@

Table-39-Type-0-function_entries.html :
	$(call table-to-html,102) > $@

Table-40-Type-2-function_entries.html :
	$(call table-to-html,104) > $@

Table-41-Type-3-function_entries.html :
	$(call table-to-html,105) > $@

Table-42-Type-4-function_operators.html :
	$(call table-to-html,106) > $@

Table-44-File_specification_entries.html :
	$(call table-to-html,110) > $@

Table-44-45-File_specification_streams_and_parameters.html :
	$(call table-to-html,112) > $@

Table-51-Operator_categories.html :
	$(call table-to-html,120) > $@

Table-52-Device_independent_graphics_state.html :
	$(call table-to-html,129) > $@

Table-53-Device_dependent_graphics_state.html :
	$(call table-to-html,130) > $@

Table-57-Graphics_state_operators.html :
	$(call table-to-html,135) > $@

Table-58-Graphics_state_dict_entries.html :
	$(call table-to-html,136) > $@

Table-59-Path_construction_operators.html :
	$(call table-to-html,140) > $@

Table-60-Path_painting_operators.html :
	$(call table-to-html,143) > $@

Table-61-Clipping_path_operators.html :
	$(call table-to-html,146) > $@

Table-62-Colour_space_families.html :
	$(call table-to-html,147) > $@

Table-63-CalGray_colour_space_entries.html :
	$(call table-to-html,153) > $@

Table-64-CalRGB_colour_space_entries.html :
	$(call table-to-html,154) > $@

Table-65-Lab_colour_space_entries.html :
	$(call table-to-html,156) > $@

Table-66-ICC_profile_entries.html :
	$(call table-to-html,157) > $@

Table-67-ICC_profile_versions.html :
	$(call table-to-html,158) > $@

Table-68-69-ICC_profile_types_and_ranges.html :
	$(call table-to-html,159) > $@

Table-70-Rendering-intents.html :
	$(call table-to-html,163) > $@

Table-71-DeviceN_colour_space_attribute_entries.html :
	$(call table-to-html,169) > $@

Table-72-73-DeviceN_process_and_mixing_hints_entries.html :
	$(call table-to-html,171) > $@

Table-74-Colour_operators.html :
	$(call table-to-html,179) > $@

Table-75-Type_1_Pattern_entries.html :
	$(call table-to-html,182) > $@

Table-76-Type_2_Pattern_entries.html :
	$(call table-to-html,189) > $@

Table-77-Shading_operator.html :
	$(call table-to-html,190) > $@

Table-78-Shading_common_entries.html :
	$(call table-to-html,191) > $@

Table-79-Type_1_Shading_entries.html :
	$(call table-to-html,193) > $@

Table-80-Type_2_Shading_entries.html :
	$(call table-to-html,194) > $@

Table-81-Type_3_Shading_entries.html :
	$(call table-to-html,195) > $@

Table-82-Type_4_Shading_entries.html :
	$(call table-to-html,197) > $@

Table-83-Type_5_Shading_entries.html :
	$(call table-to-html,201) > $@

Table-84-Type_6_Shading_entries.html :
	$(call table-to-html,204) > $@

Table-85-Data_values_in-a_coons_patch_mesh.html :
	$(call table-to-html,206) > $@

Table-86-Data_values_in-a_tensor-product_patch_mesh.html :
	$(call table-to-html,209) > $@

Table-87-88-XObject_operator_and_postscript_entries.html :
	$(call table-to-html,210) > $@

Table-89-Image_entries.html :
	$(call table-to-html,214) > $@

Table-90-Default_decode_arrays.html :
	$(call table-to-html,218) > $@

Table-91-Alternate_Image_entries.html :
	$(call table-to-html,220) > $@

Table-92-93-94-Inline_Image_operators_and_entries_and_additional_operators.html :
	$(call table-to-html,223) > $@

Table-95-Type_1_Form_entries.html :
	$(call table-to-html,226) > $@

Table-96-Group_Attributes_entries.html :
	$(call table-to-html,228) > $@

Table-97-Reference_entries.html :
	$(call table-to-html,229) > $@

Table-98-Optional_Content_Group_entries.html :
	$(call table-to-html,230) > $@

Table-99-Optional_Content_Group_Membership_entries.html :
	$(call table-to-html,231) > $@

Table-100-Optional_Content_Group_Properties_entries.html :
	$(call table-to-html,236) > $@

Table-101-Optional_Content_Group_Configuration_entries.html :
	$(call table-to-html,237) > $@

Table-102-103-Optional_Content_Group_Usage_and_Application_entries.html :
	$(call table-to-html,241) > $@

Table-104-105-Text_state_parameters_and_operators.html :
	$(call table-to-html,251) > $@

Table-106-Text_rendering_modes.html :
	$(call table-to-html,255) > $@

Table-107-Text_object_operators.html :
	$(call table-to-html,255) > $@

Table-108-Text_position_operators.html :
	$(call table-to-html,257) > $@

Table-109-Text_showing_operators.html :
	$(call table-to-html,258) > $@

