#import "NativeFiltersPlugin.h"
#if __has_include(<native_filters/native_filters-Swift.h>)
#import <native_filters/native_filters-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "native_filters-Swift.h"
#endif

@implementation NativeFiltersPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNativeFiltersPlugin registerWithRegistrar:registrar];
}
@end
