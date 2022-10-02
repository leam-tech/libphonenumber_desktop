import Cocoa
import FlutterMacOS

public class LibphonenumberDesktop: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
      let channel = FlutterMethodChannel(name: "LibphonenumberDesktop", binaryMessenger: registrar.messenger)
      let instance = LibphonenumberDesktop()
      registrar.addMethodCallDelegate(instance, channel: channel)
    }
}
