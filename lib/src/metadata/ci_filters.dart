part of native_filters;

const List<Map<String, dynamic>> _kCoreImageFilters = [
  {
    'AttributeFilterName': 'GPULookup',
    'AttributeFilterDisplayName': 'GPULookup',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
      'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputIntensity': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
    },
    'inputSize': {
      'AttributeClass': 'float',
      'AttributeDefault': 8.0,
    },
    'inputRows': {
      'AttributeClass': 'float',
      'AttributeDefault': 64.0,
    },
    'inputColumns': {
      'AttributeClass': 'float',
      'AttributeDefault': 8.0,
    },
    'inputImage2': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The LUT image',
      'CIAttributeDisplayName': 'Image2'
    },
  },
  {
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The duration of the effect.',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputNumberOfFolds': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 3,
      'CIAttributeDisplayName': 'Number of Folds',
      'CIAttributeMax': 50,
      'CIAttributeMin': 1,
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAccordionFoldTransition',
    'AttributeFilterDisplayName': 'Accordion Fold Transition',
    'inputBottomHeight': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bottom Height',
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputFoldShadowAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.1,
      'CIAttributeDisplayName': 'Fold Shadow Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Addition',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIAdditionCompositing',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Affine Clamp',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAffineClamp',
    'inputTransform': {
      'AttributeClass': 'NSValue',
      'AttributeDefault': 'CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}',
      'CIAttributeDescription': 'The transform to apply to the image.',
      'CIAttributeDisplayName': 'Transform',
    }
  },
  {
    'AttributeFilterDisplayName': 'Affine Tile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAffineTile',
    'inputTransform': {
      'AttributeClass': 'NSValue',
      'AttributeDefault': 'CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}',
      'CIAttributeDescription': 'The transform to apply to the image.',
      'CIAttributeDisplayName': 'Transform',
    }
  },
  {
    'AttributeFilterDisplayName': 'Affine Transform',
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAffineTransform',
    'inputTransform': {
      'AttributeClass': 'NSValue',
      'AttributeDefault': 'CGAffineTransform: {{1, 0, 0, 1}, {0, 0}}',
      'CIAttributeDescription': 'A transform to apply to the image.',
      'CIAttributeDisplayName': 'Transform',
      'AttributeType': 'CIAttributeTypeTransform'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Average',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIAreaAverage',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Histogram',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAreaHistogram',
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The scale value to use for the histogram values. If the scale is 1.0, then the bins in the resulting image will add up to 1.0.',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 64,
      'CIAttributeDescription':
          'The number of bins for the histogram. This value will determine the width of the output image.',
      'CIAttributeDisplayName': 'Count',
      'CIAttributeMax': 2048,
      'CIAttributeMin': 1,
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 10,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that, after intersection with the image extent, specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Maximum',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIAreaMaximum',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Maximum Alpha',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIAreaMaximumAlpha',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Minimum',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIAreaMinimum',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Minimum Alpha',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAreaMinimumAlpha',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Min and Max',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAreaMinMax',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Area Min and Max Red',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIAreaMinMaxRed',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Attributed Text Image Generator',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputText': {
      'AttributeClass': 'NSAttributedString',
      'CIAttributeDisplayName': 'Text'
    },
    'AttributeFilterName': 'CIAttributedTextImageGenerator',
    'inputScaleFactor': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Scale Factor',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 4,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputCompactStyle': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'Force a compact style Aztec code to @YES or @NO. Set to nil for automatic.',
      'CIAttributeDisplayName': 'Compact Style',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0
    },
    'AttributeFilterDisplayName': 'Aztec Code Generator',
    'inputCorrectionLevel': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 23,
      'CIAttributeDescription': 'Aztec error correction value between 5 and 95',
      'CIAttributeDisplayName': 'Correction Level',
      'AttributeSliderMax': 95,
      'AttributeSliderMin': 5
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIAztecCodeGenerator',
    'inputLayers': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'Aztec layers value between 1 and 32. Set to nil for automatic.',
      'CIAttributeDisplayName': 'Layers',
      'AttributeSliderMax': 32,
      'AttributeSliderMin': 1
    },
    'inputMessage': {
      'AttributeClass': 'NSData',
      'CIAttributeDescription': 'The message to encode in the Aztec Barcode',
      'CIAttributeDisplayName': 'Message'
    }
  },
  {
    'AttributeFilterDisplayName': 'Barcode Generator',
    'inputBarcodeDescriptor': {
      'AttributeClass': 'CIBarcodeDescriptor',
      'CIAttributeDescription':
          'The CIBarcodeDescription object to generate an image for.',
      'CIAttributeDisplayName': 'Barcode Descriptor'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBarcodeGenerator'
  },
  {
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 3.141592653589793,
      'CIAttributeDescription': 'The angle (in radians) of the bars.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 6.283185307179586,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 30,
      'CIAttributeDescription': 'The width of each bar.',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 300,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIBarsSwipeTransition',
    'AttributeFilterDisplayName': 'Bars Swipe Transition',
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBarOffset': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription': 'The offset of one bar with respect to another',
      'CIAttributeDisplayName': 'Bar Offset',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputB': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'Specifies the value of B to use for the cubic resampling function.',
      'CIAttributeDisplayName': 'B',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterDisplayName': 'Bicubic Scale Transform',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.',
      'CIAttributeDisplayName': 'Scale',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0.05,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputC': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.75,
      'CIAttributeDescription':
          'Specifies the value of C to use for the cubic resampling function.',
      'CIAttributeDisplayName': 'C',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIBicubicScaleTransform',
    'inputAspectRatio': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The additional horizontal scaling factor to use on the image.',
      'CIAttributeDisplayName': 'Aspect Ratio',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0.5,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputMaskImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A masking image.',
      'CIAttributeDisplayName': 'Mask Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Blend With Alpha Mask',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBlendWithAlphaMask',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Blend With Blue Mask',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputMaskImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A masking image.',
      'CIAttributeDisplayName': 'Mask Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIBlendWithBlueMask',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputMaskImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'A grayscale mask. When a mask value is 0.0, the result is the background. When the mask value is 1.0, the result is the image.',
      'CIAttributeDisplayName': 'Mask Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Blend With Mask',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBlendWithMask'
  },
  {
    'inputMaskImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A masking image.',
      'CIAttributeDisplayName': 'Mask Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Blend With Red Mask',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBlendWithRedMask'
  },
  {
    'AttributeFilterDisplayName': 'Bloom',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBloom',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Bokeh Blur',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBokehBlur',
    'inputSoftness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Softness',
      'CIAttributeMax': 10,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 0.4,
      'AttributeSliderMin': 0.25,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRingSize': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.1,
      'CIAttributeDescription':
          'The size of extra emphasis at the ring of the bokeh',
      'CIAttributeDisplayName': 'Ring Size',
      'AttributeSliderMax': 0.2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 20,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.',
      'CIAttributeDisplayName': 'Radius',
      'CIAttributeMax': 500,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputRingAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The amount of extra emphasis at the ring of the bokeh.',
      'CIAttributeDisplayName': 'Ring Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Box Blur',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIBoxBlur',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Bump Distortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump, negative values create an inward bump.',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': -1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIBumpDistortion',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 600,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Bump Distortion Linear',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The angle (in radians) of the line around which the distortion occurs.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 6.283185307179586,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription': 'The scale of the effect.',
      'CIAttributeDisplayName': 'Scale',
      'CIAttributeMin': -1,
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIBumpDistortionLinear',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 600,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Lens Correction for AVC',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CICameraCalibrationLensCorrection',
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputUseInverseLookUpTable': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'Boolean value used to select the Look Up Table from the AVCameraCalibrationData',
      'CIAttributeDisplayName': 'Use Inverse Look Up Table'
    },
    'inputAVCameraCalibrationData': {
      'AttributeClass': 'AVCameraCalibrationData',
      'CIAttributeDescription':
          'AVCameraCalibrationData for the correction. Will be set from the inputImage if available and can be overridden here.',
      'CIAttributeDisplayName':
          'Calibration Data object of type AVCameraCalibrationData'
    }
  },
  {
    'AttributeFilterDisplayName': 'Checkerboard',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011395c0 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'A color to use for the first set of squares.',
      'CIAttributeDisplayName': 'Color 1'
    },
    'AttributeFilterName': 'CICheckerboardGenerator',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 80,
      'CIAttributeDescription': 'The width of the squares in the pattern.',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011395f0 (0 0 0 1) devicergb>',
      'CIAttributeDescription': 'A color to use for the second set of squares.',
      'CIAttributeDisplayName': 'Color 2'
    }
  },
  {
    'AttributeFilterDisplayName': 'Circle Splash Distortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CICircleSplashDistortion',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 150,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Circular Screen',
    'AttributeFilterCategories': [
      'CICategoryHalftoneEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CICircularScreen',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription':
          'The distance between each circle in the pattern.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.7,
      'CIAttributeDescription':
          'The sharpness of the circles. The larger the value, the sharper the circles.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the circular screen pattern',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Circular Wrap Distortion',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the effect.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CICircularWrap',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 150,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 600,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Clamp',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIClamp',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that defines the extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.7,
      'CIAttributeDescription':
          'The sharpness of the pattern. The larger the value, the sharper the pattern.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance',
      'CIUIParameterSet': ':CIUISetBasic'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription': 'The distance between dots in the pattern.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': -2,
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeDistance',
      'CIUIParameterSet': ':CIUISetBasic'
    },
    'inputUCR': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The under color removal value. The value can vary from 0.0 to 1.0. ',
      'CIAttributeDisplayName': 'Under Color Removal',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar',
      'CIUIParameterSet': ':CIUISetIntermediate'
    },
    'inputGCR': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The gray component replacement value. The value can vary from 0.0 (none) to 1.0.',
      'CIAttributeDisplayName': 'Gray Component Replacement',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar',
      'CIUIParameterSet': ':CIUISetIntermediate'
    },
    'AttributeFilterName': 'CICMYKHalftone',
    'AttributeFilterDisplayName': 'CMYK Halftone',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the halftone pattern',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryHalftoneEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputQuietSpace': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The number of empty white pixels that should surround the barcode.',
      'CIAttributeDisplayName': 'Quiet Space',
      'CIAttributeMax': 100,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 20,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterDisplayName': 'Code 128 Barcode Generator',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CICode128BarcodeGenerator',
    'inputMessage': {
      'AttributeClass': 'NSData',
      'CIAttributeDescription': 'The message to encode in the Code 128 Barcode',
      'CIAttributeDisplayName': 'Message'
    },
    'inputBarcodeHeight': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 32,
      'CIAttributeDescription':
          'The height of the generated barcode in pixels.',
      'CIAttributeDisplayName': 'Barcode Height',
      'CIAttributeMax': 500,
      'CIAttributeMin': 1,
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputImage2': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The second input image for differencing.',
      'CIAttributeDisplayName': 'Image2'
    },
    'AttributeFilterDisplayName': 'Color Absolute Difference',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorAbsoluteDifference',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Color Blend Mode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorBlendMode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Burn Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorBurnBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Clamp',
    'inputMaxComponents': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [1, 1, 1, 1],
      'CIAttributeDescription': 'Higher clamping values',
      'CIAttributeDisplayName': 'Max Components'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorClamp',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputMinComponents': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0],
      'CIAttributeDescription': 'Lower clamping values',
      'CIAttributeDisplayName': 'Min Components'
    }
  },
  {
    'inputBrightness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The amount of brightness to apply. The larger the value, the brighter the result.',
      'CIAttributeDisplayName': 'Brightness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': -1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterDisplayName': 'Color Controls',
    'inputSaturation': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The amount of saturation to apply. The larger the value, the more saturated the result.',
      'CIAttributeDisplayName': 'Saturation',
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorControls',
    'inputContrast': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The amount of contrast to apply. The larger the value, the more contrast in the resulting image.',
      'CIAttributeDisplayName': 'Contrast',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 4,
      'AttributeSliderMin': 0.25,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputRedCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [1, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for red channel',
      'CIAttributeDisplayName': 'Red Coefficients',
    },
    'AttributeFilterDisplayName': 'Color Cross Polynomial',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorCrossPolynomial',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputGreenCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for green channel',
      'CIAttributeDisplayName': 'Green Coefficients',
    },
    'inputBlueCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 1, 0, 0, 0, 0, 0, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for blue channel',
      'CIAttributeDisplayName': 'Blue Coefficients',
    }
  },
  {
    'inputCubeDimension': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2,
      'CIAttributeDisplayName': 'Cube Dimension',
      'CIAttributeMax': 64,
      'CIAttributeMin': 2,
      'AttributeType': 'CIAttributeTypeCount'
    },
    'AttributeFilterDisplayName': 'Color Cube',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorCube',
    'inputCubeData': {
      'AttributeClass': 'NSData',
      'AttributeDefault': {
        'length': 128,
        'bytes': '0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f'
      },
      'CIAttributeDescription':
          'Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.',
      'CIAttributeDisplayName': 'Cube Data',
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputCubeDimension': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2,
      'CIAttributeDisplayName': 'Cube Dimension',
      'CIAttributeMax': 64,
      'CIAttributeMin': 2,
      'AttributeType': 'CIAttributeTypeCount'
    },
    'inputMaskImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A masking image.',
      'CIAttributeDisplayName': 'Mask Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputCube0Data': {
      'AttributeClass': 'NSData',
      'AttributeDefault': {
        'length': 128,
        'bytes': '0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f'
      },
      'CIAttributeDescription':
          'Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.',
      'CIAttributeDisplayName': 'Cube 0 Data',
    },
    'AttributeFilterName': 'CIColorCubesMixedWithMask',
    'AttributeFilterDisplayName': 'Color Cubes Mixed With Mask',
    'inputCube1Data': {
      'AttributeClass': 'NSData',
      'AttributeDefault': {
        'length': 128,
        'bytes': '0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f'
      },
      'CIAttributeDescription':
          'Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.',
      'CIAttributeDisplayName': 'Cube 1 Data',
    },
    'inputColorSpace': {
      'AttributeClass': 'NSObject',
      'CIAttributeDisplayName': 'Color Space'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputCubeDimension': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2,
      'CIAttributeDisplayName': 'Cube Dimension',
      'CIAttributeMax': 64,
      'CIAttributeMin': 2,
      'AttributeType': 'CIAttributeTypeCount'
    },
    'AttributeFilterDisplayName': 'Color Cube with ColorSpace',
    'inputCubeData': {
      'AttributeClass': 'NSData',
      'AttributeDefault': {
        'length': 128,
        'bytes': '0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f'
      },
      'CIAttributeDescription':
          'Data containing a 3-dimensional color table of floating-point premultiplied RGBA values. The cells are organized in a standard ordering. The columns and rows of the data are indexed by red and green, respectively. Each data plane is followed by the next higher plane in the data, with planes indexed by blue.',
      'CIAttributeDisplayName': 'Cube Data',
    },
    'inputColorSpace': {
      'AttributeClass': 'NSObject',
      'CIAttributeDisplayName': 'Color Space'
    },
    'AttributeFilterName': 'CIColorCubeWithColorSpace',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Color Curves',
    'inputColorSpace': {
      'AttributeClass': 'NSObject',
      'CIAttributeDisplayName': 'Color Space'
    },
    'inputCurvesDomain': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1],
      'CIAttributeDisplayName': 'Curves Domain'
    },
    'AttributeFilterName': 'CIColorCurves',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputCurvesData': {
      'AttributeClass': 'NSData',
      'AttributeDefault': {
        'length': 128,
        'bytes': '0x00000000 00000000 00000000 0000803f ... 0000803f 0000803f'
      },
      'CIAttributeDisplayName': 'Curves Data'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Dodge Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorDodgeBlendMode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Invert',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorInvert'
  },
  {
    'AttributeFilterDisplayName': 'Color Map',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorMap',
    'inputGradientImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image data from this image transforms the source image values.',
      'CIAttributeDisplayName': 'Gradient Image',
      'AttributeType': 'CIAttributeTypeGradient'
    }
  },
  {
    'inputGVector': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1, 0, 0],
      'CIAttributeDescription':
          'The amount of green to multiply the source color values by.',
      'CIAttributeDisplayName': 'Green Vector',
    },
    'inputBiasVector': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0],
      'CIAttributeDescription':
          'A vector that\\U2019s added to each color component.',
      'CIAttributeDisplayName': 'Bias Vector',
    },
    'inputRVector': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [1, 0, 0, 0],
      'CIAttributeDescription':
          'The amount of red to multiply the source color values by.',
      'CIAttributeDisplayName': 'Red Vector',
    },
    'AttributeFilterDisplayName': 'Color Matrix',
    'AttributeFilterName': 'CIColorMatrix',
    'inputAVector': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 1],
      'CIAttributeDescription':
          'The amount of alpha to multiply the source color values by.',
      'CIAttributeDisplayName': 'Alpha Vector',
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBVector': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 1, 0],
      'CIAttributeDescription':
          'The amount of blue to multiply the source color values by.',
      'CIAttributeDisplayName': 'Blue Vector',
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Monochrome',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorMonochrome',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001126c70 (0.6 0.45 0.3 1) devicergb>',
      'CIAttributeDescription': 'The monochrome color to apply to the image.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeOpaqueColor'
    },
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The intensity of the monochrome effect. A value of 1.0 creates a monochrome image using the supplied color. A value of 0.0 has no effect on the image.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputRedCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for red channel',
      'CIAttributeDisplayName': 'Red Coefficients',
    },
    'AttributeFilterDisplayName': 'Color Polynomial',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorPolynomial',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputGreenCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for green channel',
      'CIAttributeDisplayName': 'Green Coefficients',
    },
    'inputAlphaCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for alpha channel',
      'CIAttributeDisplayName': 'Alpha Coefficients',
    },
    'inputBlueCoefficients': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 1, 0, 0],
      'CIAttributeDescription': 'Polynomial coefficients for blue channel',
      'CIAttributeDisplayName': 'Blue Coefficients',
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Posterize',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColorPosterize',
    'inputLevels': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription':
          'The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.',
      'CIAttributeDisplayName': 'Levels',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 30,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Threshold',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorThreshold',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputThreshold': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDisplayName': 'Threshold',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Color Threshold Otsu',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIColorThresholdOtsu',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Column Average',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIColumnAverage',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Comic Effect',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIComicEffect',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Constant Color',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIConstantColorGenerator',
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x60000113f870 (1 0 0 1) devicergb>',
      'CIAttributeDescription': 'The color to generate.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeColor'
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0, 1, 0, 0, 0, 0],
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': '3 by 3 Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolution3X3',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [
        0,
        0,
        0,
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
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': '5 by 5 Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolution5X5',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
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
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': '7 by 7 Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolution7X7',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0, 1, 0, 0, 0, 0],
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': 'Horizontal 9 Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolution9Horizontal',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0, 1, 0, 0, 0, 0],
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': 'Vertical 9 Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolution9Vertical',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0, 1, 0, 0, 0, 0],
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': '3 by 3 RGB Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolutionRGB3X3',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [
        0,
        0,
        0,
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
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': '5 by 5 RGB Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolutionRGB5X5',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
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
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': '7 by 7 RGB Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolutionRGB7X7',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0, 1, 0, 0, 0, 0],
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': 'Horizontal 9 RGB Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolutionRGB9Horizontal',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputWeights': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0, 1, 0, 0, 0, 0],
      'CIAttributeDisplayName': 'Weights',
    },
    'AttributeFilterDisplayName': 'Vertical 9 RGB Convolution',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIConvolutionRGB9Vertical',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBias': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Bias',
    }
  },
  {
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001133180 (0.6 1 0.8 1) devicergb>',
      'CIAttributeDescription': 'The color of the copier light.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeOpaqueColor'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the copier light.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 6.283185307179586,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 200,
      'CIAttributeDescription': 'The width of the copier light. ',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 500,
      'AttributeSliderMin': 0.1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CICopyMachineTransition',
    'AttributeFilterDisplayName': 'Copy Machine',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 300, 300],
      'CIAttributeDescription':
          'A rectangle that defines the extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputOpacity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.3,
      'CIAttributeDescription':
          'The opacity of the copier light. A value of 0.0 is transparent. A value of 1.0 is opaque.',
      'CIAttributeDisplayName': 'Opacity',
      'AttributeSliderMax': 3,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'CoreML Model Filter',
    'AttributeFilterCategories': [
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryStylize'
    ],
    'AttributeFilterName': 'CICoreMLModelFilter',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputHeadIndex': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'A number to specify which output of a multi-head CoreML model should be used for applying effect on the image.',
      'CIAttributeDisplayName': 'Head Index',
      'CIAttributeMax': 10,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeInteger'
    },
    'inputModel': {
      'AttributeClass': 'MLModel',
      'CIAttributeDescription':
          'The CoreML model to be used for applying effect on the image.',
      'CIAttributeDisplayName': 'Model'
    },
    'inputSoftmaxNormalization': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'A boolean value to specify that Softmax normalization should be applied to the output of the model.',
      'CIAttributeDisplayName': 'Softmax Normalization',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeBoolean'
    }
  },
  {
    'AttributeFilterDisplayName': 'Crop',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputRectangle': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [
        -8.98847e+307,
        -8.98847e+307,
        1.79769e+308,
        1.79769e+308
      ],
      'CIAttributeDescription':
          'The rectangle that specifies the crop to apply to the image.',
      'CIAttributeDisplayName': 'Rectangle',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'AttributeFilterName': 'CICrop',
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Crystallize',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CICrystallize',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 20,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Darken Blend Mode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIDarkenBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputNosePositions': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [-1, -1],
      'CIAttributeDisplayName': 'Nose Positions',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputHairImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'A segmentation matte image that corresponds to people\\U2019s hair.',
      'CIAttributeDisplayName': 'Hair Image'
    },
    'inputCalibrationData': {
      'AttributeClass': 'AVCameraCalibrationData',
      'CIAttributeDisplayName': 'Calibration Data'
    },
    'AttributeFilterName': 'CIDepthBlurEffect',
    'inputChinPositions': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [-1, -1],
      'CIAttributeDisplayName': 'Chin Positions',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputGainMap': {
      'AttributeClass': 'CIImage',
      'CIAttributeDisplayName': 'Gain Map'
    },
    'inputLumaNoiseScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Luma Noise Scale',
      'AttributeSliderMax': 0.1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputDisparityImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDisplayName': 'Disparity Image'
    },
    'inputGlassesImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'A segmentation matte image that corresponds to people\\U2019s glasses.',
      'CIAttributeDisplayName': 'Glasses Image'
    },
    'inputScaleFactor': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Scale Factor',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputMatteImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A matting image.',
      'CIAttributeDisplayName': 'Matte Image'
    },
    'inputLeftEyePositions': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [-1, -1],
      'CIAttributeDisplayName': 'Left Eye Positions',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputShape': {
      'AttributeClass': 'NSString',
      'CIAttributeDisplayName': 'Shape'
    },
    'inputRightEyePositions': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [-1, -1],
      'CIAttributeDisplayName': 'Right Eye Positions',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputAuxDataMetadata': {
      'AttributeClass': 'CGImageMetadataRef',
      'CIAttributeDisplayName': 'Aux Data Metadata'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterDisplayName': 'Depth Blur Effect',
    'inputFocusRect': {
      'AttributeClass': 'CIVector',
      'CIAttributeDisplayName': 'Focus Rectangle',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'inputAperture': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Aperture',
      'CIAttributeMax': 22,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 22,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputPoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 300],
      'CIAttributeDisplayName': 'Point 0',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputPoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [300, 300],
      'CIAttributeDisplayName': 'Point 1',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterName': 'CIDepthOfField',
    'AttributeFilterDisplayName': 'Depth of Field',
    'inputUnsharpMaskRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2.5,
      'CIAttributeDisplayName': 'Unsharp Mask Radius',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputSaturation': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.5,
      'CIAttributeDescription': 'The amount to adjust the saturation.',
      'CIAttributeDisplayName': 'Saturation',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputUnsharpMaskIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDisplayName': 'Unsharp Mask Intensity',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 30,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Depth To Disparity',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDepthToDisparity'
  },
  {
    'AttributeFilterDisplayName': 'Difference Blend Mode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDifferenceBlendMode'
  },
  {
    'AttributeFilterDisplayName': 'Disc Blur',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDiscBlur',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 8,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputMaskImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'An image that defines the shape to use when disintegrating from the source to the target image.',
      'CIAttributeDisplayName': 'Mask Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIDisintegrateWithMaskTransition',
    'AttributeFilterDisplayName': 'Disintegrate With Mask',
    'inputShadowOffset': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, -10],
      'CIAttributeDescription': 'The offset of the shadow created by the mask.',
      'CIAttributeDisplayName': 'Shadow Offset',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputShadowDensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.65,
      'CIAttributeDescription':
          'The density of the shadow created by the mask.',
      'CIAttributeDisplayName': 'Shadow Density',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputShadowRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 8,
      'CIAttributeDescription': 'The radius of the shadow created by the mask.',
      'CIAttributeDisplayName': 'Shadow Radius',
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Disparity To Depth',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIDisparityToDepth',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Displacement Distortion',
    'inputDisplacementImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'An image whose grayscale values will be applied to the source image.',
      'CIAttributeDisplayName': 'Displacement Image'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDisplacementDistortion',
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 50,
      'CIAttributeDescription':
          'The amount of texturing of the resulting image. The larger the value, the greater the texturing.',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Dissolve',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDissolveTransition',
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    }
  },
  {
    'AttributeFilterDisplayName': 'Dither',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIDither',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.1,
      'CIAttributeDescription': 'The intensity of the effect.',
      'CIAttributeDisplayName': 'Intensity',
      'CIAttributeMax': 5,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Divide Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDivideBlendMode'
  },
  {
    'AttributeFilterDisplayName': 'Document Enhancer',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIDocumentEnhancer',
    'inputAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription': 'The amount of enhancement.',
      'CIAttributeDisplayName': 'Amount',
      'CIAttributeMax': 10,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterDisplayName': 'Dot Screen',
    'AttributeFilterCategories': [
      'CICategoryHalftoneEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIDotScreen',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.7,
      'CIAttributeDescription':
          'The sharpness of the pattern. The larger the value, the sharper the pattern.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription': 'The distance between dots in the pattern.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the dot screen pattern',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputInsetPoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [400, 400],
      'CIAttributeDisplayName': 'Inset Point 1',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterName': 'CIDroste',
    'AttributeFilterDisplayName': 'Droste',
    'inputRotation': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDisplayName': 'Rotation',
      'AttributeSliderMax': 6.283185307179586,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputStrands': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Strands',
      'CIAttributeMax': 10,
      'CIAttributeMin': -10,
      'AttributeSliderMax': 2,
      'AttributeSliderMin': -2,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputPeriodicity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Periodicity',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputInsetPoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [200, 200],
      'CIAttributeDisplayName': 'Inset Point 0',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputZoom': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Zoom',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 0.01,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Edge Preserve Upsample Filter',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputLumaSigma': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.15,
      'CIAttributeDisplayName': 'Luma Sigma',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIEdgePreserveUpsampleFilter',
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputSmallImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDisplayName': 'Small Image'
    },
    'inputSpatialSigma': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 3,
      'CIAttributeDisplayName': 'Spatial Sigma',
      'CIAttributeMax': 5,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Edges',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIEdges',
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The intensity of the edges. The larger the value, the higher the intensity.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Edge Work',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIEdgeWork',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 3,
      'CIAttributeDescription':
          'The thickness of the edges. The larger the value, the thicker the edges.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 20,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Eightfold Reflected Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIEightfoldReflectedTile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Exclusion Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIExclusionBlendMode'
  },
  {
    'inputEV': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.',
      'CIAttributeDisplayName': 'EV',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': -10,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterDisplayName': 'Exposure Adjust',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIExposureAdjust'
  },
  {
    'AttributeFilterDisplayName': 'False Color',
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x60000111f270 (0.3 0 0 1) devicergb>',
      'CIAttributeDescription': 'The first color to use for the color ramp.',
      'CIAttributeDisplayName': 'Color 1',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIFalseColor',
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x60000111f240 (1 0.9 0.8 1) devicergb>',
      'CIAttributeDescription': 'The second color to use for the color ramp.',
      'CIAttributeDisplayName': 'Color 2',
      'AttributeType': 'CIAttributeTypeColor'
    }
  },
  {
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x60000111ea00 (1 0.8 0.6 1) devicergb>',
      'CIAttributeDescription':
          'The color of the light rays emanating from the flash.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputStriationStrength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The strength of the light rays emanating from the flash.',
      'CIAttributeDisplayName': 'Striation Strength',
      'AttributeSliderMax': 3,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'AttributeFilterName': 'CIFlashTransition',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 300, 300],
      'CIAttributeDescription': 'The extent of the flash.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'AttributeFilterDisplayName': 'Flash',
    'inputFadeThreshold': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.85,
      'CIAttributeDescription':
          'The amount of fade between the flash and the target image. The higher the value, the more flash time and the less fade time.',
      'CIAttributeDisplayName': 'Fade Threshold',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputStriationContrast': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.375,
      'CIAttributeDescription':
          'The contrast of the light rays emanating from the flash.',
      'CIAttributeDisplayName': 'Striation Contrast',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputMaxStriationRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2.58,
      'CIAttributeDescription':
          'The radius of the light rays emanating from the flash.',
      'CIAttributeDisplayName': 'Maximum Striation Radius',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputAcuteAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.570796326794897,
      'CIAttributeDescription':
          'The primary angle for the repeating reflected tile. Small values create thin diamond tiles, and higher values create fatter reflected tiles.',
      'CIAttributeDisplayName': 'Acute Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterDisplayName': 'Fourfold Reflected Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIFourfoldReflectedTile',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Fourfold Rotated Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIFourfoldRotatedTile',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputAcuteAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.570796326794897,
      'CIAttributeDescription':
          'The primary angle for the repeating translated tile. Small values create thin diamond tiles, and higher values create fatter translated tiles.',
      'CIAttributeDisplayName': 'Acute Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterDisplayName': 'Fourfold Translated Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIFourfoldTranslatedTile',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Gabor Gradients',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIGaborGradients',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Gamma Adjust',
    'inputPower': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'A gamma value to use to correct image brightness. The larger the value, the darker the result.',
      'CIAttributeDisplayName': 'Power',
      'AttributeSliderMax': 4,
      'AttributeSliderMin': 0.25,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIGammaAdjust'
  },
  {
    'AttributeFilterDisplayName': 'Gaussian Blur',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIGaussianBlur',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Gaussian Gradient',
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011187e0 (0 0 0 0) devicergb>',
      'CIAttributeDescription': 'The second color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 2',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001118810 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'The first color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 1',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'AttributeFilterCategories': [
      'CICategoryGradient',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIGaussianGradient',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription': 'The radius of the Gaussian distribution.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Glass Distortion',
    'inputTexture': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A texture to apply to the source image.',
      'CIAttributeDisplayName': 'Texture',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 200,
      'CIAttributeDescription':
          'The amount of texturing of the resulting image. The larger the value, the greater the texturing.',
      'CIAttributeDisplayName': 'Scale',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 500,
      'AttributeSliderMin': 0.01,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIGlassDistortion',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Glass Lozenge',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIGlassLozenge',
    'inputPoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [350, 150],
      'CIAttributeDescription':
          'The x and y position that defines the center of the circle at the other end of the lozenge.',
      'CIAttributeDisplayName': 'Point 1',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription':
          'The radius of the lozenge. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputRefraction': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.7,
      'CIAttributeDescription': 'The refraction of the glass.',
      'CIAttributeDisplayName': 'Refraction',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputPoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position that defines the center of the circle at one end of the lozenge.',
      'CIAttributeDisplayName': 'Point 0',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Glide Reflected Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIGlideReflectedTile',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Gloom',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIGloom',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the effect. The larger the radius, the greater the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The intensity of the effect. A value of 0.0 is no effect. A value of 1.0 is the maximum effect.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Guided Filter',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputGuideImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'A larger image to use as a guide.',
      'CIAttributeDisplayName': 'A larger image to use as a guide.'
    },
    'inputEpsilon': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.0001,
      'CIAttributeDisplayName': 'Epsilon',
      'AttributeSliderMax': 0.1,
      'AttributeSliderMin': '1e-09',
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIGuidedFilter',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Hard Light Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHardLightBlendMode'
  },
  {
    'AttributeFilterDisplayName': 'Hatched Screen',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryHalftoneEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIHatchedScreen',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription': 'The distance between lines in the pattern.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.7,
      'CIAttributeDescription': 'The amount of sharpening to apply.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the hatched screen pattern',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Height Field From Mask',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHeightFieldFromMask',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 300,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Hexagonal Pixelate',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 8,
      'CIAttributeDescription':
          'The scale determines the size of the hexagons. Larger values result in larger hexagons.',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIHexagonalPixellate',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Highlight and Shadow Adjust',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHighlightShadowAdjust',
    'inputHighlightAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The amount of adjustment to the highlights of the image.',
      'CIAttributeDisplayName': 'Highlight Amount',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0.3,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'Shadow Highlight Radius',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputShadowAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The amount of adjustment to the shadows of the image.',
      'CIAttributeDisplayName': 'Shadow Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': -1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Histogram Display',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHistogramDisplayFilter',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputLowLimit': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The fraction of the left portion of the histogram image to make darker',
      'CIAttributeDisplayName': 'Low Limit',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputHighLimit': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The fraction of the right portion of the histogram image to make lighter.',
      'CIAttributeDisplayName': 'High Limit',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputHeight': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription':
          'The height of the displayable histogram image.',
      'CIAttributeDisplayName': 'Height',
      'CIAttributeMax': 200,
      'CIAttributeMin': 1,
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Hole Distortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIHoleDistortion',
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 150,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 0.01,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Hue Adjust',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'An angle (in radians) to use to correct the hue of an image.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHueAdjust',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Hue Blend Mode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHueBlendMode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Hue\/Saturation\/Value Gradient',
    'inputColorSpace': {
      'AttributeClass': 'NSObject',
      'AttributeDefault':
          '<CGColorSpace 0x600003b6c180> (kCGColorSpaceICCBased, kCGColorSpaceModelRGB, sRGB IEC61966-2.1)',
      'CIAttributeDescription':
          'The CGColorSpaceRef that the color wheel should be generated in.',
      'CIAttributeDisplayName': 'Color Space'
    },
    'AttributeFilterCategories': [
      'CICategoryGradient',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIHueSaturationValueGradient',
    'inputDither': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Dither',
      'AttributeSliderMax': 3,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputSoftness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Softness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputValue': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Value',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Kaleidoscope',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of reflection.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIKaleidoscope',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputCount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription': 'The number of reflections in the pattern.',
      'CIAttributeDisplayName': 'Count',
      'AttributeSliderMax': 64,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputFocalLength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 28,
      'CIAttributeDescription':
          '35mm equivalent focal length of the input image.',
      'CIAttributeDisplayName': 'Focal Length',
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIKeystoneCorrectionCombined',
    'AttributeFilterDisplayName': 'Combined Keystone Correction',
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The top right coordinate of the guide.',
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The bottom right coordinate of the guide.',
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The top left coordinate of the guide.',
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The bottom left coordinate of the guide.',
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputFocalLength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 28,
      'CIAttributeDescription':
          '35mm equivalent focal length of the input image.',
      'CIAttributeDisplayName': 'Focal Length',
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIKeystoneCorrectionHorizontal',
    'AttributeFilterDisplayName': 'Horizontal Keystone Correction',
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The top right coordinate of the guide.',
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The bottom right coordinate of the guide.',
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The top left coordinate of the guide.',
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The bottom left coordinate of the guide.',
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputFocalLength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 28,
      'CIAttributeDescription':
          '35mm equivalent focal length of the input image.',
      'CIAttributeDisplayName': 'Focal Length',
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIKeystoneCorrectionVertical',
    'AttributeFilterDisplayName': 'Vertical Keystone Correction',
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The top right coordinate of the guide.',
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The bottom right coordinate of the guide.',
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The top left coordinate of the guide.',
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'CIAttributeDescription': 'The bottom left coordinate of the guide.',
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputMeans': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'Specifies the color seeds to use for k-means clustering, either passed as an image or an array of colors.',
      'CIAttributeDisplayName': 'Means'
    },
    'inputCount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 8,
      'CIAttributeDescription':
          'Specifies how many k-means color clusters should be used.',
      'CIAttributeDisplayName': 'Count',
      'CIAttributeMax': 128,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeCount'
    },
    'AttributeFilterName': 'CIKMeans',
    'AttributeFilterDisplayName': 'KMeans',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that defines the extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'inputPasses': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'Specifies how many k-means passes should be performed.',
      'CIAttributeDisplayName': 'Passes',
      'CIAttributeMax': 20,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeCount'
    },
    'inputPerceptual': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'Specifies whether the k-means color palette should be computed in a perceptual color space.',
      'CIAttributeDisplayName': 'Perceptual',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeBoolean'
    },
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Lab ∆E',
    'inputImage2': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The second input image for comparison.',
      'CIAttributeDisplayName': 'Image2'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CILabDeltaE',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Lanczos Scale Transform',
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CILanczosScaleTransform',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The scaling factor to use on the image. Values less than 1.0 scale down the images. Values greater than 1.0 scale up the image.',
      'CIAttributeDisplayName': 'Scale',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 1.5,
      'AttributeSliderMin': 0.05,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputAspectRatio': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The additional horizontal scaling factor to use on the image.',
      'CIAttributeDisplayName': 'Aspect Ratio',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0.5,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputHaloWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 87,
      'CIAttributeDescription':
          'The width of the halo, from its inner radius to its outer radius.',
      'CIAttributeDisplayName': 'Halo Width',
      'AttributeSliderMax': 300,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001106190 (1 0.9 0.8 1) devicergb>',
      'CIAttributeDescription': 'A color.',
      'CIAttributeDisplayName': 'Color'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The duration of the effect.',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputStriationStrength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The intensity of the halo colors. Larger values are more intense.',
      'CIAttributeDisplayName': 'Striation Strength',
      'AttributeSliderMax': 3,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CILenticularHaloGenerator',
    'AttributeFilterDisplayName': 'Lenticular Halo',
    'inputHaloOverlap': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.77,
      'CIAttributeDisplayName': 'Halo Overlap',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the halo.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputStriationContrast': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The contrast of the halo colors. Larger values are higher contrast.',
      'CIAttributeDisplayName': 'Striation Contrast',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputHaloRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 70,
      'CIAttributeDescription': 'The radius of the halo.',
      'CIAttributeDisplayName': 'Halo Radius',
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Lighten Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILightenBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Light Tunnel Distortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILightTunnel',
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'Center radius of the light tunnel.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 500,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputRotation': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'Rotation angle of the light tunnel.',
      'CIAttributeDisplayName': 'Rotation',
      'AttributeSliderMax': 1.570796326794897,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription': 'Center of the light tunnel.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Linear Burn Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILinearBurnBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Linear Dodge Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILinearDodgeBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Linear Gradient',
    'AttributeFilterCategories': [
      'CICategoryGradient',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CILinearGradient',
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001111a40 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'The first color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 1',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'inputPoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [200, 200],
      'CIAttributeDescription':
          'The ending position of the gradient -- where the second color begins.',
      'CIAttributeDisplayName': 'Point 1',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001111a70 (0 0 0 1) devicergb>',
      'CIAttributeDescription': 'The second color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 2',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'inputPoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0],
      'CIAttributeDescription':
          'The starting position of the gradient -- where the first color begins.',
      'CIAttributeDisplayName': 'Point 0',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Linear Light Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILinearLightBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Linear to sRGB Tone Curve',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILinearToSRGBToneCurve'
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputNRNoiseLevel': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.07000000000000001,
      'CIAttributeDescription':
          'The noise level of the image (used with camera data) that gets removed before tracing the edges of the image. Increasing the noise level helps to clean up the traced edges of the image.',
      'CIAttributeDisplayName': 'NR Noise Level',
      'AttributeSliderMax': 0.1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputContrast': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 50,
      'CIAttributeDescription':
          'The amount of anti-aliasing to use on the edges produced by this filter. Higher values produce higher contrast edges (they are less anti-aliased).',
      'CIAttributeDisplayName': 'Contrast',
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 0.25,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputThreshold': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.1,
      'CIAttributeDescription':
          'This value determines edge visibility. Larger values thin out the edges.',
      'CIAttributeDisplayName': 'Threshold',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CILineOverlay',
    'AttributeFilterDisplayName': 'Line Overlay',
    'inputEdgeIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The accentuation factor of the Sobel gradient information when tracing the edges of the image. Higher values find more edges, although typically a low value (such as 1.0) is used.',
      'CIAttributeDisplayName': 'Edge Intensity',
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputNRSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.71,
      'CIAttributeDescription':
          'The amount of sharpening done when removing noise in the image before tracing the edges of the image. This improves the edge acquisition.',
      'CIAttributeDisplayName': 'NR Sharpness',
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryBuiltIn',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryStylize'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Line Screen',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryHalftoneEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CILineScreen',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 6,
      'CIAttributeDescription': 'The distance between lines in the pattern.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 2,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.7,
      'CIAttributeDescription':
          'The sharpness of the pattern. The larger the value, the sharper the pattern.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the line screen pattern',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Luminosity Blend Mode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CILuminosityBlendMode'
  },
  {
    'AttributeFilterDisplayName': 'Masked Variable Blur',
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMaskedVariableBlur',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputMask': {'AttributeClass': 'CIImage', 'CIAttributeDisplayName': 'Mask'}
  },
  {
    'AttributeFilterDisplayName': 'Mask to Alpha',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMaskToAlpha'
  },
  {
    'AttributeFilterDisplayName': 'Maximum Component',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMaximumComponent'
  },
  {
    'AttributeFilterDisplayName': 'Maximum',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMaximumCompositing'
  },
  {
    'AttributeFilterDisplayName': 'Median',
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMedianFilter'
  },
  {
    'inputMesh': {
      'AttributeClass': 'NSArray',
      'CIAttributeDescription':
          'An array of line segments stored as an array of CIVectors each containing a start point and end point.',
      'CIAttributeDisplayName': 'Mesh'
    },
    'AttributeFilterDisplayName': 'Mesh Generator',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMeshGenerator',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.5,
      'CIAttributeDescription': 'The width of the effect.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001102c70 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'A color.',
      'CIAttributeDisplayName': 'Color'
    }
  },
  {
    'AttributeFilterDisplayName': 'Minimum Component',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMinimumComponent'
  },
  {
    'AttributeFilterDisplayName': 'Minimum',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMinimumCompositing',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Mix',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription': 'The amount of the effect.',
      'CIAttributeDisplayName': 'Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMix'
  },
  {
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2,
      'CIAttributeDescription': 'The angle of the mod hole pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 6.283185307179586,
      'AttributeSliderMin': -6.283185307179586,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputCompression': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription':
          'The amount of stretching applied to the mod hole pattern. Holes in the center are not distorted as much as those at the edge of the image.',
      'CIAttributeDisplayName': 'Compression',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 100,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIModTransition',
    'AttributeFilterDisplayName': 'Mod',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 150,
      'CIAttributeDescription':
          'The radius of the undistorted holes in the pattern.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Morphology Gradient',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMorphologyGradient',
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'The desired radius of the circular morphological operation to the image.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Morphology Maximum',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMorphologyMaximum',
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The desired radius of the circular morphological operation to the image.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Morphology Minimum',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIMorphologyMinimum',
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The desired radius of the circular morphological operation to the image.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 50,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'AttributeFilterDisplayName': 'Morphology Rectangle Maximum',
    'inputHeight': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.',
      'CIAttributeDisplayName': 'Height',
      'AttributeSliderMax': 49,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeInteger'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMorphologyRectangleMaximum',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 49,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeInteger'
    }
  },
  {
    'AttributeFilterDisplayName': 'Morphology Rectangle Minimum',
    'inputHeight': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'The height in pixels of the morphological operation. The value will be rounded to the nearest odd integer.',
      'CIAttributeDisplayName': 'Height',
      'AttributeSliderMax': 49,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeInteger'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMorphologyRectangleMinimum',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'The width in pixels of the morphological operation. The value will be rounded to the nearest odd integer.',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 49,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeInteger'
    }
  },
  {
    'AttributeFilterDisplayName': 'Motion Blur',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The angle of the motion determines which direction the blur smears.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMotionBlur',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 20,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Multiply Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMultiplyBlendMode'
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Multiply',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIMultiplyCompositing'
  },
  {
    'AttributeFilterDisplayName': 'Nine Part Stretched',
    'inputGrowAmount': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [100, 100],
      'CIAttributeDisplayName': 'Grow Amount',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CINinePartStretched',
    'inputBreakpoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [50, 50],
      'CIAttributeDescription':
          'Lower left corner of image to retain before stretching begins.',
      'CIAttributeDisplayName': 'Breakpoint0',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBreakpoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'Upper right corner of image to retain after stretching ends.',
      'CIAttributeDisplayName': 'Breakpoint1',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Nine Part Tiled',
    'inputGrowAmount': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [100, 100],
      'CIAttributeDisplayName': 'Grow Amount',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputFlipYTiles': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription': 'Indicates that Y-Axis flip should occur.',
      'CIAttributeDisplayName': 'Flip Y Tiles',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeBoolean'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBreakpoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [50, 50],
      'CIAttributeDescription':
          'Lower left corner of image to retain before tiling begins.',
      'CIAttributeDisplayName': 'Breakpoint0',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterName': 'CINinePartTiled',
    'inputBreakpoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'Upper right corner of image to retain after tiling ends.',
      'CIAttributeDisplayName': 'Breakpoint1',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Noise Reduction',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CINoiseReduction',
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.4,
      'CIAttributeDescription':
          'The sharpness of the final image. The larger the value, the sharper the result.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputNoiseLevel': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.02,
      'CIAttributeDescription':
          'The amount of noise reduction. The larger the value, the more noise reduction.',
      'CIAttributeDisplayName': 'Noise Level',
      'AttributeSliderMax': 0.1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Op Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of a tile.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2.8,
      'CIAttributeDescription':
          'The scale determines the number of tiles in the effect.',
      'CIAttributeDisplayName': 'Scale',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0.1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 65,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIOpTile',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Overlay Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIOverlayBlendMode'
  },
  {
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the curling page.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterName': 'CIPageCurlTransition',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 300, 300],
      'CIAttributeDescription': 'The extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'AttributeFilterDisplayName': 'Page Curl',
    'inputShadingImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'An image that looks like a shaded sphere enclosed in a square image.',
      'CIAttributeDisplayName': 'Shading Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputBacksideImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image that appears on the back of the source image, as the page curls to reveal the target image.',
      'CIAttributeDisplayName': 'Backside Image'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The radius of the curl.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 400,
      'AttributeSliderMin': 0.01,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputShadowSize': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription': 'The maximum size in pixels of the shadow.',
      'CIAttributeDisplayName': 'Shadow Size',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputShadowAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.7,
      'CIAttributeDescription': 'The strength of the shadow.',
      'CIAttributeDisplayName': 'Shadow Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the curling page.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputShadowExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0],
      'CIAttributeDescription':
          'The rectagular portion of input image that will cast a shadow.',
      'CIAttributeDisplayName': 'Shadow Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'AttributeFilterName': 'CIPageCurlWithShadowTransition',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 0, 0],
      'CIAttributeDescription': 'The extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'AttributeFilterDisplayName': 'Page Curl With Shadow',
    'inputBacksideImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image that appears on the back of the source image, as the page curls to reveal the target image.',
      'CIAttributeDisplayName': 'Backside Image'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The radius of the curl.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 400,
      'AttributeSliderMin': 0.01,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputPerceptual': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'Specifies whether the color palette should be applied in a perceptual color space.',
      'CIAttributeDisplayName': 'Perceptual',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeBoolean'
    },
    'inputPaletteImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The input color palette, obtained using \\U201cCIKMeans\\U201c filter.',
      'CIAttributeDisplayName': 'Palette Image'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPaletteCentroid',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterDisplayName': 'Palette Centroid'
  },
  {
    'inputPerceptual': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'Specifies whether the color palette should be applied in a perceptual color space.',
      'CIAttributeDisplayName': 'Perceptual',
      'CIAttributeMax': 1,
      'CIAttributeMin': 0,
      'AttributeType': 'CIAttributeTypeBoolean'
    },
    'AttributeFilterDisplayName': 'Palettize',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPalettize',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputPaletteImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The input color palette, obtained using \\U201cCIKMeans\\U201c filter.',
      'CIAttributeDisplayName': 'Palette Image'
    }
  },
  {
    'inputAcuteAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.570796326794897,
      'CIAttributeDescription':
          'The primary angle for the repeating parallelogram tile. Small values create thin diamond tiles, and higher values create fatter parallelogram tiles.',
      'CIAttributeDisplayName': 'Acute Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIParallelogramTile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterDisplayName': 'Parallelogram Tile',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputMinHeight': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The minimum height of the generated barcode in pixels.',
      'CIAttributeDisplayName': 'Min Height',
      'AttributeSliderMax': 283,
      'AttributeSliderMin': 13
    },
    'inputAlwaysSpecifyCompaction': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'Force compaction style to @YES or @NO. Set to nil for automatic.',
      'CIAttributeDisplayName': 'Always Specify Compaction',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0
    },
    'inputDataColumns': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The number of data columns in the generated barcode',
      'CIAttributeDisplayName': 'Data Columns',
      'AttributeSliderMax': 30,
      'AttributeSliderMin': 1
    },
    'inputMinWidth': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The minimum width of the generated barcode in pixels.',
      'CIAttributeDisplayName': 'Min Width',
      'AttributeSliderMax': 583,
      'AttributeSliderMin': 56
    },
    'inputMaxWidth': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The maximum width of the generated barcode in pixels.',
      'CIAttributeDisplayName': 'Max Width',
      'AttributeSliderMax': 583,
      'AttributeSliderMin': 56
    },
    'AttributeFilterName': 'CIPDF417BarcodeGenerator',
    'AttributeFilterDisplayName': 'PDF417 Barcode Generator',
    'inputMessage': {
      'AttributeClass': 'NSData',
      'CIAttributeDescription': 'The message to encode in the PDF417 Barcode',
      'CIAttributeDisplayName': 'Message'
    },
    'inputCorrectionLevel': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The correction level ratio of the generated barcode',
      'CIAttributeDisplayName': 'Correction Level',
      'AttributeSliderMax': 8,
      'AttributeSliderMin': 0
    },
    'inputCompactionMode': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription': 'The compaction mode of the generated barcode.',
      'CIAttributeDisplayName': 'Compaction Mode',
      'AttributeSliderMax': 3,
      'AttributeSliderMin': 0
    },
    'inputRows': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription': 'The number of rows in the generated barcode',
      'CIAttributeDisplayName': 'Rows',
      'AttributeSliderMax': 90,
      'AttributeSliderMin': 3
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputCompactStyle': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'Force a compact style Aztec code to @YES or @NO. Set to nil for automatic.',
      'CIAttributeDisplayName': 'Compact Style',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0
    },
    'inputPreferredAspectRatio': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The preferred aspect ratio of the generated barcode',
      'CIAttributeDisplayName': 'Preferred Aspect Ratio',
      'AttributeSliderMin': 0
    },
    'inputMaxHeight': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'The maximum height of the generated barcode in pixels.',
      'CIAttributeDisplayName': 'Max Height',
      'AttributeSliderMax': 283,
      'AttributeSliderMin': 13
    }
  },
  {
    'AttributeFilterDisplayName': 'Person Segmentation',
    'AttributeFilterCategories': [
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryStylize'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPersonSegmentation',
    'inputQualityLevel': {
      'AttributeClass': 'NSNumber',
      'CIAttributeDescription':
          'Determines the size and quality of the resulting segmentation mask. The value can be a number where 0 is accurate, 1 is balanced, and 2 is fast.',
      'CIAttributeDisplayName': 'Quality Level'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPerspectiveCorrection',
    'AttributeFilterDisplayName': 'Perspective Correction',
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [646, 507],
      'CIAttributeDescription':
          'The top right coordinate to be perspective corrected.',
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [548, 140],
      'CIAttributeDescription':
          'The bottom right coordinate to be perspective corrected.',
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputCrop': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Crop',
      'AttributeType': 'CIAttributeTypeBoolean'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [118, 484],
      'CIAttributeDescription':
          'The top left coordinate to be perspective corrected.',
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryBuiltIn'
    ],
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [155, 153],
      'CIAttributeDescription':
          'The bottom left coordinate to be perspective corrected.',
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Perspective Rotate',
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputFocalLength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 28,
      'CIAttributeDescription':
          '35mm equivalent focal length of the input image.',
      'CIAttributeDisplayName': 'Focal Length',
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CIPerspectiveRotate',
    'inputRoll': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'Roll angle in radians.',
      'CIAttributeDisplayName': 'Roll',
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputPitch': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'Pitch angle in radians.',
      'CIAttributeDisplayName': 'Pitch',
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputYaw': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'Yaw angle in radians.',
      'CIAttributeDisplayName': 'Yaw',
      'AttributeType': 'CIAttributeTypeAngle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Perspective Tile',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPerspectiveTile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [155, 153],
      'CIAttributeDescription': 'The bottom left coordinate of a tile.',
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [118, 484],
      'CIAttributeDescription': 'The top left coordinate of a tile.',
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [548, 140],
      'CIAttributeDescription': 'The bottom right coordinate of a tile.',
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [646, 507],
      'CIAttributeDescription': 'The top right coordinate of a tile.',
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Perspective Transform',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIPerspectiveTransform',
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [155, 153],
      'CIAttributeDescription':
          'The bottom left coordinate to map the image to.',
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [118, 484],
      'CIAttributeDescription': 'The top left coordinate to map the image to.',
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [548, 140],
      'CIAttributeDescription':
          'The bottom right coordinate to map the image to.',
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [646, 507],
      'CIAttributeDescription': 'The top right coordinate to map the image to.',
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPerspectiveTransformWithExtent',
    'AttributeFilterDisplayName': 'Perspective Transform with Extent',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 300, 300],
      'CIAttributeDescription':
          'A rectangle that defines the extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'inputBottomRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [548, 140],
      'CIAttributeDisplayName': 'Bottom Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopRight': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [646, 507],
      'CIAttributeDisplayName': 'Top Right',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputTopLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [118, 484],
      'CIAttributeDisplayName': 'Top Left',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputBottomLeft': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [155, 153],
      'CIAttributeDisplayName': 'Bottom Left',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Chrome',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectChrome'
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Fade',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectFade',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Instant',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectInstant'
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Mono',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectMono'
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Noir',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectNoir'
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Process',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectProcess'
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Tonal',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectTonal'
  },
  {
    'AttributeFilterDisplayName': 'Photo Effect Transfer',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPhotoEffectTransfer',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Pinch Distortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIPinchDistortion',
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Pin Light Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPinLightBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Pixelate',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPixellate',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 8,
      'CIAttributeDescription':
          'The scale determines the size of the squares. Larger values result in larger squares.',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Pointillize',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIPointillize',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 20,
      'CIAttributeDescription':
          'The radius of the circles in the resulting pattern.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'QR Code Generator',
    'inputCorrectionLevel': {
      'AttributeClass': 'NSString',
      'AttributeDefault': 'M',
      'CIAttributeDescription': 'QR Code correction level L, M, Q, or H.',
      'CIAttributeDisplayName': 'Correction Level'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputMessage': {
      'AttributeClass': 'NSData',
      'CIAttributeDescription': 'The message to encode in the QR Code',
      'CIAttributeDisplayName': 'Message'
    },
    'AttributeFilterName': 'CIQRCodeGenerator'
  },
  {
    'AttributeFilterDisplayName': 'Radial Gradient',
    'inputRadius1': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription':
          'The radius of the ending circle to use in the gradient.',
      'CIAttributeDisplayName': 'Radius 2',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterCategories': [
      'CICategoryGradient',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputRadius0': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5,
      'CIAttributeDescription':
          'The radius of the starting circle to use in the gradient.',
      'CIAttributeDisplayName': 'Radius 1',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001108a20 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'The first color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 1',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'AttributeFilterName': 'CIRadialGradient',
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001108a80 (0 0 0 1) devicergb>',
      'CIAttributeDescription': 'The second color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 2',
      'AttributeType': 'CIAttributeTypeColor'
    }
  },
  {
    'AttributeFilterDisplayName': 'Random Generator',
    'AttributeFilterName': 'CIRandomGenerator',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of the ripple.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 1,
      'AttributeSliderMax': 300,
      'AttributeSliderMin': 10,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIRippleTransition',
    'AttributeFilterDisplayName': 'Ripple',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 300, 300],
      'CIAttributeDescription':
          'A rectangle that defines the extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'inputShadingImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'An image that looks like a shaded sphere enclosed in a square image.',
      'CIAttributeDisplayName': 'Shading Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 50,
      'CIAttributeDescription':
          'A value that determines whether the ripple starts as a bulge (higher value) or a dimple (lower value).',
      'CIAttributeDisplayName': 'Scale',
      'AttributeSliderMax': 50,
      'AttributeSliderMin': -50,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Rounded Rectangle Generator',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIRoundedRectangleGenerator',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x600001109ce0 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'A color.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 100, 100],
      'CIAttributeDescription':
          'A rectangle that defines the extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Row Average',
    'AttributeFilterCategories': [
      'CICategoryReduction',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIRowAverage',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 640, 80],
      'CIAttributeDescription':
          'A rectangle that specifies the subregion of the image that you want to process.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    }
  },
  {
    'AttributeFilterDisplayName': 'Saliency Map Filter',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISaliencyMapFilter',
    'AttributeFilterCategories': [
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryStylize'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Sample Nearest',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISampleNearest'
  },
  {
    'AttributeFilterDisplayName': 'Saturation Blend Mode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISaturationBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Screen Blend Mode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIScreenBlendMode'
  },
  {
    'AttributeFilterDisplayName': 'Sepia Tone',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISepiaTone',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn',
      'CICategoryXMPSerializable'
    ],
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The intensity of the sepia effect. A value of 1.0 creates a monochrome sepia image. A value of 0.0 has no effect on the image.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputShadingImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as the height field. The resulting image has greater heights with lighter shades, and lesser heights (lower areas) with darker shades.',
      'CIAttributeDisplayName': 'Shading Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterDisplayName': 'Shaded Material',
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 10,
      'CIAttributeDescription':
          'The scale of the effect. The higher the value, the more dramatic the effect.',
      'CIAttributeDisplayName': 'Scale',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 0.5,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CIShadedMaterial'
  },
  {
    'AttributeFilterDisplayName': 'Sharpen Luminance',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISharpenLuminance',
    'AttributeFilterCategories': [
      'CICategorySharpen',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.4,
      'CIAttributeDescription':
          'The amount of sharpening to apply. Larger values are sharper.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.69,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 20,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterDisplayName': 'Sixfold Reflected Tile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISixfoldReflectedTile',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterDisplayName': 'Sixfold Rotated Tile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISixfoldRotatedTile',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputPoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0],
      'CIAttributeDescription':
          'The starting position of the gradient -- where the first color begins.',
      'CIAttributeDisplayName': 'Point 0',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterDisplayName': 'Smooth Linear Gradient',
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011fcc90 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'The first color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 1',
      'AttributeType': 'CIAttributeTypeColor'
    },
    'AttributeFilterName': 'CISmoothLinearGradient',
    'AttributeFilterCategories': [
      'CICategoryGradient',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputPoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [200, 200],
      'CIAttributeDescription':
          'The ending position of the gradient -- where the second color begins.',
      'CIAttributeDisplayName': 'Point 1',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011fcbd0 (0 0 0 1) devicergb>',
      'CIAttributeDescription': 'The second color to use in the gradient.',
      'CIAttributeDisplayName': 'Color 2',
      'AttributeType': 'CIAttributeTypeColor'
    }
  },
  {
    'AttributeFilterDisplayName': 'Soft Light Blend Mode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISoftLightBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Source Atop',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISourceAtopCompositing',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Source In',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISourceInCompositing',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Source Out',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISourceOutCompositing',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Source Over',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISourceOverCompositing',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryHighDynamicRange',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputCenterColor2': {
      'AttributeClass': 'CIColor',
      'AttributeDefault':
          '<CIColor 0x6000011f6610 (0.5255 0.3059 0.3451 1) devicergb>',
      'CIAttributeDescription':
          'The center value of the second color range to replace.',
      'CIAttributeDisplayName': 'Center Color 2'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputCloseness2': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.15,
      'CIAttributeDescription':
          'A value that indicates how close the second color must match before it is replaced.',
      'CIAttributeDisplayName': 'Closeness 2',
      'AttributeSliderMax': 0.5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputContrast1': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.98,
      'CIAttributeDescription': 'The contrast of the first replacement color.',
      'CIAttributeDisplayName': 'Contrast 1',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputReplacementColor2': {
      'AttributeClass': 'CIColor',
      'AttributeDefault':
          '<CIColor 0x6000011f6640 (0.9137 0.5608 0.5059 1) devicergb>',
      'CIAttributeDescription':
          'A replacement color for the second color range.',
      'CIAttributeDisplayName': 'Replacement Color 2'
    },
    'inputCenterColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault':
          '<CIColor 0x6000011f6580 (0.0784 0.0627 0.0706 1) devicergb>',
      'CIAttributeDescription':
          'The center value of the first color range to replace.',
      'CIAttributeDisplayName': 'Center Color 1'
    },
    'inputContrast3': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.99,
      'CIAttributeDescription': 'The contrast of the third replacement color.',
      'CIAttributeDisplayName': 'Contrast 3',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCloseness1': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.22,
      'CIAttributeDescription':
          'A value that indicates how close the first color must match before it is replaced.',
      'CIAttributeDisplayName': 'Closeness 1',
      'AttributeSliderMax': 0.5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterDisplayName': 'Spot Color',
    'AttributeFilterName': 'CISpotColor',
    'inputContrast2': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.98,
      'CIAttributeDescription': 'The contrast of the second replacement color.',
      'CIAttributeDisplayName': 'Contrast 2',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputReplacementColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault':
          '<CIColor 0x6000011f65e0 (0.4392 0.1922 0.1961 1) devicergb>',
      'CIAttributeDescription':
          'A replacement color for the first color range.',
      'CIAttributeDisplayName': 'Replacement Color 1'
    },
    'AttributeFilterCategories': [
      'CICategoryBuiltIn',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryStylize'
    ],
    'inputCenterColor3': {
      'AttributeClass': 'CIColor',
      'AttributeDefault':
          '<CIColor 0x6000011f6670 (0.9216 0.4549 0.3333 1) devicergb>',
      'CIAttributeDescription':
          'The center value of the third color range to replace.',
      'CIAttributeDisplayName': 'Center Color 3'
    },
    'inputCloseness3': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'A value that indicates how close the third color must match before it is replaced.',
      'CIAttributeDisplayName': 'Closeness 3',
      'AttributeSliderMax': 0.5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputReplacementColor3': {
      'AttributeClass': 'CIColor',
      'AttributeDefault':
          '<CIColor 0x6000011f66a0 (0.9098 0.7529 0.6078 1) devicergb>',
      'CIAttributeDescription':
          'A replacement color for the third color range.',
      'CIAttributeDisplayName': 'Replacement Color 3'
    }
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputLightPointsAt': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [200, 200, 0],
      'CIAttributeDescription':
          'The x and y position that the spotlight points at.',
      'CIAttributeDisplayName': 'Light Points At',
      'AttributeType': 'CIAttributeTypePosition3'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x60000110ee50 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'The color of the spotlight.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeOpaqueColor'
    },
    'inputConcentration': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.1,
      'CIAttributeDescription':
          'The spotlight size. The smaller the value, the more tightly focused the light beam.',
      'CIAttributeDisplayName': 'Concentration',
      'AttributeSliderMax': 1.5,
      'AttributeSliderMin': 0.001,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CISpotLight',
    'AttributeFilterDisplayName': 'Spot Light',
    'inputBrightness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 3,
      'CIAttributeDescription': 'The brightness of the spotlight.',
      'CIAttributeDisplayName': 'Brightness',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterCategories': [
      'CICategoryStylize',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputLightPosition': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [400, 600, 150],
      'CIAttributeDescription': 'The x and y position of the spotlight.',
      'CIAttributeDisplayName': 'Light Position',
      'AttributeType': 'CIAttributeTypePosition3'
    }
  },
  {
    'AttributeFilterDisplayName': 'sRGB Tone Curve to Linear',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISRGBToneCurveToLinear',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ]
  },
  {
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011fd140 (1 0.8 0.6 1) devicergb>',
      'CIAttributeDescription':
          'The color to use for the outer shell of the circular star.',
      'CIAttributeDisplayName': 'Color'
    },
    'inputCrossScale': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 15,
      'CIAttributeDescription': 'The size of the cross pattern.',
      'CIAttributeDisplayName': 'Cross Scale',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCrossWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2.5,
      'CIAttributeDescription': 'The width of the cross pattern.',
      'CIAttributeDisplayName': 'Cross Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0.5,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterDisplayName': 'Star Shine',
    'AttributeFilterName': 'CIStarShineGenerator',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the star.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputCrossOpacity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': -2,
      'CIAttributeDescription': 'The opacity of the cross pattern.',
      'CIAttributeDisplayName': 'Cross Opacity',
      'AttributeSliderMax': 0,
      'AttributeSliderMin': -8,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCrossAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.6,
      'CIAttributeDescription': 'The angle of the cross pattern.',
      'CIAttributeDisplayName': 'Cross Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 50,
      'CIAttributeDescription': 'The radius of the star.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 300,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputEpsilon': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': -2,
      'CIAttributeDescription': 'The length of the cross spikes.',
      'CIAttributeDisplayName': 'Epsilon',
      'AttributeSliderMax': 0,
      'AttributeSliderMin': -8,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Straighten',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'An angle in radians.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryGeometryAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIStraightenFilter'
  },
  {
    'AttributeFilterDisplayName': 'Stretch Crop',
    'inputCenterStretchAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.25,
      'CIAttributeDescription':
          'Determine how much the center of the image is stretched if stretching is used. If value is 0 then the center of the image maintains the original aspect ratio. If 1 then the image is stretched uniformly.',
      'CIAttributeDisplayName': 'Center Stretch Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIStretchCrop',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputCropAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.25,
      'CIAttributeDescription':
          'Determines if and how much cropping should be used to achieve the target size. If value is 0 then only stretching is used. If 1 then only cropping is used.',
      'CIAttributeDisplayName': 'Crop Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputSize': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [1280, 720],
      'CIAttributeDescription': 'The size in pixels of the output image.',
      'CIAttributeDisplayName': 'Size',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the stripe pattern.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterDisplayName': 'Stripes',
    'inputColor0': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011f7270 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'A color to use for the odd stripes.',
      'CIAttributeDisplayName': 'Color 1'
    },
    'AttributeFilterName': 'CIStripesGenerator',
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputSharpness': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription':
          'The sharpness of the stripe pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.',
      'CIAttributeDisplayName': 'Sharpness',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 80,
      'CIAttributeDescription': 'The width of a stripe.',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputColor1': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011f72d0 (0 0 0 1) devicergb>',
      'CIAttributeDescription': 'A color to use for the even stripes.',
      'CIAttributeDisplayName': 'Color 2'
    }
  },
  {
    'AttributeFilterDisplayName': 'Subtract Blend Mode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CISubtractBlendMode',
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The duration of the effect.',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011f7c00 (1 0.5 0 1) devicergb>',
      'CIAttributeDescription': 'The color of the sun.',
      'CIAttributeDisplayName': 'Color'
    },
    'inputStriationStrength': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The intensity of the sunbeams. Higher values result in more intensity.',
      'CIAttributeDisplayName': 'Striation Strength',
      'AttributeSliderMax': 3,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'AttributeFilterName': 'CISunbeamsGenerator',
    'AttributeFilterDisplayName': 'Sunbeams',
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the sunbeam pattern',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'inputStriationContrast': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.375,
      'CIAttributeDescription':
          'The contrast of the sunbeams. Higher values result in more contrast.',
      'CIAttributeDisplayName': 'Striation Contrast',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputSunRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 40,
      'CIAttributeDescription': 'The radius of the sun.',
      'CIAttributeDisplayName': 'Sun Radius',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputMaxStriationRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2.58,
      'CIAttributeDescription': 'The radius of the sunbeams.',
      'CIAttributeDisplayName': 'Maximum Striation Radius',
      'AttributeSliderMax': 10,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputTime': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription':
          'The parametric time of the transition. This value drives the transition from start (at time 0) to end (at time 1).',
      'CIAttributeDisplayName': 'Time',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeTime'
    },
    'inputTargetImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The target image for a transition.',
      'CIAttributeDisplayName': 'Target Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x60000111bf90 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'The color of the swipe.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeOpaqueColor'
    },
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle of the swipe.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription': 'The width of the swipe',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0.1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterName': 'CISwipeTransition',
    'AttributeFilterDisplayName': 'Swipe',
    'inputExtent': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0, 300, 300],
      'CIAttributeDescription': 'The extent of the effect.',
      'CIAttributeDisplayName': 'Extent',
      'AttributeType': 'CIAttributeTypeRectangle'
    },
    'AttributeFilterCategories': [
      'CICategoryTransition',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputOpacity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The opacity of the swipe.',
      'CIAttributeDisplayName': 'Opacity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Temperature and Tint',
    'inputTargetNeutral': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [6500, 0],
      'CIAttributeDisplayName': 'Target Neutral',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputNeutral': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [6500, 0],
      'CIAttributeDisplayName': 'Neutral',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CITemperatureAndTint'
  },
  {
    'AttributeFilterDisplayName': 'Text Image Generator',
    'inputFontName': {
      'AttributeClass': 'NSString',
      'AttributeDefault': 'HelveticaNeue',
      'CIAttributeDisplayName': 'Font Name'
    },
    'AttributeFilterCategories': [
      'CICategoryGenerator',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CITextImageGenerator',
    'inputScaleFactor': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDisplayName': 'Scale Factor',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 4,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputText': {
      'AttributeClass': 'NSString',
      'CIAttributeDisplayName': 'Text'
    },
    'inputFontSize': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 12,
      'CIAttributeDisplayName': 'Font Size',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 128,
      'AttributeSliderMin': 9,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Thermal',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIThermal'
  },
  {
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputPoint0': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0, 0],
      'CIAttributeDisplayName': 'Point 0',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputPoint1': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0.25, 0.25],
      'CIAttributeDisplayName': 'Point 1',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputPoint2': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0.5, 0.5],
      'CIAttributeDisplayName': 'Point 2',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputPoint3': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [0.75, 0.75],
      'CIAttributeDisplayName': 'Point 3',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'inputPoint4': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [1, 1],
      'CIAttributeDisplayName': 'Point 4',
      'AttributeType': 'CIAttributeTypeOffset'
    },
    'AttributeFilterDisplayName': 'Tone Curve',
    'AttributeFilterName': 'CIToneCurve',
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ]
  },
  {
    'AttributeFilterDisplayName': 'Torus Lens Distortion',
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CITorusLensDistortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 80,
      'CIAttributeDescription': 'The width of the ring.',
      'CIAttributeDisplayName': 'Width',
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 160,
      'CIAttributeDescription': 'The outer radius of the torus.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 500,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputRefraction': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1.7,
      'CIAttributeDescription': 'The refraction of the glass.',
      'CIAttributeDisplayName': 'Refraction',
      'AttributeSliderMax': 5,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the torus.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Triangle Kaleidoscope',
    'inputPoint': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the triangular area in the input image.',
      'CIAttributeDisplayName': 'Point',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CITriangleKaleidoscope',
    'inputSize': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 700,
      'CIAttributeDescription': 'The size in pixels of the triangle.',
      'CIAttributeDisplayName': 'Size',
      'AttributeSliderMax': 1000,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputRotation': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 5.924285296593801,
      'CIAttributeDescription': 'Rotation angle of the triangle.',
      'CIAttributeDisplayName': 'Rotation',
      'AttributeSliderMax': 6.283185307179586,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputDecay': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.85,
      'CIAttributeDescription':
          'The decay determines how fast the color fades from the center triangle.',
      'CIAttributeDisplayName': 'Decay',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Triangle Tile',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CITriangleTile',
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The angle (in radians) of the tiled pattern.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 3.141592653589793,
      'AttributeSliderMin': -3.141592653589793,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterDisplayName': 'Twelvefold Reflected Tile',
    'AttributeFilterCategories': [
      'CICategoryTileEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CITwelvefoldReflectedTile',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputWidth': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 100,
      'CIAttributeDescription': 'The width of a tile.',
      'CIAttributeDisplayName': 'Width',
      'CIAttributeMin': 0,
      'AttributeSliderMax': 200,
      'AttributeSliderMin': 1,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The x and y position to use as the center of the effect',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Twirl Distortion',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 3.141592653589793,
      'CIAttributeDescription':
          'The angle (in radians) of the twirl. Values can be positive or negative.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 12.56637061435917,
      'AttributeSliderMin': -12.56637061435917,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CITwirlDistortion',
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 500,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'Unsharp Mask',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategorySharpen',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIUnsharpMask',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 2.5,
      'CIAttributeDescription':
          'The radius around a given pixel to apply the unsharp mask. The larger the radius, the more of the image is affected.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 100,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDescription':
          'The intensity of the effect. The larger the value, the more contrast in the affected area.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Vibrance',
    'inputAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The amount to adjust the saturation.',
      'CIAttributeDisplayName': 'Amount',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': -1,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIVibrance'
  },
  {
    'AttributeFilterDisplayName': 'Vignette',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIVignette',
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 2,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0,
      'CIAttributeDescription': 'The intensity of the effect.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': -1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    },
    'AttributeFilterDisplayName': 'Vignette Effect',
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIVignetteEffect',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 150,
      'CIAttributeDescription': 'The distance from the center of the effect.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 2000,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputFalloff': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 0.5,
      'CIAttributeDisplayName': 'Falloff',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeScalar'
    },
    'inputIntensity': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 1,
      'CIAttributeDescription': 'The intensity of the effect.',
      'CIAttributeDisplayName': 'Intensity',
      'AttributeSliderMax': 1,
      'AttributeSliderMin': -1,
      'AttributeType': 'CIAttributeTypeScalar'
    }
  },
  {
    'AttributeFilterDisplayName': 'Vivid Light Blend Mode',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterName': 'CIVividLightBlendMode',
    'AttributeFilterCategories': [
      'CICategoryCompositeOperation',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'inputBackgroundImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription': 'The image to use as a background image.',
      'CIAttributeDisplayName': 'Background Image',
      'AttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    'AttributeFilterDisplayName': 'Vortex Distortion',
    'inputAngle': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 56.54866776461628,
      'CIAttributeDescription': 'The angle (in radians) of the vortex.',
      'CIAttributeDisplayName': 'Angle',
      'AttributeSliderMax': 94.24777960769379,
      'AttributeSliderMin': -94.24777960769379,
      'AttributeType': 'CIAttributeTypeAngle'
    },
    'AttributeFilterCategories': [
      'CICategoryDistortionEffect',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIVortexDistortion',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputRadius': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 300,
      'CIAttributeDescription':
          'The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.',
      'CIAttributeDisplayName': 'Radius',
      'AttributeSliderMax': 800,
      'AttributeSliderMin': 0,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  },
  {
    'AttributeFilterDisplayName': 'White Point Adjust',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorAdjustment',
      'CategoryVideo',
      'CategoryStillImage',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIWhitePointAdjust',
    'inputColor': {
      'AttributeClass': 'CIColor',
      'AttributeDefault': '<CIColor 0x6000011fe220 (1 1 1 1) devicergb>',
      'CIAttributeDescription': 'A color to use as the white point.',
      'CIAttributeDisplayName': 'Color',
      'AttributeType': 'CIAttributeTypeColor'
    }
  },
  {
    'AttributeFilterDisplayName': 'X-Ray',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'AttributeFilterCategories': [
      'CICategoryColorEffect',
      'CategoryVideo',
      'CICategoryInterlaced',
      'CICategoryNonSquarePixels',
      'CategoryStillImage',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIXRay'
  },
  {
    'AttributeFilterDisplayName': 'Zoom Blur',
    'inputAmount': {
      'AttributeClass': 'NSNumber',
      'AttributeDefault': 20,
      'CIAttributeDescription':
          'The zoom-in amount. Larger values result in more zooming in.',
      'CIAttributeDisplayName': 'Amount',
      'AttributeSliderMax': 200,
      'AttributeSliderMin': -200,
      'AttributeType': 'CIAttributeTypeDistance'
    },
    'AttributeFilterCategories': [
      'CICategoryBlur',
      'CategoryStillImage',
      'CategoryVideo',
      'CICategoryBuiltIn'
    ],
    'AttributeFilterName': 'CIZoomBlur',
    'inputImage': {
      'AttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputCenter': {
      'AttributeClass': 'CIVector',
      'AttributeDefault': [150, 150],
      'CIAttributeDescription':
          'The center of the effect as x and y coordinates.',
      'CIAttributeDisplayName': 'Center',
      'AttributeType': 'CIAttributeTypePosition'
    }
  }
];
