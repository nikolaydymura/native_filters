#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint nativefilters.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'native_filters'
  s.version          = '0.0.1'
  s.summary          = 'Core Image and GPUImage filters API'
  s.description      = <<-DESC
Core Image and GPUImage filters API
                       DESC
  s.homepage         = 'https://github.com/nikolaydymura/native_filters'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Nikolay Dymura' => 'nikolay.dymura@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
