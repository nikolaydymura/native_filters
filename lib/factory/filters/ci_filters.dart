const ciFilters = [
  {
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The duration of the effect.",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputNumberOfFolds": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDisplayName": "Number of Folds",
      "CIAttributeMax": 50,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAccordionFoldTransition",
    "CIAttributeFilterDisplayName": "Accordion Fold Transition",
    "inputBottomHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bottom Height",
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputFoldShadowAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDisplayName": "Fold Shadow Amount",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
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
    "CIAttributeFilterName": "CIAdditionCompositing",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAffineClamp",
    "inputTransform": {
      "CIAttributeClass": "NSValue",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAffineTile",
    "inputTransform": {
      "CIAttributeClass": "NSValue",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAffineTransform",
    "inputTransform": {
      "CIAttributeClass": "NSValue",
      "CIAttributeDefault": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}",
      "CIAttributeDescription": "A transform to apply to the image.",
      "CIAttributeDisplayName": "Transform",
      "CIAttributeIdentity": "CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}",
      "CIAttributeType": "CIAttributeTypeTransform"
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
    "CIAttributeFilterName": "CIAreaAverage",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Histogram",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAreaHistogram",
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The scale value to use for the histogram values. If the scale is 1.0, then the bins in the resulting image will add up to 1.0.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 64,
      "CIAttributeDescription":
          "The number of bins for the histogram. This value will determine the width of the output image.",
      "CIAttributeDisplayName": "Count",
      "CIAttributeMax": 2048,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 10,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that, after intersection with the image extent, specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
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
    "CIAttributeFilterName": "CIAreaMaximum",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
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
    "CIAttributeFilterName": "CIAreaMaximumAlpha",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Minimum",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIAreaMinimum",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Minimum Alpha",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAreaMinimumAlpha",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Min and Max",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAreaMinMax",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Area Min and Max Red",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIAreaMinMaxRed",
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
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
      "CIAttributeClass": "NSAttributedString",
      "CIAttributeDisplayName": "Text"
    },
    "CIAttributeFilterName": "CIAttributedTextImageGenerator",
    "inputScaleFactor": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Scale Factor",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 4,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputCompactStyle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Force a compact style Aztec code to @YES or @NO. Set to nil for automatic.",
      "CIAttributeDisplayName": "Compact Style",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0
    },
    "CIAttributeFilterDisplayName": "Aztec Code Generator",
    "inputCorrectionLevel": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 23,
      "CIAttributeDescription": "Aztec error correction value between 5 and 95",
      "CIAttributeDisplayName": "Correction Level",
      "CIAttributeMax": 95,
      "CIAttributeMin": 5,
      "CIAttributeSliderMax": 95,
      "CIAttributeSliderMin": 5
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIAztecCodeGenerator",
    "inputLayers": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Aztec layers value between 1 and 32. Set to nil for automatic.",
      "CIAttributeDisplayName": "Layers",
      "CIAttributeMax": 32,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 32,
      "CIAttributeSliderMin": 1
    },
    "inputMessage": {
      "CIAttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the Aztec Barcode",
      "CIAttributeDisplayName": "Message"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Barcode Generator",
    "inputBarcodeDescriptor": {
      "CIAttributeClass": "CIBarcodeDescriptor",
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
    "CIAttributeFilterName": "CIBarcodeGenerator"
  },
  {
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 3.141592653589793,
      "CIAttributeDescription": "The angle (in radians) of the bars.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 6.283185307179586,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 30,
      "CIAttributeDescription": "The width of each bar.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 2,
      "CIAttributeSliderMax": 300,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIBarsSwipeTransition",
    "CIAttributeFilterDisplayName": "Bars Swipe Transition",
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBarOffset": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription": "The offset of one bar with respect to another",
      "CIAttributeDisplayName": "Bar Offset",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputB": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies the value of B to use for the cubic resampling function.",
      "CIAttributeDisplayName": "B",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Bicubic Scale Transform",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0.05,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputC": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.75,
      "CIAttributeDescription":
          "Specifies the value of C to use for the cubic resampling function.",
      "CIAttributeDisplayName": "C",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIBicubicScaleTransform",
    "inputAspectRatio": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The additional horizontal scaling factor to use on the image.",
      "CIAttributeDisplayName": "Aspect Ratio",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0.5,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputMaskImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Blend With Alpha Mask",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIBlendWithAlphaMask",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Blend With Blue Mask",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMaskImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIBlendWithBlueMask",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputMaskImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.",
      "CIAttributeDisplayName": "Mask Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Blend With Mask",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIBlendWithMask"
  },
  {
    "inputMaskImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Blend With Red Mask",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIBlendWithRedMask"
  },
  {
    "CIAttributeFilterDisplayName": "Bloom",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIBloom",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Bokeh Blur",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIBokehBlur",
    "inputSoftness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Softness",
      "CIAttributeMax": 10,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.4,
      "CIAttributeSliderMin": 0.25,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRingSize": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription":
          "The size of extra emphasis at the ring of the bokeh",
      "CIAttributeDisplayName": "Ring Size",
      "CIAttributeMax": 0.2,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMax": 500,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputRingAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount of extra emphasis at the ring of the bokeh.",
      "CIAttributeDisplayName": "Ring Amount",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Box Blur",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIBoxBlur",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Bump Distortion",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump, negative values create an inward bump.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": -1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIBumpDistortion",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 600,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Bump Distortion Linear",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The angle (in radians) of the line around which the distortion occurs.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 6.283185307179586,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription": "The scale of the effect.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": -1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIBumpDistortionLinear",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 600,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Lens Correction for AVC",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CICameraCalibrationLensCorrection",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputUseInverseLookUpTable": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Boolean value used to select the Look Up Table from the AVCameraCalibrationData",
      "CIAttributeDisplayName": "Use Inverse Look Up Table"
    },
    "inputAVCameraCalibrationData": {
      "CIAttributeClass": "AVCameraCalibrationData",
      "CIAttributeDescription":
          "AVCameraCalibrationData for the correction. Will be set from the inputImage if available and can be overridden here.",
      "CIAttributeDisplayName":
          "Calibration Data object of type AVCameraCalibrationData"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Checkerboard",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011395c0 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color to use for the first set of squares.",
      "CIAttributeDisplayName": "Color 1"
    },
    "CIAttributeFilterName": "CICheckerboardGenerator",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 80,
      "CIAttributeDescription": "The width of the squares in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011395f0 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "A color to use for the second set of squares.",
      "CIAttributeDisplayName": "Color 2"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Circle Splash Distortion",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CICircleSplashDistortion",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CICircularScreen",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription":
          "The distance between each circle in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the circles. The larger the value, the sharper the circles.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the circular screen pattern",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Circular Wrap Distortion",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the effect.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CICircularWrap",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 600,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Clamp",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIClamp",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the pattern. The larger the value, the sharper the pattern.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance",
      "CIUIParameterSet": ":CIUISetBasic"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between dots in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 6,
      "CIAttributeMin": -2,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeDistance",
      "CIUIParameterSet": ":CIUISetBasic"
    },
    "inputUCR": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The under color removal value. The value can vary from 0.0 to 1.0. ",
      "CIAttributeDisplayName": "Under Color Removal",
      "CIAttributeIdentity": 0.5,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar",
      "CIUIParameterSet": ":CIUISetIntermediate"
    },
    "inputGCR": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The gray component replacement value. The value can vary from 0.0 (none) to 1.0.",
      "CIAttributeDisplayName": "Gray Component Replacement",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar",
      "CIUIParameterSet": ":CIUISetIntermediate"
    },
    "CIAttributeFilterName": "CICMYKHalftone",
    "CIAttributeFilterDisplayName": "CMYK Halftone",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the halftone pattern",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The number of empty white pixels that should surround the barcode.",
      "CIAttributeDisplayName": "Quiet Space",
      "CIAttributeMax": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 20,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Code 128 Barcode Generator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CICode128BarcodeGenerator",
    "inputMessage": {
      "CIAttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the Code 128 Barcode",
      "CIAttributeDisplayName": "Message"
    },
    "inputBarcodeHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 32,
      "CIAttributeDescription":
          "The height of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Barcode Height",
      "CIAttributeMax": 500,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputImage2": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The second input image for differencing.",
      "CIAttributeDisplayName": "Image2"
    },
    "CIAttributeFilterDisplayName": "Color Absolute Difference",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorAbsoluteDifference",
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
    "CIAttributeFilterName": "CIColorBlendMode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Burn Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorBurnBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Clamp",
    "inputMaxComponents": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [1, 1, 1, 1],
      "CIAttributeDescription": "Higher clamping values",
      "CIAttributeDisplayName": "Max Components"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorClamp",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMinComponents": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription": "Lower clamping values",
      "CIAttributeDisplayName": "Min Components"
    }
  },
  {
    "inputBrightness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount of brightness to apply. The larger the value, the brighter the result.",
      "CIAttributeDisplayName": "Brightness",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": -1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": -1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Color Controls",
    "inputSaturation": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The amount of saturation to apply. The larger the value, the more saturated the result.",
      "CIAttributeDisplayName": "Saturation",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIColorControls",
    "inputContrast": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The amount of contrast to apply. The larger the value, the more contrast in the resulting image.",
      "CIAttributeDisplayName": "Contrast",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 4,
      "CIAttributeSliderMin": 0.25,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputRedCoefficients": {
      "CIAttributeClass": "CIVector",
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
    "CIAttributeFilterName": "CIColorCrossPolynomial",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputGreenCoefficients": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for green channel",
      "CIAttributeDisplayName": "Green Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0, 0, 0, 0, 0, 0, 0]
    },
    "inputBlueCoefficients": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for blue channel",
      "CIAttributeDisplayName": "Blue Coefficients",
      "CIAttributeIdentity": [0, 0, 1, 0, 0, 0, 0, 0, 0, 0]
    }
  },
  {
    "inputCubeDimension": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDisplayName": "Cube Dimension",
      "CIAttributeIdentity": 2,
      "CIAttributeMax": 64,
      "CIAttributeMin": 2,
      "CIAttributeType": "CIAttributeTypeCount"
    },
    "CIAttributeFilterDisplayName": "Color Cube",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorCube",
    "inputCubeData": {
      "CIAttributeClass": "NSData",
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDisplayName": "Cube Dimension",
      "CIAttributeIdentity": 2,
      "CIAttributeMax": 64,
      "CIAttributeMin": 2,
      "CIAttributeType": "CIAttributeTypeCount"
    },
    "inputMaskImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A masking image.",
      "CIAttributeDisplayName": "Mask Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputCube0Data": {
      "CIAttributeClass": "NSData",
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
    "CIAttributeFilterName": "CIColorCubesMixedWithMask",
    "CIAttributeFilterDisplayName": "Color Cubes Mixed With Mask",
    "inputCube1Data": {
      "CIAttributeClass": "NSData",
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
      "CIAttributeClass": "NSObject",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputCubeDimension": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDisplayName": "Cube Dimension",
      "CIAttributeIdentity": 2,
      "CIAttributeMax": 64,
      "CIAttributeMin": 2,
      "CIAttributeType": "CIAttributeTypeCount"
    },
    "CIAttributeFilterDisplayName": "Color Cube with ColorSpace",
    "inputCubeData": {
      "CIAttributeClass": "NSData",
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
      "CIAttributeClass": "NSObject",
      "CIAttributeDisplayName": "Color Space"
    },
    "CIAttributeFilterName": "CIColorCubeWithColorSpace",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
      "CIAttributeClass": "NSObject",
      "CIAttributeDisplayName": "Color Space"
    },
    "inputCurvesDomain": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1],
      "CIAttributeDisplayName": "Curves Domain"
    },
    "CIAttributeFilterName": "CIColorCurves",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputCurvesData": {
      "CIAttributeClass": "NSData",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIColorDodgeBlendMode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Invert",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIColorInvert"
  },
  {
    "CIAttributeFilterDisplayName": "Color Map",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIColorMap",
    "inputGradientImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image data from this image transforms the source image values.",
      "CIAttributeDisplayName": "Gradient Image",
      "CIAttributeType": "CIAttributeTypeGradient"
    }
  },
  {
    "inputGVector": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription":
          "The amount of green to multiply the source color values by.",
      "CIAttributeDisplayName": "Green Vector",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "inputBiasVector": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription":
          "A vector that\\U2019s added to each color component.",
      "CIAttributeDisplayName": "Bias Vector",
      "CIAttributeIdentity": [0, 0, 0, 0]
    },
    "inputRVector": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [1, 0, 0, 0],
      "CIAttributeDescription":
          "The amount of red to multiply the source color values by.",
      "CIAttributeDisplayName": "Red Vector",
      "CIAttributeIdentity": [1, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Color Matrix",
    "CIAttributeFilterName": "CIColorMatrix",
    "inputAVector": {
      "CIAttributeClass": "CIVector",
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
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 1, 0],
      "CIAttributeDescription":
          "The amount of blue to multiply the source color values by.",
      "CIAttributeDisplayName": "Blue Vector",
      "CIAttributeIdentity": [0, 0, 1, 0]
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Monochrome",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorMonochrome",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x600001126c70 (0.6 0.45 0.3 1) devicergb>",
      "CIAttributeDescription": "The monochrome color to apply to the image.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputRedCoefficients": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for red channel",
      "CIAttributeDisplayName": "Red Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Color Polynomial",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorPolynomial",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputGreenCoefficients": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for green channel",
      "CIAttributeDisplayName": "Green Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "inputAlphaCoefficients": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for alpha channel",
      "CIAttributeDisplayName": "Alpha Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    },
    "inputBlueCoefficients": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 1, 0, 0],
      "CIAttributeDescription": "Polynomial coefficients for blue channel",
      "CIAttributeDisplayName": "Blue Coefficients",
      "CIAttributeIdentity": [0, 1, 0, 0]
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Posterize",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIColorPosterize",
    "inputLevels": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription":
          "The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.",
      "CIAttributeDisplayName": "Levels",
      "CIAttributeIdentity": 300,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 30,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Threshold",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorThreshold",
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputThreshold": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDisplayName": "Threshold",
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Color Threshold Otsu",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIColorThresholdOtsu",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryReduction",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIColumnAverage",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Comic Effect",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIComicEffect",
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
    "CIAttributeFilterName": "CIConstantColorGenerator",
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000113f870 (1 0 0 1) devicergb>",
      "CIAttributeDescription": "The color to generate.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "3 by 3 Convolution",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolution3X3",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolution5X5",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolution7X7",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Horizontal 9 Convolution",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolution9Horizontal",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Vertical 9 Convolution",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolution9Vertical",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "3 by 3 RGB Convolution",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolutionRGB3X3",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolutionRGB5X5",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolutionRGB7X7",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Horizontal 9 RGB Convolution",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolutionRGB9Horizontal",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputWeights": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0, 1, 0, 0, 0, 0],
      "CIAttributeDisplayName": "Weights",
      "CIAttributeIdentity": [0, 0, 0, 0, 1, 0, 0, 0, 0]
    },
    "CIAttributeFilterDisplayName": "Vertical 9 RGB Convolution",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIConvolutionRGB9Vertical",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBias": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Bias",
      "CIAttributeIdentity": 0
    }
  },
  {
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001133180 (0.6 1 0.8 1) devicergb>",
      "CIAttributeDescription": "The color of the copier light.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the copier light.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 6.283185307179586,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 200,
      "CIAttributeDescription": "The width of the copier light. ",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 200,
      "CIAttributeMin": 0.1,
      "CIAttributeSliderMax": 500,
      "CIAttributeSliderMin": 0.1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CICopyMachineTransition",
    "CIAttributeFilterDisplayName": "Copy Machine",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputOpacity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.3,
      "CIAttributeDescription":
          "The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.",
      "CIAttributeDisplayName": "Opacity",
      "CIAttributeIdentity": 1.3,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 3,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "CoreML Model Filter",
    "CIAttributeFilterCategories": [
      "CICategoryStillImage",
      "CICategoryBuiltIn",
      "CICategoryStylize"
    ],
    "CIAttributeFilterName": "CICoreMLModelFilter",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputHeadIndex": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "A number to specify which output of a multi-head CoreML model should be used for applying effect on the image.",
      "CIAttributeDisplayName": "Head Index",
      "CIAttributeMax": 10,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeInteger"
    },
    "inputModel": {
      "CIAttributeClass": "MLModel",
      "CIAttributeDescription":
          "The CoreML model to be used for applying effect on the image.",
      "CIAttributeDisplayName": "Model"
    },
    "inputSoftmaxNormalization": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "A boolean value to specify that Softmax normalization should be applied to the output of the model.",
      "CIAttributeDisplayName": "Softmax Normalization",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeBoolean"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Crop",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputRectangle": {
      "CIAttributeClass": "CIVector",
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
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterName": "CICrop",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CICrystallize",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Darken Blend Mode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIDarkenBlendMode",
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
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Nose Positions",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputHairImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "A segmentation matte image that corresponds to people\\U2019s hair.",
      "CIAttributeDisplayName": "Hair Image"
    },
    "inputCalibrationData": {
      "CIAttributeClass": "AVCameraCalibrationData",
      "CIAttributeDisplayName": "Calibration Data"
    },
    "CIAttributeFilterName": "CIDepthBlurEffect",
    "inputChinPositions": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Chin Positions",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputGainMap": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDisplayName": "Gain Map"
    },
    "inputLumaNoiseScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Luma Noise Scale",
      "CIAttributeMax": 0.1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputDisparityImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDisplayName": "Disparity Image"
    },
    "inputGlassesImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "A segmentation matte image that corresponds to people\\U2019s glasses.",
      "CIAttributeDisplayName": "Glasses Image"
    },
    "inputScaleFactor": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Scale Factor",
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputMatteImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A matting image.",
      "CIAttributeDisplayName": "Matte Image"
    },
    "inputLeftEyePositions": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Left Eye Positions",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputShape": {
      "CIAttributeClass": "NSString",
      "CIAttributeDisplayName": "Shape"
    },
    "inputRightEyePositions": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [-1, -1],
      "CIAttributeDisplayName": "Right Eye Positions",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputAuxDataMetadata": {
      "CIAttributeClass": "CGImageMetadataRef",
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
      "CIAttributeClass": "CIVector",
      "CIAttributeDisplayName": "Focus Rectangle",
      "CIAttributeIdentity": [
        -8.98847e+307,
        -8.98847e+307,
        1.79769e+308,
        1.79769e+308
      ],
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "inputAperture": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Aperture",
      "CIAttributeMax": 22,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 22,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputPoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 300],
      "CIAttributeDisplayName": "Point 0",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputPoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [300, 300],
      "CIAttributeDisplayName": "Point 1",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterName": "CIDepthOfField",
    "CIAttributeFilterDisplayName": "Depth of Field",
    "inputUnsharpMaskRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2.5,
      "CIAttributeDisplayName": "Unsharp Mask Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputSaturation": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.5,
      "CIAttributeDescription": "The amount to adjust the saturation.",
      "CIAttributeDisplayName": "Saturation",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputUnsharpMaskIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDisplayName": "Unsharp Mask Intensity",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 30,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Depth To Disparity",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDepthToDisparity"
  },
  {
    "CIAttributeFilterDisplayName": "Difference Blend Mode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDifferenceBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Disc Blur",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDiscBlur",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputMaskImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image that defines the shape to use when disintegrating from the source to the target image.",
      "CIAttributeDisplayName": "Mask Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIDisintegrateWithMaskTransition",
    "CIAttributeFilterDisplayName": "Disintegrate With Mask",
    "inputShadowOffset": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, -10],
      "CIAttributeDescription": "The offset of the shadow created by the mask.",
      "CIAttributeDisplayName": "Shadow Offset",
      "CIAttributeIdentity": [0, 0],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputShadowDensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.65,
      "CIAttributeDescription":
          "The density of the shadow created by the mask.",
      "CIAttributeDisplayName": "Shadow Density",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputShadowRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription": "The radius of the shadow created by the mask.",
      "CIAttributeDisplayName": "Shadow Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Disparity To Depth",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIDisparityToDepth",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image whose grayscale values will be applied to the source image.",
      "CIAttributeDisplayName": "Displacement Image"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDisplacementDistortion",
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription":
          "The amount of texturing of the resulting image. The larger the value, the greater the texturing.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Dissolve",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDissolveTransition",
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Dither",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIDither",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription": "The intensity of the effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 5,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Divide Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDivideBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Document Enhancer",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIDocumentEnhancer",
    "inputAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The amount of enhancement.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeMax": 10,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Dot Screen",
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIDotScreen",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the pattern. The larger the value, the sharper the pattern.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between dots in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the dot screen pattern",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputInsetPoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [400, 400],
      "CIAttributeDisplayName": "Inset Point 1",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterName": "CIDroste",
    "CIAttributeFilterDisplayName": "Droste",
    "inputRotation": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDisplayName": "Rotation",
      "CIAttributeSliderMax": 6.283185307179586,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputStrands": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Strands",
      "CIAttributeMax": 10,
      "CIAttributeMin": -10,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": -2,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputPeriodicity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Periodicity",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputInsetPoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200],
      "CIAttributeDisplayName": "Inset Point 0",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputZoom": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Zoom",
      "CIAttributeMin": 0.01,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 0.01,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Edge Preserve Upsample Filter",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputLumaSigma": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.15,
      "CIAttributeDisplayName": "Luma Sigma",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIEdgePreserveUpsampleFilter",
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputSmallImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDisplayName": "Small Image"
    },
    "inputSpatialSigma": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDisplayName": "Spatial Sigma",
      "CIAttributeMax": 5,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Edges",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIEdges",
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The intensity of the edges. The larger the value, the higher the intensity.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Edge Work",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIEdgeWork",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDescription":
          "The thickness of the edges. The larger the value, the thicker the edges.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 20,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Eightfold Reflected Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIEightfoldReflectedTile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Exclusion Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIExclusionBlendMode"
  },
  {
    "inputEV": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.",
      "CIAttributeDisplayName": "EV",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": -10,
      "CIAttributeType": "CIAttributeTypeScalar"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIExposureAdjust"
  },
  {
    "CIAttributeFilterDisplayName": "False Color",
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111f270 (0.3 0 0 1) devicergb>",
      "CIAttributeDescription": "The first color to use for the color ramp.",
      "CIAttributeDisplayName": "Color 1",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIFalseColor",
    "inputColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111f240 (1 0.9 0.8 1) devicergb>",
      "CIAttributeDescription": "The second color to use for the color ramp.",
      "CIAttributeDisplayName": "Color 2",
      "CIAttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111ea00 (1 0.8 0.6 1) devicergb>",
      "CIAttributeDescription":
          "The color of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputStriationStrength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The strength of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Striation Strength",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 3,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "CIAttributeFilterName": "CIFlashTransition",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription": "The extent of the flash.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterDisplayName": "Flash",
    "inputFadeThreshold": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.85,
      "CIAttributeDescription":
          "The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.",
      "CIAttributeDisplayName": "Fade Threshold",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputStriationContrast": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.375,
      "CIAttributeDescription":
          "The contrast of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Striation Contrast",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputMaxStriationRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2.58,
      "CIAttributeDescription":
          "The radius of the light rays emanating from the flash.",
      "CIAttributeDisplayName": "Maximum Striation Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.570796326794897,
      "CIAttributeDescription":
          "The primary angle for the repeating reflected tile. Small values create thin diamond tiles, and higher values create fatter reflected tiles.",
      "CIAttributeDisplayName": "Acute Angle",
      "CIAttributeIdentity": 1.570796326794897,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Fourfold Reflected Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIFourfoldReflectedTile",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Fourfold Rotated Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIFourfoldRotatedTile",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputAcuteAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.570796326794897,
      "CIAttributeDescription":
          "The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.",
      "CIAttributeDisplayName": "Acute Angle",
      "CIAttributeIdentity": 1.570796326794897,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Fourfold Translated Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIFourfoldTranslatedTile",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Gabor Gradients",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIGaborGradients",
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "A gamma value to use to correct image brightness. The larger the value, the darker the result.",
      "CIAttributeDisplayName": "Power",
      "CIAttributeIdentity": 1,
      "CIAttributeSliderMax": 4,
      "CIAttributeSliderMin": 0.25,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIGammaAdjust"
  },
  {
    "CIAttributeFilterDisplayName": "Gaussian Blur",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIGaussianBlur",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Gaussian Gradient",
    "inputColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011187e0 (0 0 0 0) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001118810 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIGaussianGradient",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription": "The radius of the Gaussian distribution.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Glass Distortion",
    "inputTexture": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A texture to apply to the source image.",
      "CIAttributeDisplayName": "Texture",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 200,
      "CIAttributeDescription":
          "The amount of texturing of the resulting image. The larger the value, the greater the texturing.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 500,
      "CIAttributeSliderMin": 0.01,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIGlassDistortion",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Glass Lozenge",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIGlassLozenge",
    "inputPoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [350, 150],
      "CIAttributeDescription":
          "The x and y position that defines the center of the circle at the other end of the lozenge.",
      "CIAttributeDisplayName": "Point 1",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription":
          "The radius of the lozenge. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputRefraction": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.7,
      "CIAttributeDescription": "The refraction of the glass.",
      "CIAttributeDisplayName": "Refraction",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputPoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position that defines the center of the circle at one end of the lozenge.",
      "CIAttributeDisplayName": "Point 0",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Glide Reflected Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIGlideReflectedTile",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Gloom",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIGloom",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Guided Filter",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputGuideImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "A larger image to use as a guide.",
      "CIAttributeDisplayName": "A larger image to use as a guide."
    },
    "inputEpsilon": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.0001,
      "CIAttributeDisplayName": "Epsilon",
      "CIAttributeSliderMax": 0.1,
      "CIAttributeSliderMin": "1e-09",
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIGuidedFilter",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Hard Light Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIHardLightBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Hatched Screen",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIHatchedScreen",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between lines in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription": "The amount of sharpening to apply.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the hatched screen pattern",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Height Field From Mask",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIHeightFieldFromMask",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 10,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 300,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hexagonal Pixelate",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "The scale determines the size of the hexagons. Larger values result in larger hexagons.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIHexagonalPixellate",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Highlight and Shadow Adjust",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIHighlightShadowAdjust",
    "inputHighlightAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The amount of adjustment to the highlights of the image.",
      "CIAttributeDisplayName": "Highlight Amount",
      "CIAttributeIdentity": 1,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0.3,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Shadow Highlight Radius",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputShadowAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The amount of adjustment to the shadows of the image.",
      "CIAttributeDisplayName": "Shadow Amount",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": -1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": -1,
      "CIAttributeType": "CIAttributeTypeScalar"
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
    "CIAttributeFilterName": "CIHistogramDisplayFilter",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputLowLimit": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The fraction of the left portion of the histogram image to make darker",
      "CIAttributeDisplayName": "Low Limit",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputHighLimit": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The fraction of the right portion of the histogram image to make lighter.",
      "CIAttributeDisplayName": "High Limit",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription":
          "The height of the displayable histogram image.",
      "CIAttributeDisplayName": "Height",
      "CIAttributeMax": 200,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hole Distortion",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIHoleDistortion",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0.1,
      "CIAttributeMin": 0.01,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 0.01,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hue Adjust",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "An angle (in radians) to use to correct the hue of an image.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIHueAdjust",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
    "CIAttributeFilterName": "CIHueBlendMode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Hue\/Saturation\/Value Gradient",
    "inputColorSpace": {
      "CIAttributeClass": "NSObject",
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
    "CIAttributeFilterName": "CIHueSaturationValueGradient",
    "inputDither": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Dither",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 3,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputSoftness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Softness",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputValue": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Value",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Kaleidoscope",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of reflection.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIKaleidoscope",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputCount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The number of reflections in the pattern.",
      "CIAttributeDisplayName": "Count",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 64,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIKeystoneCorrectionCombined",
    "CIAttributeFilterDisplayName": "Combined Keystone Correction",
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The top right coordinate of the guide.",
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom right coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The top left coordinate of the guide.",
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom left coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIKeystoneCorrectionHorizontal",
    "CIAttributeFilterDisplayName": "Horizontal Keystone Correction",
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The top right coordinate of the guide.",
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom right coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The top left coordinate of the guide.",
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom left coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIKeystoneCorrectionVertical",
    "CIAttributeFilterDisplayName": "Vertical Keystone Correction",
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The top right coordinate of the guide.",
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom right coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The top left coordinate of the guide.",
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDescription": "The bottom left coordinate of the guide.",
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputMeans": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "Specifies the color seeds to use for k-means clustering, either passed as an image or an array of colors.",
      "CIAttributeDisplayName": "Means"
    },
    "inputCount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "Specifies how many k-means color clusters should be used.",
      "CIAttributeDisplayName": "Count",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 128,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeCount"
    },
    "CIAttributeFilterName": "CIKMeans",
    "CIAttributeFilterDisplayName": "KMeans",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "inputPasses": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "Specifies how many k-means passes should be performed.",
      "CIAttributeDisplayName": "Passes",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 20,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeCount"
    },
    "inputPerceptual": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies whether the k-means color palette should be computed in a perceptual color space.",
      "CIAttributeDisplayName": "Perceptual",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeBoolean"
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
      "CIAttributeClass": "CIImage",
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
    "CIAttributeFilterName": "CILabDeltaE",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
    "CIAttributeFilterName": "CILanczosScaleTransform",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1.5,
      "CIAttributeSliderMin": 0.05,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputAspectRatio": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The additional horizontal scaling factor to use on the image.",
      "CIAttributeDisplayName": "Aspect Ratio",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0.5,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputHaloWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 87,
      "CIAttributeDescription":
          "The width of the halo, from its inner radius to its outer radius.",
      "CIAttributeDisplayName": "Halo Width",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 300,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001106190 (1 0.9 0.8 1) devicergb>",
      "CIAttributeDescription": "A color.",
      "CIAttributeDisplayName": "Color"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The duration of the effect.",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputStriationStrength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the halo colors. Larger values are more intense.",
      "CIAttributeDisplayName": "Striation Strength",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 3,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CILenticularHaloGenerator",
    "CIAttributeFilterDisplayName": "Lenticular Halo",
    "inputHaloOverlap": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.77,
      "CIAttributeDisplayName": "Halo Overlap",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the halo.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputStriationContrast": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The contrast of the halo colors. Larger values are higher contrast.",
      "CIAttributeDisplayName": "Striation Contrast",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputHaloRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 70,
      "CIAttributeDescription": "The radius of the halo.",
      "CIAttributeDisplayName": "Halo Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Lighten Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILightenBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Light Tunnel Distortion",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILightTunnel",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "Center radius of the light tunnel.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 500,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputRotation": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Rotation angle of the light tunnel.",
      "CIAttributeDisplayName": "Rotation",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 1.570796326794897,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription": "Center of the light tunnel.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Burn Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILinearBurnBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Dodge Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILinearDodgeBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
    "CIAttributeFilterName": "CILinearGradient",
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001111a40 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "inputPoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200],
      "CIAttributeDescription":
          "The ending position of the gradient -- where the second color begins.",
      "CIAttributeDisplayName": "Point 1",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001111a70 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "inputPoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0],
      "CIAttributeDescription":
          "The starting position of the gradient -- where the first color begins.",
      "CIAttributeDisplayName": "Point 0",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Linear Light Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILinearLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILinearToSRGBToneCurve"
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputNRNoiseLevel": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.07000000000000001,
      "CIAttributeDescription":
          "The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.",
      "CIAttributeDisplayName": "NR Noise Level",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputContrast": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription":
          "The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).",
      "CIAttributeDisplayName": "Contrast",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0.25,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 0.25,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputThreshold": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription":
          "This value determines edge visibility. Larger values thin out the edges.",
      "CIAttributeDisplayName": "Threshold",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CILineOverlay",
    "CIAttributeFilterDisplayName": "Line Overlay",
    "inputEdgeIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.",
      "CIAttributeDisplayName": "Edge Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputNRSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.71,
      "CIAttributeDescription":
          "The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.",
      "CIAttributeDisplayName": "NR Sharpness",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryHalftoneEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CILineScreen",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 6,
      "CIAttributeDescription": "The distance between lines in the pattern.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 2,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription":
          "The sharpness of the pattern. The larger the value, the sharper the pattern.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the line screen pattern",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Luminosity Blend Mode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CILuminosityBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Masked Variable Blur",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIMaskedVariableBlur",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputMask": {
      "CIAttributeClass": "CIImage",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMaskToAlpha"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMaximumComponent"
  },
  {
    "CIAttributeFilterDisplayName": "Maximum",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMaximumCompositing"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMedianFilter"
  },
  {
    "inputMesh": {
      "CIAttributeClass": "NSArray",
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
    "CIAttributeFilterName": "CIMeshGenerator",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.5,
      "CIAttributeDescription": "The width of the effect.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMinimumComponent"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMinimumCompositing",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Mix",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The amount of the effect.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeIdentity": 1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMix"
  },
  {
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2,
      "CIAttributeDescription": "The angle of the mod hole pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 6.283185307179586,
      "CIAttributeSliderMin": -6.283185307179586,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputCompression": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.",
      "CIAttributeDisplayName": "Compression",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 100,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIModTransition",
    "CIAttributeFilterDisplayName": "Mod",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription":
          "The radius of the undistorted holes in the pattern.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Gradient",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMorphologyGradient",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The desired radius of the circular morphological operation to the image.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Maximum",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMorphologyMaximum",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The desired radius of the circular morphological operation to the image.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Minimum",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIMorphologyMinimum",
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The desired radius of the circular morphological operation to the image.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Rectangle Maximum",
    "inputHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Height",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 49,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeInteger"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIMorphologyRectangleMaximum",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 49,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeInteger"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Morphology Rectangle Minimum",
    "inputHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Height",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 49,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeInteger"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIMorphologyRectangleMinimum",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 49,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeInteger"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Motion Blur",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The angle of the motion determines which direction the blur smears.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIMotionBlur",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Multiply Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIMultiplyBlendMode"
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Multiply",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
    "CIAttributeFilterName": "CIMultiplyCompositing"
  },
  {
    "CIAttributeFilterDisplayName": "Nine Part Stretched",
    "inputGrowAmount": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [100, 100],
      "CIAttributeDisplayName": "Grow Amount",
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CINinePartStretched",
    "inputBreakpoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [50, 50],
      "CIAttributeDescription":
          "Lower left corner of image to retain before stretching begins.",
      "CIAttributeDisplayName": "Breakpoint0",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBreakpoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "Upper right corner of image to retain after stretching ends.",
      "CIAttributeDisplayName": "Breakpoint1",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Nine Part Tiled",
    "inputGrowAmount": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [100, 100],
      "CIAttributeDisplayName": "Grow Amount",
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputFlipYTiles": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "Indicates that Y-Axis flip should occur.",
      "CIAttributeDisplayName": "Flip Y Tiles",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeBoolean"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBreakpoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [50, 50],
      "CIAttributeDescription":
          "Lower left corner of image to retain before tiling begins.",
      "CIAttributeDisplayName": "Breakpoint0",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterName": "CINinePartTiled",
    "inputBreakpoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "Upper right corner of image to retain after tiling ends.",
      "CIAttributeDisplayName": "Breakpoint1",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Noise Reduction",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CINoiseReduction",
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.4,
      "CIAttributeDescription":
          "The sharpness of the final image. The larger the value, the sharper the result.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputNoiseLevel": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.02,
      "CIAttributeDescription":
          "The amount of noise reduction. The larger the value, the more noise reduction.",
      "CIAttributeDisplayName": "Noise Level",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Op Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of a tile.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2.8,
      "CIAttributeDescription":
          "The scale determines the number of tiles in the effect.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0.1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 65,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 65,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIOpTile",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Overlay Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIOverlayBlendMode"
  },
  {
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the curling page.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterName": "CIPageCurlTransition",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription": "The extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterDisplayName": "Page Curl",
    "inputShadingImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image that looks like a shaded sphere enclosed in a square image.",
      "CIAttributeDisplayName": "Shading Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputBacksideImage": {
      "CIAttributeClass": "CIImage",
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The radius of the curl.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0.01,
      "CIAttributeSliderMax": 400,
      "CIAttributeSliderMin": 0.01,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputShadowSize": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription": "The maximum size in pixels of the shadow.",
      "CIAttributeDisplayName": "Shadow Size",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputShadowAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.7,
      "CIAttributeDescription": "The strength of the shadow.",
      "CIAttributeDisplayName": "Shadow Amount",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the curling page.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputShadowExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription":
          "The rectagular portion of input image that will cast a shadow.",
      "CIAttributeDisplayName": "Shadow Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "CIAttributeFilterName": "CIPageCurlWithShadowTransition",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 0, 0],
      "CIAttributeDescription": "The extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterDisplayName": "Page Curl With Shadow",
    "inputBacksideImage": {
      "CIAttributeClass": "CIImage",
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The radius of the curl.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0.01,
      "CIAttributeSliderMax": 400,
      "CIAttributeSliderMin": 0.01,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputPerceptual": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies whether the color palette should be applied in a perceptual color space.",
      "CIAttributeDisplayName": "Perceptual",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeBoolean"
    },
    "inputPaletteImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The input color palette, obtained using \\U201cCIKMeans\\U201c filter.",
      "CIAttributeDisplayName": "Palette Image"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPaletteCentroid",
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "Specifies whether the color palette should be applied in a perceptual color space.",
      "CIAttributeDisplayName": "Perceptual",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeType": "CIAttributeTypeBoolean"
    },
    "CIAttributeFilterDisplayName": "Palettize",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPalettize",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputPaletteImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The input color palette, obtained using \\U201cCIKMeans\\U201c filter.",
      "CIAttributeDisplayName": "Palette Image"
    }
  },
  {
    "inputAcuteAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.570796326794897,
      "CIAttributeDescription":
          "The primary angle for the repeating parallelogram tile. Small values create thin diamond tiles, and higher values create fatter parallelogram tiles.",
      "CIAttributeDisplayName": "Acute Angle",
      "CIAttributeIdentity": 1.570796326794897,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIParallelogramTile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterDisplayName": "Parallelogram Tile",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputMinHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The minimum height of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Min Height",
      "CIAttributeMax": 283,
      "CIAttributeMin": 13,
      "CIAttributeSliderMax": 283,
      "CIAttributeSliderMin": 13
    },
    "inputAlwaysSpecifyCompaction": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Force compaction style to @YES or @NO. Set to nil for automatic.",
      "CIAttributeDisplayName": "Always Specify Compaction",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0
    },
    "inputDataColumns": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The number of data columns in the generated barcode",
      "CIAttributeDisplayName": "Data Columns",
      "CIAttributeMax": 30,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 30,
      "CIAttributeSliderMin": 1
    },
    "inputMinWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The minimum width of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Min Width",
      "CIAttributeMax": 583,
      "CIAttributeMin": 56,
      "CIAttributeSliderMax": 583,
      "CIAttributeSliderMin": 56
    },
    "inputMaxWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The maximum width of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Max Width",
      "CIAttributeMax": 583,
      "CIAttributeMin": 56,
      "CIAttributeSliderMax": 583,
      "CIAttributeSliderMin": 56
    },
    "CIAttributeFilterName": "CIPDF417BarcodeGenerator",
    "CIAttributeFilterDisplayName": "PDF417 Barcode Generator",
    "inputMessage": {
      "CIAttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the PDF417 Barcode",
      "CIAttributeDisplayName": "Message"
    },
    "inputCorrectionLevel": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The correction level ratio of the generated barcode",
      "CIAttributeDisplayName": "Correction Level",
      "CIAttributeMax": 8,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 8,
      "CIAttributeSliderMin": 0
    },
    "inputCompactionMode": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription": "The compaction mode of the generated barcode.",
      "CIAttributeDisplayName": "Compaction Mode",
      "CIAttributeMax": 3,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 3,
      "CIAttributeSliderMin": 0
    },
    "inputRows": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription": "The number of rows in the generated barcode",
      "CIAttributeDisplayName": "Rows",
      "CIAttributeMax": 90,
      "CIAttributeMin": 3,
      "CIAttributeSliderMax": 90,
      "CIAttributeSliderMin": 3
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputCompactStyle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Force a compact style Aztec code to @YES or @NO. Set to nil for automatic.",
      "CIAttributeDisplayName": "Compact Style",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0
    },
    "inputPreferredAspectRatio": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The preferred aspect ratio of the generated barcode",
      "CIAttributeDisplayName": "Preferred Aspect Ratio",
      "CIAttributeMax": 9223372036854775807,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 9223372036854775807,
      "CIAttributeSliderMin": 0
    },
    "inputMaxHeight": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "The maximum height of the generated barcode in pixels.",
      "CIAttributeDisplayName": "Max Height",
      "CIAttributeMax": 283,
      "CIAttributeMin": 13,
      "CIAttributeSliderMax": 283,
      "CIAttributeSliderMin": 13
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPersonSegmentation",
    "inputQualityLevel": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDescription":
          "Determines the size and quality of the resulting segmentation mask. The value can be a number where 0 is accurate, 1 is balanced, and 2 is fast.",
      "CIAttributeDisplayName": "Quality Level"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPerspectiveCorrection",
    "CIAttributeFilterDisplayName": "Perspective Correction",
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDescription":
          "The top right coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDescription":
          "The bottom right coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputCrop": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Crop",
      "CIAttributeType": "CIAttributeTypeBoolean"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDescription":
          "The top left coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDescription":
          "The bottom left coordinate to be perspective corrected.",
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputFocalLength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 28,
      "CIAttributeDescription":
          "35mm equivalent focal length of the input image.",
      "CIAttributeDisplayName": "Focal Length",
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CIPerspectiveRotate",
    "inputRoll": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Roll angle in radians.",
      "CIAttributeDisplayName": "Roll",
      "CIAttributeIdentity": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputPitch": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Pitch angle in radians.",
      "CIAttributeDisplayName": "Pitch",
      "CIAttributeIdentity": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputYaw": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "Yaw angle in radians.",
      "CIAttributeDisplayName": "Yaw",
      "CIAttributeIdentity": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Perspective Tile",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPerspectiveTile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDescription": "The bottom left coordinate of a tile.",
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDescription": "The top left coordinate of a tile.",
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDescription": "The bottom right coordinate of a tile.",
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDescription": "The top right coordinate of a tile.",
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Perspective Transform",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIPerspectiveTransform",
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDescription":
          "The bottom left coordinate to map the image to.",
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDescription": "The top left coordinate to map the image to.",
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDescription":
          "The bottom right coordinate to map the image to.",
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDescription": "The top right coordinate to map the image to.",
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPerspectiveTransformWithExtent",
    "CIAttributeFilterDisplayName": "Perspective Transform with Extent",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "inputBottomRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [548, 140],
      "CIAttributeDisplayName": "Bottom Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopRight": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [646, 507],
      "CIAttributeDisplayName": "Top Right",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputTopLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [118, 484],
      "CIAttributeDisplayName": "Top Left",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputBottomLeft": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [155, 153],
      "CIAttributeDisplayName": "Bottom Left",
      "CIAttributeType": "CIAttributeTypePosition"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectChrome"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Fade",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectFade",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectInstant"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectMono"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectNoir"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectProcess"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectTonal"
  },
  {
    "CIAttributeFilterDisplayName": "Photo Effect Transfer",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPhotoEffectTransfer",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIPinchDistortion",
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Pin Light Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPinLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Pixelate",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPixellate",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 8,
      "CIAttributeDescription":
          "The scale determines the size of the squares. Larger values result in larger squares.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Pointillize",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIPointillize",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The radius of the circles in the resulting pattern.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "QR Code Generator",
    "inputCorrectionLevel": {
      "CIAttributeClass": "NSString",
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
      "CIAttributeClass": "NSData",
      "CIAttributeDescription": "The message to encode in the QR Code",
      "CIAttributeDisplayName": "Message"
    },
    "CIAttributeFilterName": "CIQRCodeGenerator"
  },
  {
    "CIAttributeFilterDisplayName": "Radial Gradient",
    "inputRadius1": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription":
          "The radius of the ending circle to use in the gradient.",
      "CIAttributeDisplayName": "Radius 2",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputRadius0": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5,
      "CIAttributeDescription":
          "The radius of the starting circle to use in the gradient.",
      "CIAttributeDisplayName": "Radius 1",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001108a20 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "CIAttributeFilterName": "CIRadialGradient",
    "inputColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001108a80 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "CIAttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Random Generator",
    "CIAttributeFilterName": "CIRandomGenerator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ]
  },
  {
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of the ripple.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 1,
      "CIAttributeSliderMax": 300,
      "CIAttributeSliderMin": 10,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIRippleTransition",
    "CIAttributeFilterDisplayName": "Ripple",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "inputShadingImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "An image that looks like a shaded sphere enclosed in a square image.",
      "CIAttributeDisplayName": "Shading Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription":
          "A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": -50,
      "CIAttributeSliderMax": 50,
      "CIAttributeSliderMin": -50,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Rounded Rectangle Generator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIRoundedRectangleGenerator",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x600001109ce0 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 100, 100],
      "CIAttributeDescription":
          "A rectangle that defines the extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIRowAverage",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 640, 80],
      "CIAttributeDescription":
          "A rectangle that specifies the subregion of the image that you want to process.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Saliency Map Filter",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISaliencyMapFilter",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISampleNearest"
  },
  {
    "CIAttributeFilterDisplayName": "Saturation Blend Mode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISaturationBlendMode",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIScreenBlendMode"
  },
  {
    "CIAttributeFilterDisplayName": "Sepia Tone",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISepiaTone",
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
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputShadingImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.",
      "CIAttributeDisplayName": "Shading Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterDisplayName": "Shaded Material",
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 10,
      "CIAttributeDescription":
          "The scale of the effect. The higher the value, the more dramatic the effect.",
      "CIAttributeDisplayName": "Scale",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 0.5,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CIShadedMaterial"
  },
  {
    "CIAttributeFilterDisplayName": "Sharpen Luminance",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISharpenLuminance",
    "CIAttributeFilterCategories": [
      "CICategorySharpen",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.4,
      "CIAttributeDescription":
          "The amount of sharpening to apply. Larger values are sharper.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.69,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 20,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Sixfold Reflected Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISixfoldReflectedTile",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Sixfold Rotated Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISixfoldRotatedTile",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputPoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0],
      "CIAttributeDescription":
          "The starting position of the gradient -- where the first color begins.",
      "CIAttributeDisplayName": "Point 0",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterDisplayName": "Smooth Linear Gradient",
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fcc90 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The first color to use in the gradient.",
      "CIAttributeDisplayName": "Color 1",
      "CIAttributeType": "CIAttributeTypeColor"
    },
    "CIAttributeFilterName": "CISmoothLinearGradient",
    "CIAttributeFilterCategories": [
      "CICategoryGradient",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputPoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200],
      "CIAttributeDescription":
          "The ending position of the gradient -- where the second color begins.",
      "CIAttributeDisplayName": "Point 1",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fcbd0 (0 0 0 1) devicergb>",
      "CIAttributeDescription": "The second color to use in the gradient.",
      "CIAttributeDisplayName": "Color 2",
      "CIAttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Soft Light Blend Mode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISoftLightBlendMode",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISourceAtopCompositing",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISourceInCompositing",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISourceOutCompositing",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISourceOverCompositing",
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
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6610 (0.5255 0.3059 0.3451 1) devicergb>",
      "CIAttributeDescription":
          "The center value of the second color range to replace.",
      "CIAttributeDisplayName": "Center Color 2"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputCloseness2": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.15,
      "CIAttributeDescription":
          "A value that indicates how close the second color must match before it is replaced.",
      "CIAttributeDisplayName": "Closeness 2",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputContrast1": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.98,
      "CIAttributeDescription": "The contrast of the first replacement color.",
      "CIAttributeDisplayName": "Contrast 1",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputReplacementColor2": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6640 (0.9137 0.5608 0.5059 1) devicergb>",
      "CIAttributeDescription":
          "A replacement color for the second color range.",
      "CIAttributeDisplayName": "Replacement Color 2"
    },
    "inputCenterColor1": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6580 (0.0784 0.0627 0.0706 1) devicergb>",
      "CIAttributeDescription":
          "The center value of the first color range to replace.",
      "CIAttributeDisplayName": "Center Color 1"
    },
    "inputContrast3": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.99,
      "CIAttributeDescription": "The contrast of the third replacement color.",
      "CIAttributeDisplayName": "Contrast 3",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCloseness1": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.22,
      "CIAttributeDescription":
          "A value that indicates how close the first color must match before it is replaced.",
      "CIAttributeDisplayName": "Closeness 1",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterDisplayName": "Spot Color",
    "CIAttributeFilterName": "CISpotColor",
    "inputContrast2": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.98,
      "CIAttributeDescription": "The contrast of the second replacement color.",
      "CIAttributeDisplayName": "Contrast 2",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputReplacementColor1": {
      "CIAttributeClass": "CIColor",
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
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f6670 (0.9216 0.4549 0.3333 1) devicergb>",
      "CIAttributeDescription":
          "The center value of the third color range to replace.",
      "CIAttributeDisplayName": "Center Color 3"
    },
    "inputCloseness3": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "A value that indicates how close the third color must match before it is replaced.",
      "CIAttributeDisplayName": "Closeness 3",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 0.5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputReplacementColor3": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault":
          "<CIColor 0x6000011f66a0 (0.9098 0.7529 0.6078 1) devicergb>",
      "CIAttributeDescription":
          "A replacement color for the third color range.",
      "CIAttributeDisplayName": "Replacement Color 3"
    }
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputLightPointsAt": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [200, 200, 0],
      "CIAttributeDescription":
          "The x and y position that the spotlight points at.",
      "CIAttributeDisplayName": "Light Points At",
      "CIAttributeType": "CIAttributeTypePosition3"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000110ee50 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The color of the spotlight.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputConcentration": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.1,
      "CIAttributeDescription":
          "The spotlight size. The smaller the value, the more tightly focused the light beam.",
      "CIAttributeDisplayName": "Concentration",
      "CIAttributeIdentity": 20,
      "CIAttributeMin": 0.001,
      "CIAttributeSliderMax": 1.5,
      "CIAttributeSliderMin": 0.001,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CISpotLight",
    "CIAttributeFilterDisplayName": "Spot Light",
    "inputBrightness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 3,
      "CIAttributeDescription": "The brightness of the spotlight.",
      "CIAttributeDisplayName": "Brightness",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryStylize",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputLightPosition": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [400, 600, 150],
      "CIAttributeDescription": "The x and y position of the spotlight.",
      "CIAttributeDisplayName": "Light Position",
      "CIAttributeType": "CIAttributeTypePosition3"
    }
  },
  {
    "CIAttributeFilterDisplayName": "sRGB Tone Curve to Linear",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISRGBToneCurveToLinear",
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
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fd140 (1 0.8 0.6 1) devicergb>",
      "CIAttributeDescription":
          "The color to use for the outer shell of the circular star.",
      "CIAttributeDisplayName": "Color"
    },
    "inputCrossScale": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 15,
      "CIAttributeDescription": "The size of the cross pattern.",
      "CIAttributeDisplayName": "Cross Scale",
      "CIAttributeIdentity": 15,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCrossWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2.5,
      "CIAttributeDescription": "The width of the cross pattern.",
      "CIAttributeDisplayName": "Cross Width",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0.5,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterDisplayName": "Star Shine",
    "CIAttributeFilterName": "CIStarShineGenerator",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the star.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputCrossOpacity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": -2,
      "CIAttributeDescription": "The opacity of the cross pattern.",
      "CIAttributeDisplayName": "Cross Opacity",
      "CIAttributeIdentity": -2,
      "CIAttributeMin": -8,
      "CIAttributeSliderMax": 0,
      "CIAttributeSliderMin": -8,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCrossAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.6,
      "CIAttributeDescription": "The angle of the cross pattern.",
      "CIAttributeDisplayName": "Cross Angle",
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 50,
      "CIAttributeDescription": "The radius of the star.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 300,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputEpsilon": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": -2,
      "CIAttributeDescription": "The length of the cross spikes.",
      "CIAttributeDisplayName": "Epsilon",
      "CIAttributeIdentity": -2,
      "CIAttributeMin": -8,
      "CIAttributeSliderMax": 0,
      "CIAttributeSliderMin": -8,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Straighten",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "An angle in radians.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGeometryAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIStraightenFilter"
  },
  {
    "CIAttributeFilterDisplayName": "Stretch Crop",
    "inputCenterStretchAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.25,
      "CIAttributeDescription":
          "Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio. If 1 then the image is stretched uniformly.",
      "CIAttributeDisplayName": "Center Stretch Amount",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIStretchCrop",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputCropAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.25,
      "CIAttributeDescription":
          "Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used. If 1 then only cropping is used.",
      "CIAttributeDisplayName": "Crop Amount",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputSize": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [1280, 720],
      "CIAttributeDescription": "The size in pixels of the output image.",
      "CIAttributeDisplayName": "Size",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the stripe pattern.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterDisplayName": "Stripes",
    "inputColor0": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011f7270 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color to use for the odd stripes.",
      "CIAttributeDisplayName": "Color 1"
    },
    "CIAttributeFilterName": "CIStripesGenerator",
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputSharpness": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription":
          "The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.",
      "CIAttributeDisplayName": "Sharpness",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 80,
      "CIAttributeDescription": "The width of a stripe.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputColor1": {
      "CIAttributeClass": "CIColor",
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
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CISubtractBlendMode",
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The duration of the effect.",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011f7c00 (1 0.5 0 1) devicergb>",
      "CIAttributeDescription": "The color of the sun.",
      "CIAttributeDisplayName": "Color"
    },
    "inputStriationStrength": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the sunbeams. Higher values result in more intensity.",
      "CIAttributeDisplayName": "Striation Strength",
      "CIAttributeIdentity": 0.5,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 3,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "CIAttributeFilterName": "CISunbeamsGenerator",
    "CIAttributeFilterDisplayName": "Sunbeams",
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the sunbeam pattern",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "inputStriationContrast": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.375,
      "CIAttributeDescription":
          "The contrast of the sunbeams. Higher values result in more contrast.",
      "CIAttributeDisplayName": "Striation Contrast",
      "CIAttributeIdentity": 1.375,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputSunRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 40,
      "CIAttributeDescription": "The radius of the sun.",
      "CIAttributeDisplayName": "Sun Radius",
      "CIAttributeIdentity": 40,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputMaxStriationRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2.58,
      "CIAttributeDescription": "The radius of the sunbeams.",
      "CIAttributeDisplayName": "Maximum Striation Radius",
      "CIAttributeIdentity": 2.58,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 10,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputTime": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription":
          "The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).",
      "CIAttributeDisplayName": "Time",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeTime"
    },
    "inputTargetImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The target image for a transition.",
      "CIAttributeDisplayName": "Target Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x60000111bf90 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "The color of the swipe.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeType": "CIAttributeTypeOpaqueColor"
    },
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle of the swipe.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription": "The width of the swipe",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 0.1,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0.1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterName": "CISwipeTransition",
    "CIAttributeFilterDisplayName": "Swipe",
    "inputExtent": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0, 300, 300],
      "CIAttributeDescription": "The extent of the effect.",
      "CIAttributeDisplayName": "Extent",
      "CIAttributeType": "CIAttributeTypeRectangle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTransition",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputOpacity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The opacity of the swipe.",
      "CIAttributeDisplayName": "Opacity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Temperature and Tint",
    "inputTargetNeutral": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [6500, 0],
      "CIAttributeDisplayName": "Target Neutral",
      "CIAttributeIdentity": [6500, 0],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputNeutral": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [6500, 0],
      "CIAttributeDisplayName": "Neutral",
      "CIAttributeIdentity": [6500, 0],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CITemperatureAndTint"
  },
  {
    "CIAttributeFilterDisplayName": "Text Image Generator",
    "inputFontName": {
      "CIAttributeClass": "NSString",
      "CIAttributeDefault": "HelveticaNeue",
      "CIAttributeDisplayName": "Font Name"
    },
    "CIAttributeFilterCategories": [
      "CICategoryGenerator",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CITextImageGenerator",
    "inputScaleFactor": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDisplayName": "Scale Factor",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 4,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputText": {
      "CIAttributeClass": "NSString",
      "CIAttributeDisplayName": "Text"
    },
    "inputFontSize": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 12,
      "CIAttributeDisplayName": "Font Size",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 128,
      "CIAttributeSliderMin": 9,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Thermal",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIThermal"
  },
  {
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputPoint0": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0, 0],
      "CIAttributeDisplayName": "Point 0",
      "CIAttributeIdentity": [0, 0],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint1": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0.25, 0.25],
      "CIAttributeDisplayName": "Point 1",
      "CIAttributeIdentity": [0.25, 0.25],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint2": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0.5, 0.5],
      "CIAttributeDisplayName": "Point 2",
      "CIAttributeIdentity": [0.5, 0.5],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint3": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [0.75, 0.75],
      "CIAttributeDisplayName": "Point 3",
      "CIAttributeIdentity": [0.75, 0.75],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "inputPoint4": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [1, 1],
      "CIAttributeDisplayName": "Point 4",
      "CIAttributeIdentity": [1, 1],
      "CIAttributeType": "CIAttributeTypeOffset"
    },
    "CIAttributeFilterDisplayName": "Tone Curve",
    "CIAttributeFilterName": "CIToneCurve",
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
    "CIAttributeFilterName": "CITorusLensDistortion",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 80,
      "CIAttributeDescription": "The width of the ring.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 160,
      "CIAttributeDescription": "The outer radius of the torus.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 500,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputRefraction": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1.7,
      "CIAttributeDescription": "The refraction of the glass.",
      "CIAttributeDisplayName": "Refraction",
      "CIAttributeIdentity": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 5,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the torus.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Triangle Kaleidoscope",
    "inputPoint": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the triangular area in the input image.",
      "CIAttributeDisplayName": "Point",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CITriangleKaleidoscope",
    "inputSize": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 700,
      "CIAttributeDescription": "The size in pixels of the triangle.",
      "CIAttributeDisplayName": "Size",
      "CIAttributeSliderMax": 1000,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputRotation": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 5.924285296593801,
      "CIAttributeDescription": "Rotation angle of the triangle.",
      "CIAttributeDisplayName": "Rotation",
      "CIAttributeSliderMax": 6.283185307179586,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputDecay": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.85,
      "CIAttributeDescription":
          "The decay determines how fast the color fades from the center triangle.",
      "CIAttributeDisplayName": "Decay",
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Triangle Tile",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CITriangleTile",
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The angle (in radians) of the tiled pattern.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 3.141592653589793,
      "CIAttributeSliderMin": -3.141592653589793,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterDisplayName": "Twelvefold Reflected Tile",
    "CIAttributeFilterCategories": [
      "CICategoryTileEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CITwelvefoldReflectedTile",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputWidth": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 100,
      "CIAttributeDescription": "The width of a tile.",
      "CIAttributeDisplayName": "Width",
      "CIAttributeIdentity": 100,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": 1,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The x and y position to use as the center of the effect",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Twirl Distortion",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 3.141592653589793,
      "CIAttributeDescription":
          "The angle (in radians) of the twirl. Values can be positive or negative.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 12.56637061435917,
      "CIAttributeSliderMin": -12.56637061435917,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CITwirlDistortion",
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 300,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 500,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Unsharp Mask",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategorySharpen",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIUnsharpMask",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 2.5,
      "CIAttributeDescription":
          "The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 100,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDescription":
          "The intensity of the effect. The larger the value, the more contrast in the affected area.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Vibrance",
    "inputAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The amount to adjust the saturation.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": -1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": -1,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIVibrance"
  },
  {
    "CIAttributeFilterDisplayName": "Vignette",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIVignette",
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMax": 2,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0,
      "CIAttributeDescription": "The intensity of the effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": -1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": -1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    },
    "CIAttributeFilterDisplayName": "Vignette Effect",
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIVignetteEffect",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 150,
      "CIAttributeDescription": "The distance from the center of the effect.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 2000,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputFalloff": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 0.5,
      "CIAttributeDisplayName": "Falloff",
      "CIAttributeMax": 1,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeScalar"
    },
    "inputIntensity": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 1,
      "CIAttributeDescription": "The intensity of the effect.",
      "CIAttributeDisplayName": "Intensity",
      "CIAttributeIdentity": 0,
      "CIAttributeMax": 1,
      "CIAttributeMin": -1,
      "CIAttributeSliderMax": 1,
      "CIAttributeSliderMin": -1,
      "CIAttributeType": "CIAttributeTypeScalar"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Vivid Light Blend Mode",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterName": "CIVividLightBlendMode",
    "CIAttributeFilterCategories": [
      "CICategoryCompositeOperation",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "inputBackgroundImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription": "The image to use as a background image.",
      "CIAttributeDisplayName": "Background Image",
      "CIAttributeType": "CIAttributeTypeImage"
    }
  },
  {
    "CIAttributeFilterDisplayName": "Vortex Distortion",
    "inputAngle": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 56.54866776461628,
      "CIAttributeDescription": "The angle (in radians) of the vortex.",
      "CIAttributeDisplayName": "Angle",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 94.24777960769379,
      "CIAttributeSliderMin": -94.24777960769379,
      "CIAttributeType": "CIAttributeTypeAngle"
    },
    "CIAttributeFilterCategories": [
      "CICategoryDistortionEffect",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIVortexDistortion",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputRadius": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 300,
      "CIAttributeDescription":
          "The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.",
      "CIAttributeDisplayName": "Radius",
      "CIAttributeIdentity": 0,
      "CIAttributeMin": 0,
      "CIAttributeSliderMax": 800,
      "CIAttributeSliderMin": 0,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  },
  {
    "CIAttributeFilterDisplayName": "White Point Adjust",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorAdjustment",
      "CICategoryVideo",
      "CICategoryStillImage",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIWhitePointAdjust",
    "inputColor": {
      "CIAttributeClass": "CIColor",
      "CIAttributeDefault": "<CIColor 0x6000011fe220 (1 1 1 1) devicergb>",
      "CIAttributeDescription": "A color to use as the white point.",
      "CIAttributeDisplayName": "Color",
      "CIAttributeIdentity": "<CIColor 0x6000011fe280 (1 1 1 1) devicergb>",
      "CIAttributeType": "CIAttributeTypeColor"
    }
  },
  {
    "CIAttributeFilterDisplayName": "X-Ray",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "CIAttributeFilterCategories": [
      "CICategoryColorEffect",
      "CICategoryVideo",
      "CICategoryInterlaced",
      "CICategoryNonSquarePixels",
      "CICategoryStillImage",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIXRay"
  },
  {
    "CIAttributeFilterDisplayName": "Zoom Blur",
    "inputAmount": {
      "CIAttributeClass": "NSNumber",
      "CIAttributeDefault": 20,
      "CIAttributeDescription":
          "The zoom-in amount. Larger values result in more zooming in.",
      "CIAttributeDisplayName": "Amount",
      "CIAttributeIdentity": 0,
      "CIAttributeSliderMax": 200,
      "CIAttributeSliderMin": -200,
      "CIAttributeType": "CIAttributeTypeDistance"
    },
    "CIAttributeFilterCategories": [
      "CICategoryBlur",
      "CICategoryStillImage",
      "CICategoryVideo",
      "CICategoryBuiltIn"
    ],
    "CIAttributeFilterName": "CIZoomBlur",
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
    "inputCenter": {
      "CIAttributeClass": "CIVector",
      "CIAttributeDefault": [150, 150],
      "CIAttributeDescription":
          "The center of the effect as x and y coordinates.",
      "CIAttributeDisplayName": "Center",
      "CIAttributeType": "CIAttributeTypePosition"
    }
  }
];
