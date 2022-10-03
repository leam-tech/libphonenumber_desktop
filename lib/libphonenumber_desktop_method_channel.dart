import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'libphonenumber_desktop_platform_interface.dart';

/// An implementation of [LibphonenumberDesktopPlatform] that uses method channels.
class MethodChannelLibphonenumberDesktop extends LibphonenumberDesktopPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('libphonenumber_desktop');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
