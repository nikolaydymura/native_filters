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
    "AttributeFilterName": "GlHalftoneFilter",
    "AttributeFilterDisplayName": "GlHalftoneFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputFractionalWidthOfAPixel": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlHighlightShadowFilter",
    "AttributeFilterDisplayName": "GlHighlightShadowFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputShadows": {
      "CIAttributeClass": "float",
    },
    "inputHighlights": {
      "CIAttributeClass": "float",
    },
  },
  {
    'AttributeFilterName': 'GlHueFilter',
    'AttributeFilterDisplayName': 'GlHueFilter',
    'AttributeFilterCategories': ['CategoryVideo'],
    'inputHue': {
      'CIAttributeClass': 'float',
    },
  },
  {
    "AttributeFilterName": "GlInvertFilter",
    "AttributeFilterDisplayName": "GlInvertFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlLookUpTableFilter",
    "AttributeFilterDisplayName": "GlLookUpTableFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputLut": {
      "CIAttributeClass": "CIImage",
    },
  },
  {
    "AttributeFilterName": "GlLuminanceFilter",
    "AttributeFilterDisplayName": "GlLuminanceFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlLuminanceThresholdFilter",
    "AttributeFilterDisplayName": "GlLuminanceThresholdFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputThreshold": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlOpacityFilter",
    "AttributeFilterDisplayName": "GlOpacityFilter",
    "AttributeFilterCategories": ["CategoryVideo"],
    "inputOpacity": {
      "CIAttributeClass": "float",
    },
  },
  {
    "AttributeFilterName": "GlOverlayFilter",
    "AttributeFilterDisplayName": "GlOverlayFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlPixelationFilter",
    "AttributeFilterDisplayName": "GlPixelationFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlPosterizeFilter",
    "AttributeFilterDisplayName": "GlPosterizeFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlRGBFilter",
    "AttributeFilterDisplayName": "GlRGBFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlSaturationFilter",
    "AttributeFilterDisplayName": "GlSaturationFilter",
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
    "AttributeFilterName": "GlSolarizeFilter",
    "AttributeFilterDisplayName": "GlSolarizeFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlSphereRefractionFilter",
    "AttributeFilterDisplayName": "GlSphereRefractionFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlSwirlFilter",
    "AttributeFilterDisplayName": "GlSwirlFilter",
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
    "AttributeFilterName": "GlVibranceFilter",
    "AttributeFilterDisplayName": "GlVibranceFilter",
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
  {
    "AttributeFilterName": "GlWhiteBalanceFilter",
    "AttributeFilterDisplayName": "GlWhiteBalanceFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  },
  {
    "AttributeFilterName": "GlZoomBlurFilter",
    "AttributeFilterDisplayName": "GlZoomBlurFilter",
    "AttributeFilterCategories": ["CategoryVideo"]
  }
];
