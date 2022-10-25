const List<Map<String, dynamic>> ciFilters = [
  {
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The duration of the effect.",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputNumberOfFolds": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDisplayName": "Number of Folds",
      "AttributeSliderMax": 10,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAccordionFoldTransition",
    "CIAttributeFilterDisplayName": "Accordion Fold Transition",
    "inputBottomHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bottom Height",
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputFoldShadowAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDisplayName": "Fold Shadow Amount",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Addition",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIAdditionCompositing",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Affine Clamp",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAffineClamp",
    "inputTransform": {
      "AttributeClass": "NSValue",
      "CIAttributeDefault": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}",
      "CIAttributeDescription": "The transform to apply to the image.",
      "CIAttributeDisplayName": "Transform",
      "CIAttributeIdentity": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Affine Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAffineTile",
    "inputTransform": {
      "AttributeClass": "NSValue",
      "CIAttributeDefault": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}",
      "CIAttributeDescription": "The transform to apply to the image.",
      "CIAttributeDisplayName": "Transform",
      "CIAttributeIdentity": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Affine Transform",
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAffineTransform",
    "inputTransform": {
      "AttributeClass": "NSValue",
      "CIAttributeDefault": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}",
      "CIAttributeDescription": "A transform to apply to the image.",
      "CIAttributeDisplayName": "Transform",
      "CIAttributeIdentity": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}",
      "AttributeType": "CIAttributeTypeTransform"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Average",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIAreaAverage",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Histogram",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAreaHistogram",
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The scale value to use for the histogram values. If the scale is 1.0, then the bins in the resulting image will add up to 1.0.",
      "CIAttributeDisplayName": "Scale",
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 64,
      "CIAttributeDescription":
          "The number of bins for the histogram. This value will determine the width of the output image.",
      "CIAttributeDisplayName": "Count",

      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 10,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that, after intersection with the image extent, specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Maximum",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIAreaMaximum",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Maximum Alpha",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIAreaMaximumAlpha",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Minimum",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIAreaMinimum",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Minimum Alpha",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAreaMinimumAlpha",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Min and Max",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAreaMinMax",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Min and Max Red",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIAreaMinMaxRed",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Attributed Text Image Generator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputText": {
      "AttributeClass": "NSAttributedString",
      "CIAttributeDisplayName": "Text"
    },
    "AttributeFilterName": "CIAttributedTextImageGenerator",
    "inputScaleFactor": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Scale Factor",

      "AttributeSliderMax": 4,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputCompactStyle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Force a compact style Aztec code to @YES or @NO. Set to nil for automatic.",
      "CIAttributeDisplayName": "Compact Style",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0
    },
    "CIAttributeFilterDisplayName": "Aztec Code Generator",
    "inputCorrectionLevel": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 23,
      "CIAttributeDescription": "Aztec error correction value between 5 and 95",
      "CIAttributeDisplayName": "Correction Level",

      "AttributeSliderMax": 95,
      "AttributeSliderMin": 5
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIAztecCodeGenerator",
    "inputLayers": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Aztec layers value between 1 and 32. Set to nil for automatic.",
      "CIAttributeDisplayName": "Layers",

      "AttributeSliderMax": 32,
      "AttributeSliderMin": 1
    },
    "inputMessage": {
      "AttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the Aztec Barcode",
      "CIAttributeDisplayName": "Message"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Barcode Generator",
    "inputBarcodeDescriptor": {
      "AttributeClass": "CIBarcodeDescriptor",
      "CIAttributeDescription":
          "The CIBarcodeDescription object to generate an image for.",
      "CIAttributeDisplayName": "Barcode Descriptor"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBarcodeGenerator"
  },
  {
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 3.141592653589793,
      "CIAttributeDescription": "The angle (in radians) of the bars.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 6.283185307179586,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 30,
      "CIAttributeDescription": "The width of each bar.",
      "CIAttributeDisplayName": "Width",

      "AttributeSliderMax": 300,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIBarsSwipeTransition",
    "CIAttributeFilterDisplayName": "Bars Swipe Transition",
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBarOffset": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription": "The offset of one bar with respect to another",
      "CIAttributeDisplayName": "Bar Offset",

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputB": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies the value of B to use for the cubic resampling function.",
      "CIAttributeDisplayName": "B",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Bicubic Scale Transform",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0.05,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputC": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.75,
      "CIAttributeDescription":
          "Specifies the value of C to use for the cubic resampling function.",
      "CIAttributeDisplayName": "C",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIBicubicScaleTransform",
    "inputAspectRatio": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The additional horizontal scaling factor to use on the image.",
      "CIAttributeDisplayName": "Aspect Ratio",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0.5,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputMaskImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Blend With Alpha Mask",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBlendWithAlphaMask",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Blend With Blue Mask",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMaskImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIBlendWithBlueMask",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputMaskImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.",
      "CIAttributeDisplayName": "Mask Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Blend With Mask",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBlendWithMask"
  },
  {
    "inputMaskImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Blend With Red Mask",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBlendWithRedMask"
  },
  {
    "CIAttributeFilterDisplayName": "Bloom",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBloom",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Bokeh Blur",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBokehBlur",
    "inputSoftness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Softness",

      "AttributeSliderMax": 0.4,
      "AttributeSliderMin": 0.25,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRingSize": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription":
          "The size of extra emphasis at the ring of the bokeh",
      "CIAttributeDisplayName": "Ring Size",

      "AttributeSliderMax": 0.2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputRingAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount of extra emphasis at the ring of the bokeh.",
      "CIAttributeDisplayName": "Ring Amount",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Box Blur",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIBoxBlur",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Bump Distortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump, negative values create an inward bump.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 1,
      "AttributeSliderMin": -1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIBumpDistortion",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 600,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Bump Distortion Linear",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The angle (in radians) of the line around which the distortion occurs.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 6.283185307179586,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription": "The scale of the effect.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIBumpDistortionLinear",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 600,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Lens Correction for AVC",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CICameraCalibrationLensCorrection",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputUseInverseLookUpTable": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Boolean value used to select the Look Up Table from the AVCameraCalibrationData",
      "CIAttributeDisplayName": "Use Inverse Look Up Table"
    },
    "inputAVCameraCalibrationData": {
      "AttributeClass": "AVCameraCalibrationData",
      "CIAttributeDescription":
          "AVCameraCalibrationData for the correction. Will be set from the inputImage if available and can be overridden here.",
      "CIAttributeDisplayName":
          "Calibration Data object of type AVCameraCalibrationData"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Checkerboard",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011395c0 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color to use for the first set of squares.",
      "CIAttributeDisplayName": "Color 1"
    },
    "AttributeFilterName": "CICheckerboardGenerator",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 80,
      "CIAttributeDescription": "The width of the squares in the pattern.",
      "CIAttributeDisplayName": "Width",
      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.",
      "CIAttributeDisplayName": "Sharpness",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011395f0 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "A color to use for the second set of squares.",
      "CIAttributeDisplayName": "Color 2"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Circle Splash Distortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CICircleSplashDistortion",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Circular Screen",
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CICircularScreen",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription":
          "The distance between each circle in the pattern.",
      "CIAttributeDisplayName": "Width",

      "AttributeSliderMax": 50,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the circles. The larger the value, the sharper the circles.",
      "CIAttributeDisplayName": "Sharpness",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the circular screen pattern",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Circular Wrap Distortion",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the effect.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CICircularWrap",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 600,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Clamp",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIClamp",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the pattern. The larger the value, the sharper the pattern.",
      "CIAttributeDisplayName": "Sharpness",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance",
      "CIUIParameterSet": ":CIUISetBasic"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between dots in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 6,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeDistance",
      "CIUIParameterSet": ":CIUISetBasic"
    },
    "inputUCR": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The under color removal value. The value can vary from 0.0 to 1.0. ",
      "CIAttributeDisplayName": "Under Color Removal",
      "CIAttributeIdentity": 0.5,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar",
      "CIUIParameterSet": ":CIUISetIntermediate"
    },
    "inputGCR": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The gray component replacement value. The value can vary from 0.0 (none) to 1.0.",
      "CIAttributeDisplayName": "Gray Component Replacement",
      "CIAttributeIdentity": 1,
 
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar",
      "CIUIParameterSet": ":CIUISetIntermediate"
    },
    "AttributeFilterName": "CICMYKHalftone",
    "CIAttributeFilterDisplayName": "CMYK Halftone",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the halftone pattern",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputQuietSpace": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The number of empty white pixels that should surround the barcode.",
      "CIAttributeDisplayName": "Quiet Space",
  
      "AttributeSliderMax": 20,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Code 128 Barcode Generator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CICode128BarcodeGenerator",
    "inputMessage": {
      "AttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the Code 128 Barcode",
      "CIAttributeDisplayName": "Message"
    },
    "inputBarcodeHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 32,
      "CIAttributeDescription":
          "The height of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Barcode Height",

      "AttributeSliderMax": 50,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputImage2": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The second input image for differencing.",
      "CIAttributeDisplayName": "Image2"
    },
    "CIAttributeFilterDisplayName": "Color Absolute Difference",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorAbsoluteDifference",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Color Blend Mode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorBlendMode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Burn Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorBurnBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Clamp",
    "inputMaxComponents": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [1, 1, 1, 1],
      "CIAttributeDescription": "Higher clamping values",
      "CIAttributeDisplayName": "Max Components"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorClamp",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMinComponents": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription": "Lower clamping values",
      "CIAttributeDisplayName": "Min Components"
    }
  },
  {
    "inputBrightness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount of brightness to apply. The larger the value, the brighter the result.",
      "CIAttributeDisplayName": "Brightness",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": -1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Color Controls",
    "inputSaturation": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The amount of saturation to apply. The larger the value, the more saturated the result.",
      "CIAttributeDisplayName": "Saturation",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorControls",
    "inputContrast": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The amount of contrast to apply. The larger the value, the more contrast in the resulting image.",
      "CIAttributeDisplayName": "Contrast",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 4,
      "AttributeSliderMin": 0.25,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputRedCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for red channel",
      "CIAttributeDisplayName": "Red Coefficients",
      "CIAttributeIdentity": [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Color Cross Polynomial",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorCrossPolynomial",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputGreenCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for green channel",
      "CIAttributeDisplayName": "Green Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
    },
    "inputBlueCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for blue channel",
      "CIAttributeDisplayName": "Blue Coefficients",
      "CIAttributeIdentity": [0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
    }
  },
  {
    "inputCubeDimension": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDisplayName": "Cube Dimension",
      "CIAttributeIdentity": 2,
      "AttributeMax": 64,
      "AttributeMin": 2,
      "AttributeType": "CIAttributeTypeCount"
    },
    "CIAttributeFilterDisplayName": "Color Cube",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorCube",
    "inputCubeData": {
      "AttributeClass": "NSData",
      "CIAttributeDefault": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      },
      "CIAttributeDescription":
          "Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.",
      "CIAttributeDisplayName": "Cube Data",
      "CIAttributeIdentity": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      }
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputCubeDimension": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDisplayName": "Cube Dimension",
      "CIAttributeIdentity": 2,
      "AttributeMax": 64,
      "AttributeMin": 2,
      "AttributeType": "CIAttributeTypeCount"
    },
    "inputMaskImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputCube0Data": {
      "AttributeClass": "NSData",
      "CIAttributeDefault": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      },
      "CIAttributeDescription":
          "Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.",
      "CIAttributeDisplayName": "Cube 0 Data",
      "CIAttributeIdentity": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      }
    },
    "AttributeFilterName": "CIColorCubesMixedWithMask",
    "CIAttributeFilterDisplayName": "Color Cubes Mixed With Mask",
    "inputCube1Data": {
      "AttributeClass": "NSData",
      "CIAttributeDefault": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      },
      "CIAttributeDescription":
          "Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.",
      "CIAttributeDisplayName": "Cube 1 Data",
      "CIAttributeIdentity": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      }
    },
    "inputColorSpace": {
      "AttributeClass": "NSObject",
      "CIAttributeDisplayName": "Color Space"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputCubeDimension": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDisplayName": "Cube Dimension",
      "CIAttributeIdentity": 2,
      "AttributeMax": 64,
      "AttributeMin": 2,
      "AttributeType": "CIAttributeTypeCount"
    },
    "CIAttributeFilterDisplayName": "Color Cube with ColorSpace",
    "inputCubeData": {
      "AttributeClass": "NSData",
      "CIAttributeDefault": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      },
      "CIAttributeDescription":
          "Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.",
      "CIAttributeDisplayName": "Cube Data",
      "CIAttributeIdentity": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      }
    },
    "inputColorSpace": {
      "AttributeClass": "NSObject",
      "CIAttributeDisplayName": "Color Space"
    },
    "AttributeFilterName": "CIColorCubeWithColorSpace",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Color Curves",
    "inputColorSpace": {
      "AttributeClass": "NSObject",
      "CIAttributeDisplayName": "Color Space"
    },
    "inputCurvesDomain": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1],
      "CIAttributeDisplayName": "Curves Domain"
    },
    "AttributeFilterName": "CIColorCurves",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputCurvesData": {
      "AttributeClass": "NSData",
      "CIAttributeDefault": {
        "length": 128,
        "bytes": "0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f"
      },
      "CIAttributeDisplayName": "Curves Data"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Dodge Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorDodgeBlendMode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Invert",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorInvert"
  },
  {
    "CIAttributeFilterDisplayName": "Color Map",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorMap",
    "inputGradientImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image data from this image transforms the source image values.",
      "CIAttributeDisplayName": "Gradient Image",
      "AttributeType": "CIAttributeTypeGradient"
    }
  },
  {
    "inputGVector": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription":
          "The amount of green to multiply the source color values by.",
      "CIAttributeDisplayName": "Green Vector",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "inputBiasVector": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription":
          "A vector that\\U2019s added to each color component.",
      "CIAttributeDisplayName": "Bias Vector",
      "CIAttributeIdentity": [0, 0, 0, 0]
    },
    "inputRVector": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [1, 0, 0, 0],
      "CIAttributeDescription":
          "The amount of red to multiply the source color values by.",
      "CIAttributeDisplayName": "Red Vector",
      "CIAttributeIdentity": [1, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Color Matrix",
    "AttributeFilterName": "CIColorMatrix",
    "inputAVector": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 1],
      "CIAttributeDescription":
          "The amount of alpha to multiply the source color values by.",
      "CIAttributeDisplayName": "Alpha Vector",
      "CIAttributeIdentity": [0, 0, 0, 1]
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBVector": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 1, 0],
      "CIAttributeDescription":
          "The amount of blue to multiply the source color values by.",
      "CIAttributeDisplayName": "Blue Vector",
      "CIAttributeIdentity": [0, 0, 1, 0]
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Monochrome",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorMonochrome",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x600001126c70 (0.6 0.45 0.3 1) devicergb>",
      "CIAttributeDescription": "The monochrome color to apply to the image.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputRedCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for red channel",
      "CIAttributeDisplayName": "Red Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Color Polynomial",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorPolynomial",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputGreenCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for green channel",
      "CIAttributeDisplayName": "Green Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "inputAlphaCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for alpha channel",
      "CIAttributeDisplayName": "Alpha Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "inputBlueCoefficients": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for blue channel",
      "CIAttributeDisplayName": "Blue Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Posterize",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColorPosterize",
    "inputLevels": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription":
          "The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.",
      "CIAttributeDisplayName": "Levels",
      "CIAttributeIdentity": 300,

      "AttributeSliderMax": 30,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Threshold",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorThreshold",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputThreshold": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDisplayName": "Threshold",
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Threshold Otsu",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIColorThresholdOtsu",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Column Average",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIColumnAverage",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Comic Effect",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIComicEffect",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Constant Color",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIConstantColorGenerator",
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000113f870 (1 0 0 1) devicergb>",
      "CIAttributeDescription": "The color to generate.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "3 by 3 Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolution3X3",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "CIAttributeFilterDisplayName": "5 by 5 Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolution5X5",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "CIAttributeFilterDisplayName": "7 by 7 Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolution7X7",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Horizontal 9 Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolution9Horizontal",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Vertical 9 Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolution9Vertical",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "3 by 3 RGB Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolutionRGB3X3",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "CIAttributeFilterDisplayName": "5 by 5 RGB Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolutionRGB5X5",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0
      ]
    },
    "CIAttributeFilterDisplayName": "7 by 7 RGB Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolutionRGB7X7",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Horizontal 9 RGB Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolutionRGB9Horizontal",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Vertical 9 RGB Convolution",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIConvolutionRGB9Vertical",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001133180 (0.6 1 0.8 1) devicergb>",
      "CIAttributeDescription": "The color of the copier light.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the copier light.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 6.283185307179586,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 200,
      "CIAttributeDescription": "The width of the copier light. ",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 200,

      "AttributeSliderMax": 500,
      "AttributeSliderMin": 0.1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CICopyMachineTransition",
    "CIAttributeFilterDisplayName": "Copy Machine",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputOpacity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.3,
      "CIAttributeDescription":
          "The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.",
      "CIAttributeDisplayName": "Opacity",
      "CIAttributeIdentity": 1.3,

      "AttributeSliderMax": 3,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "CoreML Model Filter",
    "CIAttributeFilterCategories": [
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryStylize"
    ],
    "AttributeFilterName": "CICoreMLModelFilter",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputHeadIndex": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "A number to specify which output of a multi-head CoreML model should be used for applying effect on the image.",
      "CIAttributeDisplayName": "Head Index",
      "AttributeMax": 10,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeInteger"
    },
    "inputModel": {
      "AttributeClass": "MLModel",
      "CIAttributeDescription":
          "The CoreML model to be used for applying effect on the image.",
      "CIAttributeDisplayName": "Model"
    },
    "inputSoftmaxNormalization": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "A boolean value to specify that Softmax normalization should be applied to the output of the model.",
      "CIAttributeDisplayName": "Softmax Normalization",
      "AttributeMax": 1,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeBoolean"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Crop",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputRectangle": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [
        -8.98847e+307,
        -8.98847e+307,
        1.79769e+308,
        1.79769e+308
      ],
      "CIAttributeDescription":
          "The rectangle that specifies the crop to apply to the image.",
      "CIAttributeDisplayName": "Rectangle",
      "CIAttributeIdentity": [
        -8.98847e+307,
        -8.98847e+307,
        1.79769e+308,
        1.79769e+308
      ],
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "AttributeFilterName": "CICrop",
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Crystallize",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CICrystallize",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Darken Blend Mode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIDarkenBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputNosePositions": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Nose Positions",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputHairImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "A segmentation matte image that corresponds to people\\U2019s hair.",
      "CIAttributeDisplayName": "Hair Image"
    },
    "inputCalibrationData": {
      "AttributeClass": "AVCameraCalibrationData",
      "CIAttributeDisplayName": "Calibration Data"
    },
    "AttributeFilterName": "CIDepthBlurEffect",
    "inputChinPositions": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Chin Positions",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputGainMap": {
      "AttributeClass": "CIImage",
      "CIAttributeDisplayName": "Gain Map"
    },
    "inputLumaNoiseScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Luma Noise Scale",

      "AttributeSliderMax": 0.1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputDisparityImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDisplayName": "Disparity Image"
    },
    "inputGlassesImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "A segmentation matte image that corresponds to people\\U2019s glasses.",
      "CIAttributeDisplayName": "Glasses Image"
    },
    "inputScaleFactor": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Scale Factor",
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputMatteImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A matting image.",
      "CIAttributeDisplayName": "Matte Image"
    },
    "inputLeftEyePositions": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Left Eye Positions",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputShape": {
      "AttributeClass": "NSString",
      "CIAttributeDisplayName": "Shape"
    },
    "inputRightEyePositions": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Right Eye Positions",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputAuxDataMetadata": {
      "AttributeClass": "CGImageMetadataRef",
      "CIAttributeDisplayName": "Aux Data Metadata"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterDisplayName": "Depth Blur Effect",
    "inputFocusRect": {
      "AttributeClass": "CIVector",
      "CIAttributeDisplayName": "Focus Rectangle",
      "CIAttributeIdentity": [
        -8.98847e+307,
        -8.98847e+307,
        1.79769e+308,
        1.79769e+308
      ],
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "inputAperture": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Aperture",

      "AttributeSliderMax": 22,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputPoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 300],
      "CIAttributeDisplayName": "Point 0",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputPoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [300, 300],
      "CIAttributeDisplayName": "Point 1",
      "AttributeType": "CIAttributeTypePosition"
    },
    "AttributeFilterName": "CIDepthOfField",
    "CIAttributeFilterDisplayName": "Depth of Field",
    "inputUnsharpMaskRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2.5,
      "CIAttributeDisplayName": "Unsharp Mask Radius",

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputSaturation": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.5,
      "CIAttributeDescription": "The amount to adjust the saturation.",
      "CIAttributeDisplayName": "Saturation",
  
      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputUnsharpMaskIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDisplayName": "Unsharp Mask Intensity",

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 30,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Depth To Disparity",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDepthToDisparity"
  },
  {
    "CIAttributeFilterDisplayName": "Difference Blend Mode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDifferenceBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Disc Blur",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDiscBlur",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputMaskImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image that defines the shape to use when disintegrating from the source to the target image.",
      "CIAttributeDisplayName": "Mask Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIDisintegrateWithMaskTransition",
    "CIAttributeFilterDisplayName": "Disintegrate With Mask",
    "inputShadowOffset": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, -10],
      "CIAttributeDescription": "The offset of the shadow created by the mask.",
      "CIAttributeDisplayName": "Shadow Offset",
      "CIAttributeIdentity": [0, 0],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputShadowDensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.65,
      "CIAttributeDescription":
          "The density of the shadow created by the mask.",
      "CIAttributeDisplayName": "Shadow Density",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputShadowRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription": "The radius of the shadow created by the mask.",
      "CIAttributeDisplayName": "Shadow Radius",

      "AttributeSliderMax": 50,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Disparity To Depth",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIDisparityToDepth",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Displacement Distortion",
    "inputDisplacementImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image whose grayscale values will be applied to the source image.",
      "CIAttributeDisplayName": "Displacement Image"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDisplacementDistortion",
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription":
          "The amount of texturing of the resulting image. The larger the value, the greater the texturing.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Dissolve",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDissolveTransition",
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Dither",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIDither",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription": "The intensity of the effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Divide Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDivideBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Document Enhancer",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIDocumentEnhancer",
    "inputAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The amount of enhancement.",
      "CIAttributeDisplayName": "Amount",

      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Dot Screen",
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIDotScreen",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the pattern. The larger the value, the sharper the pattern.",
      "CIAttributeDisplayName": "Sharpness",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between dots in the pattern.",
      "CIAttributeDisplayName": "Width",

      "AttributeSliderMax": 50,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the dot screen pattern",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputInsetPoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [400, 400],
      "CIAttributeDisplayName": "Inset Point 1",
      "AttributeType": "CIAttributeTypePosition"
    },
    "AttributeFilterName": "CIDroste",
    "CIAttributeFilterDisplayName": "Droste",
    "inputRotation": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Rotation",
      "AttributeSliderMax": 6.283185307179586,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputStrands": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Strands",

      "AttributeSliderMax": 2,
      "AttributeSliderMin": -2,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputPeriodicity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Periodicity",
  
      "AttributeSliderMax": 5,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputInsetPoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200],
      "CIAttributeDisplayName": "Inset Point 0",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputZoom": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Zoom",

      "AttributeSliderMax": 5,
      "AttributeSliderMin": 0.01,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Edge Preserve Upsample Filter",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputLumaSigma": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.15,
      "CIAttributeDisplayName": "Luma Sigma",
      "AttributeMax": 1,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIEdgePreserveUpsampleFilter",
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputSmallImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDisplayName": "Small Image"
    },
    "inputSpatialSigma": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDisplayName": "Spatial Sigma",
      "AttributeMax": 5,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Edges",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIEdges",
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The intensity of the edges. The larger the value, the higher the intensity.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
  
      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Edge Work",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIEdgeWork",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDescription":
          "The thickness of the edges. The larger the value, the thicker the edges.",
      "CIAttributeDisplayName": "Radius",
    
      "AttributeSliderMax": 20,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Eightfold Reflected Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIEightfoldReflectedTile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Exclusion Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIExclusionBlendMode"
  },
  {
    "inputEV": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.",
      "CIAttributeDisplayName": "EV",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 10,
      "AttributeSliderMin": -10,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Exposure Adjust",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIExposureAdjust"
  },
  {
    "CIAttributeFilterDisplayName": "False Color",
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111f270 (0.3 0 0 1) devicergb>",
      "CIAttributeDescription": "The first color to use for the color ramp.",
      "CIAttributeDisplayName": "Color 1",
      "AttributeType": "CIAttributeTypeColor"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIFalseColor",
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111f240 (1 0.9 0.8 1) devicergb>",
      "CIAttributeDescription": "The second color to use for the color ramp.",
      "CIAttributeDisplayName": "Color 2",
      "AttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111ea00 (1 0.8 0.6 1) devicergb>",
      "CIAttributeDescription":
          "The color of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeColor"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputStriationStrength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The strength of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Striation Strength",

      "AttributeSliderMax": 3,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "AttributeFilterName": "CIFlashTransition",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription": "The extent of the flash.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterDisplayName": "Flash",
    "inputFadeThreshold": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.85,
      "CIAttributeDescription":
          "The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.",
      "CIAttributeDisplayName": "Fade Threshold",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputStriationContrast": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.375,
      "CIAttributeDescription":
          "The contrast of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Striation Contrast",
 
      "AttributeSliderMax": 5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputMaxStriationRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2.58,
      "CIAttributeDescription":
          "The radius of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Maximum Striation Radius",

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputAcuteAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.570796326794897,
      "CIAttributeDescription":
          "The primary angle for the repeating reflected tile. Small values create thin diamond tiles, and higher values create fatter reflected tiles.",
      "CIAttributeDisplayName": "Acute Angle",
      "CIAttributeIdentity": 1.570796326794897,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Fourfold Reflected Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIFourfoldReflectedTile",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Fourfold Rotated Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIFourfoldRotatedTile",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
 
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputAcuteAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.570796326794897,
      "CIAttributeDescription":
          "The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.",
      "CIAttributeDisplayName": "Acute Angle",
      "CIAttributeIdentity": 1.570796326794897,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Fourfold Translated Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIFourfoldTranslatedTile",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Gabor Gradients",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIGaborGradients",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Gamma Adjust",
    "inputPower": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "A gamma value to use to correct image brightness. The larger the value, the darker the result.",
      "CIAttributeDisplayName": "Power",
      "CIAttributeIdentity": 1,
      "AttributeSliderMax": 4,
      "AttributeSliderMin": 0.25,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIGammaAdjust"
  },
  {
    "CIAttributeFilterDisplayName": "Gaussian Blur",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIGaussianBlur",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Gaussian Gradient",
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011187e0 (0 0 0 0) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "AttributeType": "CIAttributeTypeColor"
    },
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001118810 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "AttributeType": "CIAttributeTypeColor"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIGaussianGradient",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription": "The radius of the Gaussian distribution.",
      "CIAttributeDisplayName": "Radius",
    
      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Glass Distortion",
    "inputTexture": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A texture to apply to the source image.",
      "CIAttributeDisplayName": "Texture",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 200,
      "CIAttributeDescription":
          "The amount of texturing of the resulting image. The larger the value, the greater the texturing.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 500,
      "AttributeSliderMin": 0.01,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIGlassDistortion",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Glass Lozenge",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIGlassLozenge",
    "inputPoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [350, 150],
      "CIAttributeDescription":
          "The x and y position that defines the center of the circle at the other end of the lozenge.",
      "CIAttributeDisplayName": "Point 1",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription":
          "The radius of the lozenge. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 100,
 
      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputRefraction": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.7,
      "CIAttributeDescription": "The refraction of the glass.",
      "CIAttributeDisplayName": "Refraction",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputPoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position that defines the center of the circle at one end of the lozenge.",
      "CIAttributeDisplayName": "Point 0",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Glide Reflected Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIGlideReflectedTile",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Gloom",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIGloom",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
   
      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
     
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Guided Filter",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputGuideImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "A larger image to use as a guide.",
      "CIAttributeDisplayName": "A larger image to use as a guide."
    },
    "inputEpsilon": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.0001,
      "CIAttributeDisplayName": "Epsilon",
      "AttributeSliderMax": 0.1,
      "AttributeSliderMin": "1e-09",
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIGuidedFilter",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "AttributeSliderMax": 10,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Hard Light Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHardLightBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Hatched Screen",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIHatchedScreen",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between lines in the pattern.",
      "CIAttributeDisplayName": "Width",
 
      "AttributeSliderMax": 50,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription": "The amount of sharpening to apply.",
      "CIAttributeDisplayName": "Sharpness",
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the hatched screen pattern",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Height Field From Mask",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHeightFieldFromMask",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 10,

      "AttributeSliderMax": 300,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hexagonal Pixelate",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "The scale determines the size of the hexagons. Larger values result in larger hexagons.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIHexagonalPixellate",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Highlight and Shadow Adjust",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHighlightShadowAdjust",
    "inputHighlightAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The amount of adjustment to the highlights of the image.",
      "CIAttributeDisplayName": "Highlight Amount",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0.3,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Shadow Highlight Radius",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputShadowAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount of adjustment to the shadows of the image.",
      "CIAttributeDisplayName": "Shadow Amount",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": -1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Histogram Display",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHistogramDisplayFilter",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputLowLimit": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The fraction of the left portion of the histogram image to make darker",
      "CIAttributeDisplayName": "Low Limit",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputHighLimit": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The fraction of the right portion of the histogram image to make lighter.",
      "CIAttributeDisplayName": "High Limit",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription":
          "The height of the displayable histogram image.",
      "CIAttributeDisplayName": "Height",

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hole Distortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIHoleDistortion",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0.1,
 
      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 0.01,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hue Adjust",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "An angle (in radians) to use to correct the hue of an image.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHueAdjust",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Hue Blend Mode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHueBlendMode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hue\/Saturation\/Value Gradient",
    "inputColorSpace": {
      "AttributeClass": "NSObject",
      "CIAttributeDefault":
          "<CGColorSpace 0x600003b6c180> (kCGColorSpaceICCBased, kCGColorSpaceModelRGB, sRGB IEC61966-2.1)",
      "CIAttributeDescription":
          "The CGColorSpaceRef that the color wheel should be generated in.",
      "CIAttributeDisplayName": "Color Space"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIHueSaturationValueGradient",
    "inputDither": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Dither",
    
      "AttributeSliderMax": 3,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputSoftness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Softness",
     
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
 
      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputValue": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Value",
 
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Kaleidoscope",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of reflection.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIKaleidoscope",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputCount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The number of reflections in the pattern.",
      "CIAttributeDisplayName": "Count",
  
      "AttributeSliderMax": 64,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIKeystoneCorrectionCombined",
    "CIAttributeFilterDisplayName": "Combined Keystone Correction",
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The top right coordinate of the guide.",
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom right coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The top left coordinate of the guide.",
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom left coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIKeystoneCorrectionHorizontal",
    "CIAttributeFilterDisplayName": "Horizontal Keystone Correction",
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The top right coordinate of the guide.",
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom right coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The top left coordinate of the guide.",
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom left coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIKeystoneCorrectionVertical",
    "CIAttributeFilterDisplayName": "Vertical Keystone Correction",
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The top right coordinate of the guide.",
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom right coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The top left coordinate of the guide.",
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom left coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputMeans": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "Specifies the color seeds to use for k-means clustering, either passed as an image or an array of colors.",
      "CIAttributeDisplayName": "Means"
    },
    "inputCount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "Specifies how many k-means color clusters should be used.",
      "CIAttributeDisplayName": "Count",
      "CIAttributeIdentity": 0,
      "AttributeMax": 128,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeCount"
    },
    "AttributeFilterName": "CIKMeans",
    "CIAttributeFilterDisplayName": "KMeans",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "inputPasses": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "Specifies how many k-means passes should be performed.",
      "CIAttributeDisplayName": "Passes",
      "CIAttributeIdentity": 0,
      "AttributeMax": 20,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeCount"
    },
    "inputPerceptual": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies whether the k-means color palette should be computed in a perceptual color space.",
      "CIAttributeDisplayName": "Perceptual",
      "AttributeMax": 1,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeBoolean"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Lab ∆E",
    "inputImage2": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The second input image for comparison.",
      "CIAttributeDisplayName": "Image2"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CILabDeltaE",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Lanczos Scale Transform",
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CILanczosScaleTransform",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 1.5,
      "AttributeSliderMin": 0.05,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputAspectRatio": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The additional horizontal scaling factor to use on the image.",
      "CIAttributeDisplayName": "Aspect Ratio",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0.5,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputHaloWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 87,
      "CIAttributeDescription":
          "The width of the halo, from its inner radius to its outer radius.",
      "CIAttributeDisplayName": "Halo Width",
 
      "AttributeSliderMax": 300,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001106190 (1 0.9 0.8 1) devicergb>",
      "CIAttributeDescription": "A color.",
      "CIAttributeDisplayName": "Color"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The duration of the effect.",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputStriationStrength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the halo colors. Larger values are more intense.",
      "CIAttributeDisplayName": "Striation Strength",
   
      "AttributeSliderMax": 3,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CILenticularHaloGenerator",
    "CIAttributeFilterDisplayName": "Lenticular Halo",
    "inputHaloOverlap": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.77,
      "CIAttributeDisplayName": "Halo Overlap",
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the halo.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputStriationContrast": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The contrast of the halo colors. Larger values are higher contrast.",
      "CIAttributeDisplayName": "Striation Contrast",

      "AttributeSliderMax": 5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputHaloRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 70,
      "CIAttributeDescription": "The radius of the halo.",
      "CIAttributeDisplayName": "Halo Radius",
  
      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Lighten Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILightenBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Light Tunnel Distortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILightTunnel",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "Center radius of the light tunnel.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 500,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputRotation": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Rotation angle of the light tunnel.",
      "CIAttributeDisplayName": "Rotation",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 1.570796326794897,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription": "Center of the light tunnel.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Burn Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILinearBurnBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Dodge Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILinearDodgeBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Gradient",
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CILinearGradient",
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001111a40 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "AttributeType": "CIAttributeTypeColor"
    },
    "inputPoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200],
      "CIAttributeDescription":
          "The ending position of the gradient -- where the second color begins.",
      "CIAttributeDisplayName": "Point 1",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001111a70 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "AttributeType": "CIAttributeTypeColor"
    },
    "inputPoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0],
      "CIAttributeDescription":
          "The starting position of the gradient -- where the first color begins.",
      "CIAttributeDisplayName": "Point 0",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Light Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILinearLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear to sRGB Tone Curve",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILinearToSRGBToneCurve"
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputNRNoiseLevel": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.07000000000000001,
      "CIAttributeDescription":
          "The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.",
      "CIAttributeDisplayName": "NR Noise Level",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 0.1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputContrast": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription":
          "The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).",
      "CIAttributeDisplayName": "Contrast",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 0.25,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputThreshold": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription":
          "This value determines edge visibility. Larger values thin out the edges.",
      "CIAttributeDisplayName": "Threshold",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CILineOverlay",
    "CIAttributeFilterDisplayName": "Line Overlay",
    "inputEdgeIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.",
      "CIAttributeDisplayName": "Edge Intensity",
      "CIAttributeIdentity": 0,
     
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputNRSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.71,
      "CIAttributeDescription":
          "The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.",
      "CIAttributeDisplayName": "NR Sharpness",
      "CIAttributeIdentity": 0,
    
      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBuiltIn",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryStylize"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Line Screen",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CILineScreen",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between lines in the pattern.",
      "CIAttributeDisplayName": "Width",

      "AttributeSliderMax": 50,
      "AttributeSliderMin": 2,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the pattern. The larger the value, the sharper the pattern.",
      "CIAttributeDisplayName": "Sharpness",
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the line screen pattern",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Luminosity Blend Mode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CILuminosityBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Masked Variable Blur",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMaskedVariableBlur",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputMask": {
      "AttributeClass": "CIImage",
      "CIAttributeDisplayName": "Mask"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Mask to Alpha",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMaskToAlpha"
  },
  {
    "CIAttributeFilterDisplayName": "Maximum Component",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMaximumComponent"
  },
  {
    "CIAttributeFilterDisplayName": "Maximum",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMaximumCompositing"
  },
  {
    "CIAttributeFilterDisplayName": "Median",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMedianFilter"
  },
  {
    "inputMesh": {
      "AttributeClass": "NSArray",
      "CIAttributeDescription":
          "An array of line segments stored as an array of CIVectors each containing a start point and end point.",
      "CIAttributeDisplayName": "Mesh"
    },
    "CIAttributeFilterDisplayName": "Mesh Generator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMeshGenerator",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.5,
      "CIAttributeDescription": "The width of the effect.",
      "CIAttributeDisplayName": "Width",
 
      "AttributeSliderMax": 10,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001102c70 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color.",
      "CIAttributeDisplayName": "Color"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Minimum Component",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMinimumComponent"
  },
  {
    "CIAttributeFilterDisplayName": "Minimum",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMinimumCompositing",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Mix",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The amount of the effect.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeIdentity": 1,
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMix"
  },
  {
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDescription": "The angle of the mod hole pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 6.283185307179586,
      "AttributeSliderMin": -6.283185307179586,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputCompression": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.",
      "CIAttributeDisplayName": "Compression",

      "AttributeSliderMax": 800,
      "AttributeSliderMin": 100,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIModTransition",
    "CIAttributeFilterDisplayName": "Mod",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius of the undistorted holes in the pattern.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Gradient",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMorphologyGradient",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The desired radius of the circular morphological operation to the image.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 50,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Maximum",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMorphologyMaximum",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The desired radius of the circular morphological operation to the image.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 50,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Minimum",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIMorphologyMinimum",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The desired radius of the circular morphological operation to the image.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 50,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Rectangle Maximum",
    "inputHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Height",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 49,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeInteger"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMorphologyRectangleMaximum",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 1,
  
      "AttributeSliderMax": 49,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeInteger"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Rectangle Minimum",
    "inputHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Height",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 49,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeInteger"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMorphologyRectangleMinimum",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 1,
 
      "AttributeSliderMax": 49,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeInteger"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Motion Blur",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The angle of the motion determines which direction the blur smears.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMotionBlur",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
   
      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Multiply Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMultiplyBlendMode"
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Multiply",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIMultiplyCompositing"
  },
  {
    "CIAttributeFilterDisplayName": "Nine Part Stretched",
    "inputGrowAmount": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [100, 100],
      "CIAttributeDisplayName": "Grow Amount",
      "AttributeType": "CIAttributeTypeOffset"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CINinePartStretched",
    "inputBreakpoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [50, 50],
      "CIAttributeDescription":
          "Lower left corner of image to retain before stretching begins.",
      "CIAttributeDisplayName": "Breakpoint0",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBreakpoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "Upper right corner of image to retain after stretching ends.",
      "CIAttributeDisplayName": "Breakpoint1",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Nine Part Tiled",
    "inputGrowAmount": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [100, 100],
      "CIAttributeDisplayName": "Grow Amount",
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputFlipYTiles": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "Indicates that Y-Axis flip should occur.",
      "CIAttributeDisplayName": "Flip Y Tiles",
      "AttributeMax": 1,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeBoolean"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBreakpoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [50, 50],
      "CIAttributeDescription":
          "Lower left corner of image to retain before tiling begins.",
      "CIAttributeDisplayName": "Breakpoint0",
      "AttributeType": "CIAttributeTypePosition"
    },
    "AttributeFilterName": "CINinePartTiled",
    "inputBreakpoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "Upper right corner of image to retain after tiling ends.",
      "CIAttributeDisplayName": "Breakpoint1",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Noise Reduction",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CINoiseReduction",
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.4,
      "CIAttributeDescription":
          "The sharpness of the final image. The larger the value, the sharper the result.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeIdentity": 0,
 
      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputNoiseLevel": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.02,
      "CIAttributeDescription":
          "The amount of noise reduction. The larger the value, the more noise reduction.",
      "CIAttributeDisplayName": "Noise Level",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 0.1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Op Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of a tile.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2.8,
      "CIAttributeDescription":
          "The scale determines the number of tiles in the effect.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0.1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 65,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 65,
   
      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIOpTile",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Overlay Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIOverlayBlendMode"
  },
  {
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the curling page.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "AttributeFilterName": "CIPageCurlTransition",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription": "The extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterDisplayName": "Page Curl",
    "inputShadingImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image that looks like a shaded sphere enclosed in a square image.",
      "CIAttributeDisplayName": "Shading Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputBacksideImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image that appears on the back of the source image, as the page curls to reveal the target image.",
      "CIAttributeDisplayName": "Backside Image"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The radius of the curl.",
      "CIAttributeDisplayName": "Radius",
    
      "AttributeSliderMax": 400,
      "AttributeSliderMin": 0.01,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputShadowSize": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription": "The maximum size in pixels of the shadow.",
      "CIAttributeDisplayName": "Shadow Size",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputShadowAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription": "The strength of the shadow.",
      "CIAttributeDisplayName": "Shadow Amount",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the curling page.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputShadowExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription":
          "The rectagular portion of input image that will cast a shadow.",
      "CIAttributeDisplayName": "Shadow Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
     
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "AttributeFilterName": "CIPageCurlWithShadowTransition",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription": "The extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterDisplayName": "Page Curl With Shadow",
    "inputBacksideImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image that appears on the back of the source image, as the page curls to reveal the target image.",
      "CIAttributeDisplayName": "Backside Image"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The radius of the curl.",
      "CIAttributeDisplayName": "Radius",
 
      "AttributeSliderMax": 400,
      "AttributeSliderMin": 0.01,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputPerceptual": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies whether the color palette should be applied in a perceptual color space.",
      "CIAttributeDisplayName": "Perceptual",
      "AttributeMax": 1,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeBoolean"
    },
    "inputPaletteImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The input color palette, obtained using \\U201cCIKMeans\\U201c filter.",
      "CIAttributeDisplayName": "Palette Image"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPaletteCentroid",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterDisplayName": "Palette Centroid"
  },
  {
    "inputPerceptual": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies whether the color palette should be applied in a perceptual color space.",
      "CIAttributeDisplayName": "Perceptual",
      "AttributeMax": 1,
      "AttributeMin": 0,
      "AttributeType": "CIAttributeTypeBoolean"
    },
    "CIAttributeFilterDisplayName": "Palettize",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPalettize",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputPaletteImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The input color palette, obtained using \\U201cCIKMeans\\U201c filter.",
      "CIAttributeDisplayName": "Palette Image"
    }
  },
  {
    "inputAcuteAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.570796326794897,
      "CIAttributeDescription":
          "The primary angle for the repeating parallelogram tile. Small values create thin diamond tiles, and higher values create fatter parallelogram tiles.",
      "CIAttributeDisplayName": "Acute Angle",
      "CIAttributeIdentity": 1.570796326794897,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIParallelogramTile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterDisplayName": "Parallelogram Tile",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputMinHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The minimum height of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Min Height",

      "AttributeSliderMax": 283,
      "AttributeSliderMin": 13
    },
    "inputAlwaysSpecifyCompaction": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Force compaction style to @YES or @NO. Set to nil for automatic.",
      "CIAttributeDisplayName": "Always Specify Compaction",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0
    },
    "inputDataColumns": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The number of data columns in the generated barcode",
      "CIAttributeDisplayName": "Data Columns",

      "AttributeSliderMax": 30,
      "AttributeSliderMin": 1
    },
    "inputMinWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The minimum width of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Min Width",

      "AttributeSliderMax": 583,
      "AttributeSliderMin": 56
    },
    "inputMaxWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The maximum width of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Max Width",
  
      "AttributeSliderMax": 583,
      "AttributeSliderMin": 56
    },
    "AttributeFilterName": "CIPDF417BarcodeGenerator",
    "CIAttributeFilterDisplayName": "PDF417 Barcode Generator",
    "inputMessage": {
      "AttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the PDF417 Barcode",
      "CIAttributeDisplayName": "Message"
    },
    "inputCorrectionLevel": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The correction level ratio of the generated barcode",
      "CIAttributeDisplayName": "Correction Level",
 
      "AttributeSliderMax": 8,
      "AttributeSliderMin": 0
    },
    "inputCompactionMode": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription": "The compaction mode of the generated barcode.",
      "CIAttributeDisplayName": "Compaction Mode",

      "AttributeSliderMax": 3,
      "AttributeSliderMin": 0
    },
    "inputRows": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription": "The number of rows in the generated barcode",
      "CIAttributeDisplayName": "Rows",

      "AttributeSliderMax": 90,
      "AttributeSliderMin": 3
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputCompactStyle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Force a compact style Aztec code to @YES or @NO. Set to nil for automatic.",
      "CIAttributeDisplayName": "Compact Style",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0
    },
    "inputPreferredAspectRatio": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The preferred aspect ratio of the generated barcode",
      "CIAttributeDisplayName": "Preferred Aspect Ratio",

      "AttributeSliderMax": 9223372036854775807,
      "AttributeSliderMin": 0
    },
    "inputMaxHeight": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The maximum height of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Max Height",

      "AttributeSliderMax": 283,
      "AttributeSliderMin": 13
    }
  },
  {
    "CIAttributeFilterDisplayName": "Person Segmentation",
    "CIAttributeFilterCategories": [
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryStylize"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPersonSegmentation",
    "inputQualityLevel": {
      "AttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Determines the size and quality of the resulting segmentation mask. The value can be a number where 0 is accurate, 1 is balanced, and 2 is fast.",
      "CIAttributeDisplayName": "Quality Level"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPerspectiveCorrection",
    "CIAttributeFilterDisplayName": "Perspective Correction",
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDescription":
          "The top right coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDescription":
          "The bottom right coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputCrop": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Crop",
      "AttributeType": "CIAttributeTypeBoolean"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDescription":
          "The top left coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDescription":
          "The bottom left coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Perspective Rotate",
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CIPerspectiveRotate",
    "inputRoll": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Roll angle in radians.",
      "CIAttributeDisplayName": "Roll",
      "CIAttributeIdentity": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputPitch": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Pitch angle in radians.",
      "CIAttributeDisplayName": "Pitch",
      "CIAttributeIdentity": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputYaw": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Yaw angle in radians.",
      "CIAttributeDisplayName": "Yaw",
      "CIAttributeIdentity": 0,
      "AttributeType": "CIAttributeTypeAngle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Perspective Tile",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPerspectiveTile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDescription": "The bottom left coordinate of a tile.",
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDescription": "The top left coordinate of a tile.",
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDescription": "The bottom right coordinate of a tile.",
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDescription": "The top right coordinate of a tile.",
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Perspective Transform",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIPerspectiveTransform",
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDescription":
          "The bottom left coordinate to map the image to.",
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDescription": "The top left coordinate to map the image to.",
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDescription":
          "The bottom right coordinate to map the image to.",
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDescription": "The top right coordinate to map the image to.",
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPerspectiveTransformWithExtent",
    "CIAttributeFilterDisplayName": "Perspective Transform with Extent",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "inputBottomRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDisplayName": "Bottom Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopRight": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDisplayName": "Top Right",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDisplayName": "Top Left",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDisplayName": "Bottom Left",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Chrome",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectChrome"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Fade",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectFade",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Instant",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectInstant"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Mono",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectMono"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Noir",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectNoir"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Process",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectProcess"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Tonal",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectTonal"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Transfer",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPhotoEffectTransfer",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Pinch Distortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIPinchDistortion",
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Pin Light Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPinLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Pixelate",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPixellate",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "The scale determines the size of the squares. Larger values result in larger squares.",
      "CIAttributeDisplayName": "Scale",

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Pointillize",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIPointillize",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius of the circles in the resulting pattern.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 1,
    
      "AttributeSliderMax": 100,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "QR Code Generator",
    "inputCorrectionLevel": {
      "AttributeClass": "NSString",
      "CIAttributeDefault": "M",
      "CIAttributeDescription": "QR Code correction level L, M, Q, or H.",
      "CIAttributeDisplayName": "Correction Level"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMessage": {
      "AttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the QR Code",
      "CIAttributeDisplayName": "Message"
    },
    "AttributeFilterName": "CIQRCodeGenerator"
  },
  {
    "CIAttributeFilterDisplayName": "Radial Gradient",
    "inputRadius1": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription":
          "The radius of the ending circle to use in the gradient.",
      "CIAttributeDisplayName": "Radius 2",

      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputRadius0": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The radius of the starting circle to use in the gradient.",
      "CIAttributeDisplayName": "Radius 1",

      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001108a20 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "AttributeType": "CIAttributeTypeColor"
    },
    "AttributeFilterName": "CIRadialGradient",
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001108a80 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "AttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Random Generator",
    "AttributeFilterName": "CIRandomGenerator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of the ripple.",
      "CIAttributeDisplayName": "Width",

      "AttributeSliderMax": 300,
      "AttributeSliderMin": 10,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIRippleTransition",
    "CIAttributeFilterDisplayName": "Ripple",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "inputShadingImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image that looks like a shaded sphere enclosed in a square image.",
      "CIAttributeDisplayName": "Shading Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription":
          "A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
 
      "AttributeSliderMax": 50,
      "AttributeSliderMin": -50,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Rounded Rectangle Generator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIRoundedRectangleGenerator",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      
      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001109ce0 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeColor"
    },
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 100, 100],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Row Average",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIRowAverage",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Saliency Map Filter",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISaliencyMapFilter",
    "CIAttributeFilterCategories": [
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryStylize"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Sample Nearest",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISampleNearest"
  },
  {
    "CIAttributeFilterDisplayName": "Saturation Blend Mode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISaturationBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Screen Blend Mode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIScreenBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Sepia Tone",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISepiaTone",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryXMPSerializable"
    ],
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputShadingImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.",
      "CIAttributeDisplayName": "Shading Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Shaded Material",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The scale of the effect. The higher the value, the more dramatic the effect.",
      "CIAttributeDisplayName": "Scale",
  
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 0.5,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CIShadedMaterial"
  },
  {
    "CIAttributeFilterDisplayName": "Sharpen Luminance",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISharpenLuminance",
    "CIAttributeFilterCategories": [
      "CICategorySharpen",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.4,
      "CIAttributeDescription":
          "The amount of sharpening to apply. Larger values are sharper.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.69,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 20,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Sixfold Reflected Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISixfoldReflectedTile",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Sixfold Rotated Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISixfoldRotatedTile",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
    
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputPoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0],
      "CIAttributeDescription":
          "The starting position of the gradient -- where the first color begins.",
      "CIAttributeDisplayName": "Point 0",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterDisplayName": "Smooth Linear Gradient",
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fcc90 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "AttributeType": "CIAttributeTypeColor"
    },
    "AttributeFilterName": "CISmoothLinearGradient",
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputPoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200],
      "CIAttributeDescription":
          "The ending position of the gradient -- where the second color begins.",
      "CIAttributeDisplayName": "Point 1",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fcbd0 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "AttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Soft Light Blend Mode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISoftLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Source Atop",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISourceAtopCompositing",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Source In",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISourceInCompositing",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Source Out",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISourceOutCompositing",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Source Over",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISourceOverCompositing",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryHighDynamicRange",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputCenterColor2": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6610 (0.5255 0.3059 0.3451 1) devicergb>",
      "CIAttributeDescription":
          "The center value of the second color range to replace.",
      "CIAttributeDisplayName": "Center Color 2"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputCloseness2": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.15,
      "CIAttributeDescription":
          "A value that indicates how close the second color must match before it is replaced.",
      "CIAttributeDisplayName": "Closeness 2",
 
      "AttributeSliderMax": 0.5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputContrast1": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.98,
      "CIAttributeDescription": "The contrast of the first replacement color.",
      "CIAttributeDisplayName": "Contrast 1",
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputReplacementColor2": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6640 (0.9137 0.5608 0.5059 1) devicergb>",
      "CIAttributeDescription":
          "A replacement color for the second color range.",
      "CIAttributeDisplayName": "Replacement Color 2"
    },
    "inputCenterColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6580 (0.0784 0.0627 0.0706 1) devicergb>",
      "CIAttributeDescription":
          "The center value of the first color range to replace.",
      "CIAttributeDisplayName": "Center Color 1"
    },
    "inputContrast3": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.99,
      "CIAttributeDescription": "The contrast of the third replacement color.",
      "CIAttributeDisplayName": "Contrast 3",
 
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCloseness1": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.22,
      "CIAttributeDescription":
          "A value that indicates how close the first color must match before it is replaced.",
      "CIAttributeDisplayName": "Closeness 1",

      "AttributeSliderMax": 0.5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Spot Color",
    "AttributeFilterName": "CISpotColor",
    "inputContrast2": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.98,
      "CIAttributeDescription": "The contrast of the second replacement color.",
      "CIAttributeDisplayName": "Contrast 2",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputReplacementColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f65e0 (0.4392 0.1922 0.1961 1) devicergb>",
      "CIAttributeDescription":
          "A replacement color for the first color range.",
      "CIAttributeDisplayName": "Replacement Color 1"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBuiltIn",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryStylize"
    ],
    "inputCenterColor3": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6670 (0.9216 0.4549 0.3333 1) devicergb>",
      "CIAttributeDescription":
          "The center value of the third color range to replace.",
      "CIAttributeDisplayName": "Center Color 3"
    },
    "inputCloseness3": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "A value that indicates how close the third color must match before it is replaced.",
      "CIAttributeDisplayName": "Closeness 3",

      "AttributeSliderMax": 0.5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputReplacementColor3": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f66a0 (0.9098 0.7529 0.6078 1) devicergb>",
      "CIAttributeDescription":
          "A replacement color for the third color range.",
      "CIAttributeDisplayName": "Replacement Color 3"
    }
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputLightPointsAt": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200, 0],
      "CIAttributeDescription":
          "The x and y position that the spotlight points at.",
      "CIAttributeDisplayName": "Light Points At",
      "AttributeType": "CIAttributeTypePosition3"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000110ee50 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The color of the spotlight.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputConcentration": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription":
          "The spotlight size. The smaller the value, the more tightly focused the light beam.",
      "CIAttributeDisplayName": "Concentration",
      "CIAttributeIdentity": 20,
   
      "AttributeSliderMax": 1.5,
      "AttributeSliderMin": 0.001,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CISpotLight",
    "CIAttributeFilterDisplayName": "Spot Light",
    "inputBrightness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDescription": "The brightness of the spotlight.",
      "CIAttributeDisplayName": "Brightness",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputLightPosition": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [400, 600, 150],
      "CIAttributeDescription": "The x and y position of the spotlight.",
      "CIAttributeDisplayName": "Light Position",
      "AttributeType": "CIAttributeTypePosition3"
    }
  },
  {
    "CIAttributeFilterDisplayName": "sRGB Tone Curve to Linear",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISRGBToneCurveToLinear",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fd140 (1 0.8 0.6 1) devicergb>",
      "CIAttributeDescription":
          "The color to use for the outer shell of the circular star.",
      "CIAttributeDisplayName": "Color"
    },
    "inputCrossScale": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 15,
      "CIAttributeDescription": "The size of the cross pattern.",
      "CIAttributeDisplayName": "Cross Scale",
      "CIAttributeIdentity": 15,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCrossWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2.5,
      "CIAttributeDescription": "The width of the cross pattern.",
      "CIAttributeDisplayName": "Cross Width",
  
      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0.5,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterDisplayName": "Star Shine",
    "AttributeFilterName": "CIStarShineGenerator",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the star.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputCrossOpacity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": -2,
      "CIAttributeDescription": "The opacity of the cross pattern.",
      "CIAttributeDisplayName": "Cross Opacity",
      "CIAttributeIdentity": -2,

      "AttributeSliderMax": 0,
      "AttributeSliderMin": -8,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCrossAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.6,
      "CIAttributeDescription": "The angle of the cross pattern.",
      "CIAttributeDisplayName": "Cross Angle",
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription": "The radius of the star.",
      "CIAttributeDisplayName": "Radius",
  
      "AttributeSliderMax": 300,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputEpsilon": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": -2,
      "CIAttributeDescription": "The length of the cross spikes.",
      "CIAttributeDisplayName": "Epsilon",
      "CIAttributeIdentity": -2,

      "AttributeSliderMax": 0,
      "AttributeSliderMin": -8,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Straighten",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "An angle in radians.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIStraightenFilter"
  },
  {
    "CIAttributeFilterDisplayName": "Stretch Crop",
    "inputCenterStretchAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.25,
      "CIAttributeDescription":
          "Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio. If 1 then the image is stretched uniformly.",
      "CIAttributeDisplayName": "Center Stretch Amount",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIStretchCrop",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputCropAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.25,
      "CIAttributeDescription":
          "Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used. If 1 then only cropping is used.",
      "CIAttributeDisplayName": "Crop Amount",
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputSize": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [1280, 720],
      "CIAttributeDescription": "The size in pixels of the output image.",
      "CIAttributeDisplayName": "Size",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the stripe pattern.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterDisplayName": "Stripes",
    "inputColor0": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011f7270 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color to use for the odd stripes.",
      "CIAttributeDisplayName": "Color 1"
    },
    "AttributeFilterName": "CIStripesGenerator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputSharpness": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.",
      "CIAttributeDisplayName": "Sharpness",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 80,
      "CIAttributeDescription": "The width of a stripe.",
      "CIAttributeDisplayName": "Width",
      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputColor1": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011f72d0 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "A color to use for the even stripes.",
      "CIAttributeDisplayName": "Color 2"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Subtract Blend Mode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CISubtractBlendMode",
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The duration of the effect.",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
 
  
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011f7c00 (1 0.5 0 1) devicergb>",
      "CIAttributeDescription": "The color of the sun.",
      "CIAttributeDisplayName": "Color"
    },
    "inputStriationStrength": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the sunbeams. Higher values result in more intensity.",
      "CIAttributeDisplayName": "Striation Strength",
      "CIAttributeIdentity": 0.5,

      "AttributeSliderMax": 3,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "AttributeFilterName": "CISunbeamsGenerator",
    "CIAttributeFilterDisplayName": "Sunbeams",
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the sunbeam pattern",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "inputStriationContrast": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.375,
      "CIAttributeDescription":
          "The contrast of the sunbeams. Higher values result in more contrast.",
      "CIAttributeDisplayName": "Striation Contrast",
      "CIAttributeIdentity": 1.375,

      "AttributeSliderMax": 5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputSunRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 40,
      "CIAttributeDescription": "The radius of the sun.",
      "CIAttributeDisplayName": "Sun Radius",
      "CIAttributeIdentity": 40,

      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMaxStriationRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2.58,
      "CIAttributeDescription": "The radius of the sunbeams.",
      "CIAttributeDisplayName": "Maximum Striation Radius",
      "CIAttributeIdentity": 2.58,

      "AttributeSliderMax": 10,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputTime": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeTime"
    },
    "inputTargetImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111bf90 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The color of the swipe.",
      "CIAttributeDisplayName": "Color",
      "AttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the swipe.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription": "The width of the swipe",
      "CIAttributeDisplayName": "Width",

      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0.1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "AttributeFilterName": "CISwipeTransition",
    "CIAttributeFilterDisplayName": "Swipe",
    "inputExtent": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription": "The extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "AttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputOpacity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The opacity of the swipe.",
      "CIAttributeDisplayName": "Opacity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Temperature and Tint",
    "inputTargetNeutral": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [6500, 0],
      "CIAttributeDisplayName": "Target Neutral",
      "CIAttributeIdentity": [6500, 0],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputNeutral": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [6500, 0],
      "CIAttributeDisplayName": "Neutral",
      "CIAttributeIdentity": [6500, 0],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CITemperatureAndTint"
  },
  {
    "CIAttributeFilterDisplayName": "Text Image Generator",
    "inputFontName": {
      "AttributeClass": "NSString",
      "CIAttributeDefault": "HelveticaNeue",
      "CIAttributeDisplayName": "Font Name"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CITextImageGenerator",
    "inputScaleFactor": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Scale Factor",

      "AttributeSliderMax": 4,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputText": {
      "AttributeClass": "NSString",
      "CIAttributeDisplayName": "Text"
    },
    "inputFontSize": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 12,
      "CIAttributeDisplayName": "Font Size",

      "AttributeSliderMax": 128,
      "AttributeSliderMin": 9,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Thermal",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIThermal"
  },
  {
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputPoint0": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0],
      "CIAttributeDisplayName": "Point 0",
      "CIAttributeIdentity": [0, 0],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint1": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0.25, 0.25],
      "CIAttributeDisplayName": "Point 1",
      "CIAttributeIdentity": [0.25, 0.25],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint2": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0.5, 0.5],
      "CIAttributeDisplayName": "Point 2",
      "CIAttributeIdentity": [0.5, 0.5],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint3": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [0.75, 0.75],
      "CIAttributeDisplayName": "Point 3",
      "CIAttributeIdentity": [0.75, 0.75],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint4": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [1, 1],
      "CIAttributeDisplayName": "Point 4",
      "CIAttributeIdentity": [1, 1],
      "AttributeType": "CIAttributeTypeOffset"
    },
    "CIAttributeFilterDisplayName": "Tone Curve",
    "AttributeFilterName": "CIToneCurve",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ]
  },
  {
    "CIAttributeFilterDisplayName": "Torus Lens Distortion",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CITorusLensDistortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 80,
      "CIAttributeDescription": "The width of the ring.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 0,
    
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 160,
      "CIAttributeDescription": "The outer radius of the torus.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
    
      "AttributeSliderMax": 500,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputRefraction": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1.7,
      "CIAttributeDescription": "The refraction of the glass.",
      "CIAttributeDisplayName": "Refraction",
      "CIAttributeIdentity": 1,

      "AttributeSliderMax": 5,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the torus.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Triangle Kaleidoscope",
    "inputPoint": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the triangular area in the input image.",
      "CIAttributeDisplayName": "Point",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CITriangleKaleidoscope",
    "inputSize": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 700,
      "CIAttributeDescription": "The size in pixels of the triangle.",
      "CIAttributeDisplayName": "Size",
      "AttributeSliderMax": 1000,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputRotation": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 5.924285296593801,
      "CIAttributeDescription": "Rotation angle of the triangle.",
      "CIAttributeDisplayName": "Rotation",
      "AttributeSliderMax": 6.283185307179586,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputDecay": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.85,
      "CIAttributeDescription":
          "The decay determines how fast the color fades from the center triangle.",
      "CIAttributeDisplayName": "Decay",
      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Triangle Tile",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CITriangleTile",
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
    
      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 3.141592653589793,
      "AttributeSliderMin": -3.141592653589793,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Twelvefold Reflected Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CITwelvefoldReflectedTile",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,

      "AttributeSliderMax": 200,
      "AttributeSliderMin": 1,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Twirl Distortion",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 3.141592653589793,
      "CIAttributeDescription":
          "The angle (in radians) of the twirl. Values can be positive or negative.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 12.56637061435917,
      "AttributeSliderMin": -12.56637061435917,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CITwirlDistortion",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 300,

      "AttributeSliderMax": 500,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Unsharp Mask",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategorySharpen",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIUnsharpMask",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 2.5,
      "CIAttributeDescription":
          "The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 100,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the effect. The larger the value, the more contrast in the affected area.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Vibrance",
    "inputAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The amount to adjust the saturation.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": -1,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIVibrance"
  },
  {
    "CIAttributeFilterDisplayName": "Vignette",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIVignette",
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
 
      "AttributeSliderMax": 2,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The intensity of the effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": -1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterDisplayName": "Vignette Effect",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIVignetteEffect",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",

      "AttributeSliderMax": 2000,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputFalloff": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDisplayName": "Falloff",

      "AttributeSliderMax": 1,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeScalar"
    },
    "inputIntensity": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The intensity of the effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 1,
      "AttributeSliderMin": -1,
      "AttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Vivid Light Blend Mode",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "AttributeFilterName": "CIVividLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "AttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Vortex Distortion",
    "inputAngle": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 56.54866776461628,
      "CIAttributeDescription": "The angle (in radians) of the vortex.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 94.24777960769379,
      "AttributeSliderMin": -94.24777960769379,
      "AttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIVortexDistortion",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputRadius": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,

      "AttributeSliderMax": 800,
      "AttributeSliderMin": 0,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "White Point Adjust",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIWhitePointAdjust",
    "inputColor": {
      "AttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fe220 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color to use as the white point.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeIdentity": "<CIColor 0x6000011fe280 (1 1 1 1) devicergb>",
      "AttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "CIAttributeFilterDisplayName": "X-Ray",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIXRay"
  },
  {
    "CIAttributeFilterDisplayName": "Zoom Blur",
    "inputAmount": {
      "AttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The zoom-in amount. Larger values result in more zooming in.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeIdentity": 0,
      "AttributeSliderMax": 200,
      "AttributeSliderMin": -200,
      "AttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "AttributeFilterName": "CIZoomBlur",
    "inputImage": {
      "AttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "AttributeType": "CIAttributeTypeImage"
    },
    "inputCenter": {
      "AttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "AttributeType": "CIAttributeTypePosition"
    }
  }
];
