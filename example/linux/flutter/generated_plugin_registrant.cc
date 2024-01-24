//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <cutter_machine/cutter_machine_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) cutter_machine_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "CutterMachinePlugin");
  cutter_machine_plugin_register_with_registrar(cutter_machine_registrar);
}
