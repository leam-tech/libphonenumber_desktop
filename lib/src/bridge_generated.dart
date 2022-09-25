// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports

import 'dart:convert';
import 'dart:typed_data';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class Rust {
  Future<bool> isValidNumber(
      {required String phoneNumber, required String region, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kIsValidNumberConstMeta;

  Future<String> normalizePhoneNumber(
      {required String phoneNumber, required String region, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kNormalizePhoneNumberConstMeta;

  Future<RegionInfo> getRegionInfo(
      {required String phoneNumber, required String region, dynamic hint});

  FlutterRustBridgeTaskConstMeta get kGetRegionInfoConstMeta;
}

class RegionInfo {
  final int countryCode;
  final String formattedPhoneNumber;

  RegionInfo({
    required this.countryCode,
    required this.formattedPhoneNumber,
  });
}

class RustImpl extends FlutterRustBridgeBase<RustWire> implements Rust {
  factory RustImpl(ffi.DynamicLibrary dylib) => RustImpl.raw(RustWire(dylib));

  RustImpl.raw(RustWire inner) : super(inner);

  Future<bool> isValidNumber(
          {required String phoneNumber,
          required String region,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_is_valid_number(
            port_, _api2wire_String(phoneNumber), _api2wire_String(region)),
        parseSuccessData: _wire2api_bool,
        constMeta: kIsValidNumberConstMeta,
        argValues: [phoneNumber, region],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kIsValidNumberConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "is_valid_number",
        argNames: ["phoneNumber", "region"],
      );

  Future<String> normalizePhoneNumber(
          {required String phoneNumber,
          required String region,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_normalize_phone_number(
            port_, _api2wire_String(phoneNumber), _api2wire_String(region)),
        parseSuccessData: _wire2api_String,
        constMeta: kNormalizePhoneNumberConstMeta,
        argValues: [phoneNumber, region],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kNormalizePhoneNumberConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "normalize_phone_number",
        argNames: ["phoneNumber", "region"],
      );

  Future<RegionInfo> getRegionInfo(
          {required String phoneNumber,
          required String region,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_get_region_info(
            port_, _api2wire_String(phoneNumber), _api2wire_String(region)),
        parseSuccessData: _wire2api_region_info,
        constMeta: kGetRegionInfoConstMeta,
        argValues: [phoneNumber, region],
        hint: hint,
      ));

  FlutterRustBridgeTaskConstMeta get kGetRegionInfoConstMeta =>
      const FlutterRustBridgeTaskConstMeta(
        debugName: "get_region_info",
        argNames: ["phoneNumber", "region"],
      );

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list_0(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

}

// Section: wire2api
String _wire2api_String(dynamic raw) {
  return raw as String;
}

bool _wire2api_bool(dynamic raw) {
  return raw as bool;
}

RegionInfo _wire2api_region_info(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 2)
    throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
  return RegionInfo(
    countryCode: _wire2api_u32(arr[0]),
    formattedPhoneNumber: _wire2api_String(arr[1]),
  );
}

int _wire2api_u32(dynamic raw) {
  return raw as int;
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class RustWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustWire(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_is_valid_number(
    int port_,
    ffi.Pointer<wire_uint_8_list> phone_number,
    ffi.Pointer<wire_uint_8_list> region,
  ) {
    return _wire_is_valid_number(
      port_,
      phone_number,
      region,
    );
  }

  late final _wire_is_valid_numberPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_is_valid_number');
  late final _wire_is_valid_number = _wire_is_valid_numberPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  void wire_normalize_phone_number(
    int port_,
    ffi.Pointer<wire_uint_8_list> phone_number,
    ffi.Pointer<wire_uint_8_list> region,
  ) {
    return _wire_normalize_phone_number(
      port_,
      phone_number,
      region,
    );
  }

  late final _wire_normalize_phone_numberPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_normalize_phone_number');
  late final _wire_normalize_phone_number =
      _wire_normalize_phone_numberPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_region_info(
    int port_,
    ffi.Pointer<wire_uint_8_list> phone_number,
    ffi.Pointer<wire_uint_8_list> region,
  ) {
    return _wire_get_region_info(
      port_,
      phone_number,
      region,
    );
  }

  late final _wire_get_region_infoPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_region_info');
  late final _wire_get_region_info = _wire_get_region_infoPtr.asFunction<
      void Function(
          int, ffi.Pointer<wire_uint_8_list>, ffi.Pointer<wire_uint_8_list>)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list_0(
    int len,
  ) {
    return _new_uint_8_list_0(
      len,
    );
  }

  late final _new_uint_8_list_0Ptr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list_0');
  late final _new_uint_8_list_0 = _new_uint_8_list_0Ptr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    covariant ptr,
  ) {
    return _store_dart_post_cobject(
      ptr.address,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject =
      _store_dart_post_cobjectPtr.asFunction<void Function(int)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}
