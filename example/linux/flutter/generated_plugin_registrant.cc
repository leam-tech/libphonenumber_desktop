//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <libphonenumber_desktop/lib_phone_number_desktop_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) libphonenumber_desktop_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "LibPhoneNumberDesktopPlugin");
  lib_phone_number_desktop_plugin_register_with_registrar(libphonenumber_desktop_registrar);
}
