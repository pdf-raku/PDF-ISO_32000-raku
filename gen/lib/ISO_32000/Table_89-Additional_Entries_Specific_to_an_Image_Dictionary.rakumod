use v6;
role ISO_32000::Table_89-Additional_Entries_Specific_to_an_Image_Dictionary {
    method Type {...};
    method Subtype {...};
    method Width {...};
    method Height {...};
    method ColorSpace {...};
    method BitsPerComponent {...};
    method Intent {...};
    method ImageMask {...};
    method Mask {...};
    method Decode {...};
    method Interpolate {...};
    method Alternates {...};
    method SMask {...};
    method SMaskInData {...};
    method Name {...};
    method StructParent {...};
    method ID {...};
    method OPI {...};
    method Metadata {...};
    method OC {...};
}

=begin pod

=head1 Description

Table 89 – Additional Entries Specific to an Image Dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is XObject for an image XObject.

=head2 Subtype [name]
- (Required) The type of XObject that this dictionary describes; is Image for an image XObject.

=head2 Width [integer]
- (Required) The width of the image, in samples.

=head2 Height [integer]
- (Required) The height of the image, in samples.

=head2 ColorSpace [name or array]
- (Required for images, except those that use the JPXDecode filter; not allowed forbidden for image masks) The colour space in which image samples is specified; it can be any type of colour space except Pattern.
If the image uses the JPXDecode filter, this entry may be present:
•If ColorSpace is present, any colour space specifications in the JPEG2000 data is ignored.
•If ColorSpace is absent, the colour space specifications in the JPEG2000 data is used. The Decode array is also ignored unless ImageMask is true.

=head2 BitsPerComponent [integer]
- (Required except for image masks and images that use the JPXDecode filter) The number of bits used to represent each colour component. Only a single value is specified; the number of bits is the same for all colour components. The value is 1, 2, 4, 8, or (in PDF 1.5) 16. If ImageMask is true, this entry is optional, but if specified, its value is 1.
If the image stream uses a filter, the value of BitsPerComponentshall be consistent with the size of the data samples that the filter delivers. In particular, a CCITTFaxDecode or JBIG2Decode filter always deliver 1-bit samples, a RunLengthDecode or DCTDecode filter always deliver 8-bit samples, and an LZWDecode or FlateDecode filter delivers samples of a specified size if a predictor function is used.
If the image stream uses the JPXDecode filter, this entry is optional and is ignored if present. The bit depth is determined by the conforming reader in the process of decoding the JPEG2000 image.

=head2 Intent [name]
- (Optional; PDF 1.1) The name of a colour rendering intent to be used in rendering the image (see 8.6.5.8, "Rendering Intents"). Default value: the current rendering intent in the graphics state.

=head2 ImageMask [boolean]
- (Optional) A flag indicating whether the image is treated as an image mask (see 8.9.6, "Masked Images"). If this flag is true, the value of BitsPerComponent is 1 and Mask and ColorSpace is not specified; unmasked areas shall bepainted using the current nonstroking colour. Default value: false.

=head2 Mask [stream or array]
- (Optional except for image masks; not allowed for image masks; PDF 1.3) An image XObject defining an image mask to be applied to this image (see 8.9.6.3, "Explicit Masking"), or an array specifying a range of colours to be applied to it as a colour key mask (see 8.9.6.4, "Colour Key Masking"). If ImageMask is true, this entry is not present.

=head2 Decode [array]
- (Optional) An array of numbers describing how to map image samples into the range of values appropriate for the image’s colour space (see 8.9.5.2, "Decode Arrays"). If ImageMask is true, the array is either [ 0 1 ] or [ 1 0 ]; otherwise, its length shall betwice the number of colour components required by ColorSpace. If the image uses the JPXDecode filter and ImageMask is false, Decode is ignored by a conforming reader.
Default value: see 8.9.5.2, "Decode Arrays".

=head2 Interpolate [boolean]
- (Optional) A flag indicating whether image interpolation shall beperformed by a conforming reader (see 8.9.5.3, "Image Interpolation"). Default value: false.

=head2 Alternates [array]
- (Optional; PDF 1.3) An array of alternate image dictionaries for this image (see 8.9.5.4, "Alternate Images"). The order of elements within the array has no significance. This entry does not bepresent in an image XObject that is itself an alternate image.

=head2 SMask [stream]
- (Optional; PDF 1.4) A subsidiary image XObject defining a soft-mask image (see 11.6.5.3, "Soft-Mask Images") that is used as a source of mask shape or mask opacity values in the transparent imaging model. The alpha source parameter in the graphics state determines whether the mask values is interpreted as shape or opacity.
If present, this entry overrides the current soft mask in the graphics state, as well as the image’s Mask entry, if any. However, the other transparency-related graphics state parameters—blend mode and alpha constant—remains in effect. If SMask is absent, the image has no associated soft mask (although the current soft mask in the graphics state may still apply).

=head2 SMaskInData [integer]
- (Optional for images that use the JPXDecode filter, meaningless otherwise; PDF 1.5) A code specifying how soft-mask information (see 11.6.5.3, "Soft-Mask Images") encoded with image samples is used:
0 If present, encoded soft-mask image information shall beignored.
1 The image’s data stream includes encoded soft-mask values. Aconforming reader may create a soft-mask image from the information to be used as a source of mask shape or mask opacity in the transparency imaging model.
2 The image’s data stream includes colour channels that have been preblended with a background; the image data also includes an opacity channel. A conforming reader may create a soft-mask image with a Matte entry from the opacity channel information to be used as a source of mask shape or mask opacity in the transparency model.
If this entry has a nonzero value, SMask is not specified. See also 7.4.9, "JPXDecode Filter".
Default value: 0.

=head2 Name [name]
- (Required in PDF 1.0; optional otherwise) The name by which this image XObject is referenced in the XObject subdictionary of the current resource dictionary (see 7.8.3, "Resource Dictionaries").
This entry is obsolescent and shall no longer be used.

=head2 StructParent [integer]
- (Required if the image is a structural content item; PDF 1.3) The integer key of the image’s entry in the structural parent tree (see 14.7.4.4, "Finding Structure Elements from Content Items").

=head2 ID [byte string]
- (Optional; PDF 1.3; indirect reference preferred) The digital identifier of the image’s parent Web Capture content set (see 14.10.6, "Object Attributes Related to Web Capture").

=head2 OPI [dictionary]
- (Optional; PDF 1.2) An OPI version dictionary for the image; see 14.11.7, "Open Prepress Interface (OPI)". If ImageMask is true, this entry is ignored.

=head2 Metadata [stream]
- (Optional; PDF 1.4) A metadata stream containing metadata for the image (see 14.3.2, "Metadata Streams").

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group or optional content membership dictionary (see 8.11, "Optional Content"), specifying the optional content properties for this image XObject. Before the image is processed by a conforming reader, its visibility is determined based on this entry. If it is determined to be invisible, the entire image is skipped, as if there were no Do operator to invoke it.

=end pod
