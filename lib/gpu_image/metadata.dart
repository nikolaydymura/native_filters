part of native_filters;

const List<String> _gpuEffects = [
  "GPUImageAddBlendFilter",
  "GPUImageAlphaBlendFilter",
  "GPUImageCGAColorspaceFilter",
  "GPUImageColorBlendFilter",
  "GPUImageColorBurnBlendFilter",
  "GPUImageColorDodgeBlendFilter",
  "GPUImageColorInvertFilter",
  "GPUImageDarkenBlendFilter",
  "GPUImageDifferenceBlendFilter",
  "GPUImageDilationFilter",
  "GPUImageDirectionalSobelEdgeDetectionFilter",
  "GPUImageDissolveBlendFilter",
  "GPUImageDivideBlendFilter",
  "GPUImageExclusionBlendFilter",
  "GPUImageGrayscaleFilter",
  "GPUImageLevelsFilter",
  "GPUImageLightenBlendFilter",
  "GPUImageLinearBurnBlendFilter",
  "GPUImageMultiplyBlendFilter",
  "GPUImageNonMaximumSuppressionFilter",
  "GPUImageNormalBlendFilter",
  "GPUImageHardLightBlendFilter",
  "GPUImageHueBlendFilter",
  "GPUImageLuminanceFilter",
  "GPUImageLuminosityBlendFilter",
  "GPUImageOverlayBlendFilter",
  "GPUImageRGBDilationFilter",
  "GPUImageSaturationBlendFilter",
  "GPUImageScreenBlendFilter",
  "GPUImageSepiaToneFilter",
  "GPUImageSketchFilter",
  "GPUImageSoftLightBlendFilter",
  "GPUImageSourceOverBlendFilter",
  "GPUImageSubtractBlendFilter",
  "GPUImageWeakPixelInclusionFilter"
];

const List<String> _gpuFilters = [
  "GPUImage3x3ConvolutionFilter",
  "GPUImageBilateralBlurFilter",
  "GPUImageBoxBlurFilter",
  "GPUImageBrightnessFilter",
  "GPUImageBulgeDistortionFilter",
  "GPUImageChromaKeyBlendFilter",
  "GPUImageColorBalanceFilter",
  "GPUImageColorMatrixFilter",
  "GPUImageContrastFilter",
  "GPUImageCrosshatchFilter",
  "GPUImageEmbossFilter",
  "GPUImageExposureFilter",
  "GPUImageFalseColorFilter",
  "GPUImageGammaFilter",
  "GPUImageGaussianBlurFilter",
  "GPUImageGlassSphereFilter",
  "GPUImageHalftoneFilter",
  "GPUImageHazeFilter",
  "GPUImageHighlightShadowFilter",
  "GPUImageHueFilter",
  "GPUImageKuwaharaFilter",
  "GPUImageLaplacianFilter",
  "GPUImageLookupFilter",
  "GPUImageLuminanceThresholdFilter",
  "GPUImageMonochromeFilter",
  "GPUImageOpacityFilter",
  "GPUImagePixelationFilter",
  "GPUImagePosterizeFilter",
  "GPUImageRGBFilter",
  "GPUImageSaturationFilter",
  "GPUImageSharpenFilter",
  "GPUImageSmoothToonFilter",
  "GPUImageSobelEdgeDetectionFilter",
  "GPUImageSobelThresholdFilter",
  "GPUImageSolarizeFilter",
  "GPUImageSphereRefractionFilter",
  "GPUImageSwirlFilter",
  "GPUImageThresholdEdgeDetectionFilter",
  "GPUImageToneCurveFilter",
  "GPUImageToonFilter",
  "GPUImageTransformFilter",
  "GPUImageVibranceFilter",
  "GPUImageVignetteFilter",
  "GPUImageWhiteBalanceFilter",
  "GPUImageZoomBlurFilter",
];

const Map<String, Map<String, Map<String, String>>> _gpuAttributes = {
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
  'GPUImageBrightnessFilter': {
    'Brightness': {
      'GPUAttributeDefault': '0.0',
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setBrightness'
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
  'GPUImageContrastFilter': {
    'Contrast': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setContrast'
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
  'GPUImageHazeFilter': {
    'Distance': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setDistance'
    },
    'Slope': {'GPUAttributeClass': 'float', 'GPUAttributeMethod': 'setSlope'}
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
  'GPUImageMonochromeFilter': {
    'Color': {
      'GPUAttributeType': 'vec3',
      'GPUAttributeClass': 'float[]',
      'GPUAttributeMethod': 'setColor'
    },
    'Intensity': {
      'GPUAttributeClass': 'float',
      'GPUAttributeMethod': 'setIntensity'
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
