part of native_filters;

final List<Map<String, dynamic>> _kGPUImageFilters = [
  {
    "AttributeFilterName": "GPUImage3x3ConvolutionFilter",
    "AttributeFilterDisplayName": "GPUImage3x3ConvolutionFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImage3x3TextureSamplingFilter",
    "AttributeFilterDisplayName": "GPUImage3x3TextureSamplingFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageAddBlendFilter",
    "AttributeFilterDisplayName": "GPUImageAddBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageAlphaBlendFilter",
    "AttributeFilterDisplayName": "GPUImageAlphaBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageBilateralBlurFilter",
    "AttributeFilterDisplayName": "GPUImageBilateralBlurFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageBoxBlurFilter",
    "AttributeFilterDisplayName": "GPUImageBoxBlurFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUBrightness',
    'AttributeFilterDisplayName': 'GPUBrightnessFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputBrightness': {
      'AttributeDefault': 0.0,
      'AttributeClass': 'float',
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': -1.0,
    }
  },
  {
    'AttributeFilterName': 'GPUBulgeDistortion',
    'AttributeFilterDisplayName': 'GPUImageBulgeDistortionFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputCenter': {
      'AttributeType': 'vec2',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.5, 0.5]),
    },
    'inputRadius': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.25,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    },
    'inputScale': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.5,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': -1.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageCGAColorspaceFilter",
    "AttributeFilterDisplayName": "GPUImageCGAColorspaceFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUChromaKeyBlend',
    'AttributeFilterDisplayName': 'GPUImageChromaKeyBlendFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputThresholdSensitivity': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.4,
    },
    'inputSmoothing': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.1,
    },
    'inputColorToReplace': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.0, 1.0, 0.0]),
    }
  },
  {
    "AttributeFilterName": "GPUImageColorBalanceFilter",
    "AttributeFilterDisplayName": "GPUImageColorBalanceFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageColorBlendFilter",
    "AttributeFilterDisplayName": "GPUImageColorBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageColorBurnBlendFilter",
    "AttributeFilterDisplayName": "GPUImageColorBurnBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageColorDodgeBlendFilter",
    "AttributeFilterDisplayName": "GPUImageColorDodgeBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageColorInvertFilter",
    "AttributeFilterDisplayName": "GPUImageColorInvertFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageColorMatrixFilter",
    "AttributeFilterDisplayName": "GPUImageColorMatrixFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUContrast',
    'AttributeFilterDisplayName': 'GPUContrastFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputContrast': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 4.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    'AttributeFilterName': 'GPUCrosshatchFilter',
    'AttributeFilterDisplayName': 'GPUCrosshatchFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputCrossHatchSpacing': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.03,
    },
    'inputLineWidth': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.003,
    }
  },
  {
    "AttributeFilterName": "GPUImageDarkenBlendFilter",
    "AttributeFilterDisplayName": "GPUImageDarkenBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageDifferenceBlendFilter",
    "AttributeFilterDisplayName": "GPUImageDifferenceBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageDilationFilter",
    "AttributeFilterDisplayName": "GPUImageDilationFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageDirectionalSobelEdgeDetectionFilter",
    "AttributeFilterDisplayName": "GPUImageDirectionalSobelEdgeDetectionFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageDissolveBlendFilter",
    "AttributeFilterDisplayName": "GPUImageDissolveBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageDivideBlendFilter",
    "AttributeFilterDisplayName": "GPUImageDivideBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageEmbossFilter",
    "AttributeFilterDisplayName": "GPUImageEmbossFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageExclusionBlendFilter",
    "AttributeFilterDisplayName": "GPUImageExclusionBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUExposure',
    'AttributeFilterDisplayName': 'GPUExposureFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputExposure': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.0,
      'AttributeSliderMax': 10.0,
      'AttributeSliderMin': -10.0,
    }
  },
  {
    'AttributeFilterName': 'GPUFalseColor',
    'AttributeFilterDisplayName': 'GPUImageFalseColorFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputFirstColor': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.0, 0.0, 0.5]),
    },
    'inputSecondColor': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([1.0, 0.0, 0.0]),
    }
  },
  {
    'AttributeFilterName': 'GPUGammaFilter',
    'AttributeFilterDisplayName': 'GPUGammaFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputGamma': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.2,
      'AttributeSliderMax': 3.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageGaussianBlurFilter",
    "AttributeFilterDisplayName": "GPUImageGaussianBlurFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUGlassSphere',
    'AttributeFilterDisplayName': 'GPUImageGlassSphereFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputCenter': {
      'AttributeType': 'vec2',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.5, 0.5]),
    },
    'inputRadius': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.25,
    },
    'inputRefractiveIndex': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.71,
    }
  },
  {
    "AttributeFilterName": "GPUImageGrayscaleFilter",
    "AttributeFilterDisplayName": "GPUImageGrayscaleFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUHalftone',
    'AttributeFilterDisplayName': 'GPUImageHalftoneFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputFractionalWidthOfPixel': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.01,
    }
  },
  {
    "AttributeFilterName": "GPUImageHardLightBlendFilter",
    "AttributeFilterDisplayName": "GPUImageHardLightBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUHaze',
    'AttributeFilterDisplayName': 'GPUHazeFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputDistance': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.2,
      'AttributeSliderMax': 0.3,
      'AttributeSliderMin': -0.3,
    },
    'inputSlope': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.0,
      'AttributeSliderMax': 0.3,
      'AttributeSliderMin': -0.3,
    }
  },
  {
    'AttributeFilterName': 'GPUHighlightShadow',
    'AttributeFilterDisplayName': 'GPUImageHighlightShadowFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputShadows': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.0,
    },
    'inputHighlights': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageHueBlendFilter",
    "AttributeFilterDisplayName": "GPUImageHueBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUHue',
    'AttributeFilterDisplayName': 'GPUHueFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputHueAdjust': {
      'AttributeClass': 'float',
      'AttributeDefault': 90.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageKuwaharaFilter",
    "AttributeFilterDisplayName": "GPUImageKuwaharaFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageLaplacianFilter",
    "AttributeFilterDisplayName": "GPUImageLaplacianFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPULevels',
    'AttributeFilterDisplayName': 'GPUImageLevelsFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputLevelMinimum': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.0, 0.0, 0.0]),
    },
    'inputLevelMiddle': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([1.0, 1.0, 1.0]),
    },
    'inputLevelMaximum': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([1.0, 1.0, 1.0]),
    },
    'inputMinOutput': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.0, 0.0, 0.0]),
    },
    'inputMaxOutput': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([1.0, 1.0, 1.0]),
    }
  },
  {
    "AttributeFilterName": "GPUImageLightenBlendFilter",
    "AttributeFilterDisplayName": "GPUImageLightenBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageLinearBurnBlendFilter",
    "AttributeFilterDisplayName": "GPUImageLinearBurnBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPULookup',
    'AttributeFilterDisplayName': 'GPUImageLookupFilter',
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
    'inputTextureCubeData': {
      'AttributeClass': 'Bitmap',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    }
  },
  {
    "AttributeFilterName": "GPUImageLuminanceFilter",
    "AttributeFilterDisplayName": "GPUImageLuminanceFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPULuminanceThreshold',
    'AttributeFilterDisplayName': 'GPUImageLuminanceThresholdFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputThreshold': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.5,
    },
  },
  {
    "AttributeFilterName": "GPUImageLuminosityBlendFilter",
    "AttributeFilterDisplayName": "GPUImageLuminosityBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageMixBlendFilter",
    "AttributeFilterDisplayName": "GPUImageMixBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUMonochrome',
    'AttributeFilterDisplayName': 'GPUMonochromeFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'AttributeClass': 'Bitmap',
      'AttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'AttributeDisplayName': 'Image',
      'AttributeType': 'CIAttributeTypeImage'
    },
    'inputColor': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.6, 0.45, 0.3, 1.0]),
    },
    'inputIntensity': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageMultiplyBlendFilter",
    "AttributeFilterDisplayName": "GPUImageMultiplyBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageNonMaximumSuppressionFilter",
    "AttributeFilterDisplayName": "GPUImageNonMaximumSuppressionFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageNormalBlendFilter",
    "AttributeFilterDisplayName": "GPUImageNormalBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUOpacity',
    'AttributeFilterDisplayName': 'GPUImageOpacityFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputOpacity': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageOverlayBlendFilter",
    "AttributeFilterDisplayName": "GPUImageOverlayBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUPixelation',
    'AttributeFilterDisplayName': 'GPUImagePixelationFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputPixel': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
    }
  },
  {
    "AttributeFilterName": "GPUImagePosterizeFilter",
    "AttributeFilterDisplayName": "GPUImagePosterizeFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageRGBDilationFilter",
    "AttributeFilterDisplayName": "GPUImageRGBDilationFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPURGB',
    'AttributeFilterDisplayName': 'GPUImageRGBFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputRed': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    },
    'inputGreen': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    },
    'inputBlue': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageSaturationBlendFilter",
    "AttributeFilterDisplayName": "GPUImageSaturationBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUSaturation',
    'AttributeFilterDisplayName': 'GPUImageSaturationFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputSaturation': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMax': 2.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageScreenBlendFilter",
    "AttributeFilterDisplayName": "GPUImageScreenBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageSepiaToneFilter",
    "AttributeFilterDisplayName": "GPUImageSepiaToneFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageSharpenFilter",
    "AttributeFilterDisplayName": "GPUImageSharpenFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageSketchFilter",
    "AttributeFilterDisplayName": "GPUImageSketchFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageSmoothToonFilter",
    "AttributeFilterDisplayName": "GPUImageSmoothToonFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageSobelEdgeDetectionFilter",
    "AttributeFilterDisplayName": "GPUImageSobelEdgeDetectionFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUSobelThreshold',
    'AttributeFilterDisplayName': 'GPUImageSobelThresholdFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputThreshold': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.9,
    }
  },
  {
    "AttributeFilterName": "GPUImageSoftLightBlendFilter",
    "AttributeFilterDisplayName": "GPUImageSoftLightBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUSolarize',
    'AttributeFilterDisplayName': 'GPUImageSolarizeFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputThreshold': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.5,
    }
  },
  {
    "AttributeFilterName": "GPUImageSourceOverBlendFilter",
    "AttributeFilterDisplayName": "GPUImageSourceOverBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUSphereRefraction',
    'AttributeFilterDisplayName': 'GPUImageSphereRefractionFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputCenter': {
      'AttributeType': 'vec2',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.5, 0.5]),
    },
    'inputRadius': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.25,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    },
    'inputRefractiveIndex': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.71,
    }
  },
  {
    "AttributeFilterName": "GPUImageSubtractBlendFilter",
    "AttributeFilterDisplayName": "GPUImageSubtractBlendFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUSwirl',
    'AttributeFilterDisplayName': 'GPUImageSwirlFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputCenter': {
      'AttributeType': 'vec2',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.5, 0.5]),
    },
    'inputRadius': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.5,
      'AttributeSliderMax': 1.0,
      'AttributeSliderMin': 0.0,
    },
    'inputAngle': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
      'AttributeSliderMin': 0.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageThresholdEdgeDetectionFilter",
    "AttributeFilterDisplayName": "GPUImageThresholdEdgeDetectionFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageToneCurveFilter",
    "AttributeFilterDisplayName": "GPUImageToneCurveFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUToon',
    'AttributeFilterDisplayName': 'GPUImageToonFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputThreshold': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.2,
    },
    'inputQuantizationLevels': {
      'AttributeClass': 'float',
      'AttributeDefault': 10.0,
    }
  },
  {
    "AttributeFilterName": "GPUImageTransformFilter",
    "AttributeFilterDisplayName": "GPUImageTransformFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageTwoInputFilter",
    "AttributeFilterDisplayName": "GPUImageTwoInputFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageTwoPassFilter",
    "AttributeFilterDisplayName": "GPUImageTwoPassFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    "AttributeFilterName": "GPUImageTwoPassTextureSamplingFilter",
    "AttributeFilterDisplayName": "GPUImageTwoPassTextureSamplingFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUVibrance',
    'AttributeFilterDisplayName': 'GPUImageVibranceFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputVibrance': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.0,
    },
  },
  {
    'AttributeFilterName': 'GPUVignette',
    'AttributeFilterDisplayName': 'GPUImageVignetteFilter',
    'AttributeFilterCategories': ['CategoryStillImage'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputVignetteCenter': {
      'AttributeType': 'vec2',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.75, 0.5]),
    },
    'inputVignetteColor': {
      'AttributeType': 'vec3',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.0, 0.0, 0.0]),
    },
    'inputVignetteStart': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.3,
    },
    'inputVignetteEnd': {
      'AttributeClass': 'float',
      'AttributeDefault': 0.75,
    }
  },
  {
    "AttributeFilterName": "GPUImageWeakPixelInclusionFilter",
    "AttributeFilterDisplayName": "GPUImageWeakPixelInclusionFilter",
    "AttributeFilterCategories": ["CategoryStillImage"],
    "inputImage": {
      "CIAttributeClass": "CIImage",
      "CIAttributeDescription":
          "The image to use as an input image. For filters that also use a background image, this is the foreground image.",
      "CIAttributeDisplayName": "Image",
      "CIAttributeType": "CIAttributeTypeImage"
    },
  },
  {
    'AttributeFilterName': 'GPUWhiteBalance',
    'AttributeFilterDisplayName': 'GPUImageWhiteBalanceFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputTemperature': {
      'AttributeClass': 'float',
      'AttributeDefault': 5000.0,
    },
    'inputTint': {
      'AttributeClass': 'float',
      'AttributeDefault': 10.0,
    }
  },
  {
    'AttributeFilterName': 'GPUZoomBlur',
    'AttributeFilterDisplayName': 'GPUImageZoomBlurFilter',
    'AttributeFilterCategories': ['CategoryStillImage', 'CategoryVideo'],
    'inputImage': {
      'CIAttributeClass': 'CIImage',
      'CIAttributeDescription':
          'The image to use as an input image. For filters that also use a background image, this is the foreground image.',
      'CIAttributeDisplayName': 'Image',
      'CIAttributeType': 'CIAttributeTypeImage'
    },
    'inputBlurCenter': {
      'AttributeType': 'vec2',
      'AttributeClass': 'float[]',
      'AttributeDefault': Float32List.fromList([0.5, 0.5]),
    },
    'inputBlurSize': {
      'AttributeClass': 'float',
      'AttributeDefault': 1.0,
    },
  }
];

