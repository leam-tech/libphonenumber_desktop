# libphonenumber_plugin

Google's [libphonenumber](https://github.com/google/libphonenumber) for flutter desktop. This is an endorsed plugin for `libphonenumber_plugin`  currently under heavy development

## Usage

You can use this plugin 
- just for flutter desktop
- use it as an endorsed plugin for `libphonenumber_plugin` (preferred)

### Use as endorsed plugin

Add following deps:
```yml
dependencies:
  libphonenumber_plugin: ^0.2.3
  libphonenumber_plugin_desktop:
    git:
      url: https://github.com/leam-tech/libphonenumber_desktop.git
```

In `main.dart`

```dart
import 'package:libphonenumber_desktop/libphonenumber_desktop.dart';
import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';

void main() {
  if(!kIsWeb){
    if (Platform.isMacOS || Platform.isLinux || Platform.isWindows) {
      LibphonenumberDesktop.registerWith();
    }
  }
  runApp(const MyApp());
}
```

#### Validate number with `isValidPhoneNumber`

```dart
await PhoneNumberUtil.isValidPhoneNumber("5231231233", 'AE')
```
#### Normalize number with `normalizeNumber`

```dart
await PhoneNumberUtil.normalizePhoneNumber("5231231233", 'AE')
```
