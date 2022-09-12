//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <libphonenumber_desktop/libphonenumber_desktop.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) libphonenumber_desktop_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "LibphonenumberDesktop");
  libphonenumber_desktop_register_with_registrar(libphonenumber_desktop_registrar);
}
