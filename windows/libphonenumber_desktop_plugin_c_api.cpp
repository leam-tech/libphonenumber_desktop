#include "include/libphonenumber_desktop/libphonenumber_desktop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "libphonenumber_desktop_plugin.h"

void LibPhoneNumberDesktopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  libphonenumber_desktop::LibPhoneNumberDesktopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
