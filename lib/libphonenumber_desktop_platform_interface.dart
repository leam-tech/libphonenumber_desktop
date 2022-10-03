import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'libphonenumber_desktop_method_channel.dart';

abstract class LibphonenumberDesktopPlatform extends PlatformInterface {
  /// Constructs a LibphonenumberDesktopPlatform.
  LibphonenumberDesktopPlatform() : super(token: _token);

  static final Object _token = Object();

  static LibphonenumberDesktopPlatform _instance = MethodChannelLibphonenumberDesktop();

  /// The default instance of [LibphonenumberDesktopPlatform] to use.
  ///
  /// Defaults to [MethodChannelLibphonenumberDesktop].
  static LibphonenumberDesktopPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LibphonenumberDesktopPlatform] when
  /// they register themselves.
  static set instance(LibphonenumberDesktopPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