const Map<String, Map<String, Map<String, String>>> _gpuAttributes = {
  'GlLookUpTableFilter': {
    'inputCubeData': {
      'GPUAttributeClass': 'String',
      'GPUAttributeMethod': 'setInputCubeData',
    }
  },
  'GPUImage3x3ConvolutionFilter': {
    'ConvolutionKernel': {
      'GPUAttributeDefault': '[0.0 0.0 0.0 0.0 1.0 0.0 0.0 0.0 0.0]',
      'GPUAttributeType': 'mat3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setConvolutionKernel'
    }
  },
  'GPUImageBilateralBlurFilter': {
    'DistanceNormalizationFactor': {
      'GPUAttributeDefault': '8.0',
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setDistanceNormalizationFactor'
    }
  },
  'GPUImageBoxBlurFilter': {
    'BlurSize': {
      'GPUAttributeDefault': '1.0',
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setBlurSize'
    }
  },
  'GPUImageBulgeDistortionFilter': {
    'AspectRatio': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setAspectRatio'
    },
    'Scale': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setScale'},
    'Center': {
      'GPUAttributeClass': 'PointF',
      'GPUAttributeMethod': 'setCenter'
    },
    'Radius': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setRadius'}
  },
  'GPUImageChromaKeyBlendFilter': {
    'Smoothing': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setSmoothing'
    },
    'ThresholdSensitivity': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThresholdSensitivity'
    }
  },
  'GPUImageColorBalanceFilter': {
    'Highlights': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setHighlights'
    },
    'Showdows': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setShowdows'
    },
    'PreserveLuminosity': {
      'GPUAttributeClass': 'boolean',
      'GPUAttributeMethod': 'setPreserveLuminosity'
    },
    'Midtones': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setMidtones'
    }
  },
  'GPUImageColorMatrixFilter': {
    'Intensity': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setIntensity'
    },
    'ColorMatrix': {
      'GPUAttributeType': 'mat4',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setColorMatrix'
    }
  },
  'GPUImageCrosshatchFilter': {
    'CrossHatchSpacing': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setCrossHatchSpacing'
    },
    'LineWidth': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setLineWidth'
    }
  },
  'GPUImageEmbossFilter': {
    'Intensity': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setIntensity'
    }
  },
  'GPUImageExposureFilter': {
    'Exposure': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setExposure'
    }
  },
  'GPUImageFalseColorFilter': {
    'FirstColor': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setFirstColor'
    },
    'SecondColor': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setSecondColor'
    }
  },
  'GPUImageGammaFilter': {
    'Gamma': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setGamma'}
  },
  'GPUImageGaussianBlurFilter': {
    'BlurSize': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setBlurSize'
    }
  },
  'GPUImageGlassSphereFilter': {
    'RefractiveIndex': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setRefractiveIndex'
    },
    'AspectRatio': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setAspectRatio'
    },
    'Center': {
      'GPUAttributeClass': 'PointF',
      'GPUAttributeMethod': 'setCenter'
    },
    'Radius': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setRadius'}
  },
  'GPUImageHalftoneFilter': {
    'AspectRatio': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setAspectRatio'
    },
    'FractionalWidthOfAPixel': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setFractionalWidthOfAPixel'
    }
  },
  'GPUImageHighlightShadowFilter': {
    'Highlights': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setHighlights'
    },
    'Shadows': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setShadows'
    }
  },
  'GPUImageHueFilter': {
    'Hue': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setHue'}
  },
  'GPUImageKuwaharaFilter': {
    'Radius': {'GPUAttributeClass': 'int', 'GPUAttributeMethod': 'setRadius'}
  },
  'GPUImageLaplacianFilter': {
    'ConvolutionKernel': {
      'GPUAttributeType': 'mat3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setConvolutionKernel'
    }
  },
  'GPUImageLookupFilter': {
    'Intensity': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setIntensity'
    }
  },
  'GPUImageLuminanceThresholdFilter': {
    'Threshold': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThreshold'
    }
  },
  'GPUImageOpacityFilter': {
    'Opacity': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setOpacity'
    }
  },
  'GPUImagePixelationFilter': {
    'Pixel': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setPixel'}
  },
  'GPUImagePosterizeFilter': {
    'ColorLevels': {
      'GPUAttributeClass': 'int',
      'GPUAttributeMethod': 'setColorLevels'
    }
  },
  'GPUImageRGBFilter': {
    'Blue': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setBlue'},
    'Green': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setGreen'},
    'Red': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setRed'}
  },
  'GPUImageSaturationFilter': {
    'Saturation': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setSaturation'
    }
  },
  'GPUImageSharpenFilter': {
    'Sharpness': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setSharpness'
    }
  },
  'GPUImageSmoothToonFilter': {
    'BlurSize': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setBlurSize'
    },
    'QuantizationLevels': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setQuantizationLevels'
    },
    'Threshold': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThreshold'
    },
    'TexelHeight': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setTexelHeight'
    },
    'TexelWidth': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setTexelWidth'
    }
  },
  'GPUImageSobelEdgeDetectionFilter': {
    'LineSize': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setLineSize'
    }
  },
  'GPUImageSobelThresholdFilter': {
    'Threshold': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThreshold'
    }
  },
  'GPUImageSolarizeFilter': {
    'Threshold': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThreshold'
    }
  },
  'GPUImageSphereRefractionFilter': {
    'RefractiveIndex': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setRefractiveIndex'
    },
    'AspectRatio': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setAspectRatio'
    },
    'Center': {
      'GPUAttributeClass': 'PointF',
      'GPUAttributeMethod': 'setCenter'
    },
    'Radius': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setRadius'}
  },
  'GPUImageSwirlFilter': {
    'Angle': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setAngle'},
    'Center': {
      'GPUAttributeClass': 'PointF',
      'GPUAttributeMethod': 'setCenter'
    },
    'Radius': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setRadius'}
  },
  'GPUImageThresholdEdgeDetectionFilter': {
    'Threshold': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThreshold'
    },
    'LineSize': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setLineSize'
    }
  },
  'GPUImageToneCurveFilter': {
    'RgbCompositeControlPoints': {
      'GPUAttributeClass': 'PointF[]',
      'GPUAttributeMethod': 'setRgbCompositeControlPoints'
    },
    'RedControlPoints': {
      'GPUAttributeClass': 'PointF[]',
      'GPUAttributeMethod': 'setRedControlPoints'
    },
    'BlueControlPoints': {
      'GPUAttributeClass': 'PointF[]',
      'GPUAttributeMethod': 'setBlueControlPoints'
    },
    'GreenControlPoints': {
      'GPUAttributeClass': 'PointF[]',
      'GPUAttributeMethod': 'setGreenControlPoints'
    },
    'FromCurveFileInputStream': {
      'GPUAttributeClass': 'InputStream',
      'GPUAttributeMethod': 'setFromCurveFileInputStream'
    }
  },
  'GPUImageToonFilter': {
    'QuantizationLevels': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setQuantizationLevels'
    },
    'Threshold': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setThreshold'
    }
  },
  'GPUImageTransformFilter': {
    'IgnoreAspectRatio': {
      'GPUAttributeClass': 'boolean',
      'GPUAttributeMethod': 'setIgnoreAspectRatio'
    },
    'Transform3D': {
      'GPUAttributeType': 'mat4',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setTransform3D'
    },
    'AnchorTopLeft': {
      'GPUAttributeClass': 'boolean',
      'GPUAttributeMethod': 'setAnchorTopLeft'
    }
  },
  'GPUImageVibranceFilter': {
    'Vibrance': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setVibrance'
    }
  },
  'GPUImageVignetteFilter': {
    'VignetteStart': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setVignetteStart'
    },
    'VignetteColor': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setVignetteColor'
    },
    'VignetteCenter': {
      'GPUAttributeClass': 'PointF',
      'GPUAttributeMethod': 'setVignetteCenter'
    },
    'VignetteEnd': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setVignetteEnd'
    }
  },
  'GPUImageWhiteBalanceFilter': {
    'Temperature': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setTemperature'
    },
    'Tint': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setTint'}
  },
  'GPUImageZoomBlurFilter': {
    'BlurSize': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setBlurSize'
    },
    'BlurCenter': {
      'GPUAttributeClass': 'PointF',
      'GPUAttributeMethod': 'setBlurCenter'
    }
  },
};
