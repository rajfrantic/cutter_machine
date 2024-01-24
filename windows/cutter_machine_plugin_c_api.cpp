#include "include/cutter_machine/cutter_machine_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "cutter_machine_plugin.h"

void CutterMachinePluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  cutter_machine::CutterMachinePlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
