part of native_filters;

const List<Map<String, dynamic>> _kGPUVideoFilters = [
  {
    "AttributeFilterName": "GlBilateralFilter",
    "AttributeFilterDisplayName": "GlBilateralFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputTexelWidthOffset": {
      "CIAttributeClass": "float",
    },
    "inputTexelHeightOffset": {
      "CIAttributeClass": "float",
    },
    "inputBlurSize": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlBoxBlurFilter",
    "AttributeFilterDisplayName": "GlBoxBlurFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputTexelWidthOffset": {
      "CIAttributeClass": "float",
    },
    "inputTexelHeightOffset": {
      "CIAttributeClass": "float",
    },
    "inputBlurSize": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlBulgeDistortionFilter",
    "AttributeFilterDisplayName": "GlBulgeDistortionFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputCenterX": {
      "CIAttributeClass": "float",
    },
    "inputCenterY": {
      "CIAttributeClass": "float",
    },
    "inputRadius": {
      "CIAttributeClass": "float",
    },
    "inputScale": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlCGAColorspaceFilter",
    "AttributeFilterDisplayName": "GlCGAColorspaceFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlGaussianBlurFilter",
    "AttributeFilterDisplayName": "GlGaussianBlurFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputTexelWidthOffset": {
      "CIAttributeClass": "float",
    },
    "inputTexelHeightOffset": {
      "CIAttributeClass": "float",
    },
    "inputBlurSize": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlGrayScaleFilter",
    "AttributeFilterDisplayName": "GlGrayScaleFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlInvertFilter",
    "AttributeFilterDisplayName": "GlInvertFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlLuminanceFilter",
    "AttributeFilterDisplayName": "GlLuminanceFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlOverlayFilter",
    "AttributeFilterDisplayName": "GlOverlayFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlPosterizeFilter",
    "AttributeFilterDisplayName": "GlPosterizeFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlSepiaFilter",
    "AttributeFilterDisplayName": "GlSepiaFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlSharpenFilter",
    "AttributeFilterDisplayName": "GlSharpenFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlThreex3TextureSamplingFilter",
    "AttributeFilterDisplayName": "GlThreex3TextureSamplingFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlToneCurveFilter",
    "AttributeFilterDisplayName": "GlToneCurveFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlToneFilter",
    "AttributeFilterDisplayName": "GlToneFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlVignetteFilter",
    "AttributeFilterDisplayName": "GlVignetteFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlWatermarkFilter",
    "AttributeFilterDisplayName": "GlWatermarkFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlWeakPixelInclusionFilter",
    "AttributeFilterDisplayName": "GlWeakPixelInclusionFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
];
