//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <libphonenumber_desktop/lib_phone_number_desktop_plugin_c_api.h>
#include <permission_handler_windows/permission_handler_windows_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  LibPhoneNumberDesktopPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("LibPhoneNumberDesktopPluginCApi"));
  PermissionHandlerWindowsPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("PermissionHandlerWindowsPlugin"));
}
