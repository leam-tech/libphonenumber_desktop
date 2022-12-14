#ifndef FLUTTER_PLUGIN_LIBPHONENUMBER_DESKTOP_PLUGIN_H_
#define FLUTTER_PLUGIN_LIBPHONENUMBER_DESKTOP_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _LibphonenumberDesktopPlugin LibphonenumberDesktopPlugin;
typedef struct {
  GObjectClass parent_class;
} LibphonenumberDesktopPluginClass;

FLUTTER_PLUGIN_EXPORT GType libphonenumber_desktop_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void libphonenumber_desktop_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_LIBPHONENUMBER_DESKTOP_PLUGIN_H_
