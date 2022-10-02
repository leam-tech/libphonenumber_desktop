#import "LibphonenumberDesktopPlugin.h"
#if __has_include(<libphonenumber_desktop/libphonenumber_desktop-Swift.h>)
#import <libphonenumber_desktop/libphonenumber_desktop-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "libphonenumber_desktop-Swift.h"
#endif

@implementation LibphonenumberDesktopPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLibphonenumberDesktopPlugin registerWithRegistrar:registrar];
}
@end
