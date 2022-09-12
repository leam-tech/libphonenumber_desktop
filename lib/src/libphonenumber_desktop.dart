import 'package:libphonenumber_desktop/src/ffi.dart';
import 'package:libphonenumber_platform_interface/libphonenumber_platform_interface.dart';

class LibphonenumberDesktop extends LibPhoneNumberPlatform {
  static void registerWith() {
    LibPhoneNumberPlatform.instance = LibphonenumberDesktop();
  }

  @override
  isValidPhoneNumber(phoneNumber, isoCode) async {
    assert(phoneNumber.isNotEmpty);
    assert(isoCode.isNotEmpty);
    return await api.isValidNumber(phoneNumber: phoneNumber, region: isoCode);
  }

  @override
  normalizePhoneNumber(phoneNumber, isoCode) async {
    assert(phoneNumber.isNotEmpty);
    assert(isoCode.isNotEmpty);
    return await api.normalizePhoneNumber(
      phoneNumber: phoneNumber,
      region: isoCode,
    );
  }
}
