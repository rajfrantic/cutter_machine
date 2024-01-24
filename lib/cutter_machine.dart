
import 'cutter_machine_platform_interface.dart';

class CutterMachine {
  Future<String?> searchBluetooth() {
    return CutterMachinePlatform.instance.searchBluetooth();
  }

  Future<String?> connectBluetooth(address) {
    return CutterMachinePlatform.instance.connectBluetooth(address);
  }

  Future<String?> cutFileBluetooth(file) {
    return CutterMachinePlatform.instance.cutFileBluetooth(file);
  }
  Future<String?> cutFileWithHeightAndWidthBluetooth(file,{required int xoffset,required int yoffset,required int width,required int height , bool xflip = false, bool yflip = false,
    int ang = 0, bool section = false  }) {
    return CutterMachinePlatform.instance.cutFileWithHeightAndWidthBluetooth(file, xoffset: xoffset, yoffset: yoffset, width: width, height: height,ang: 0,section: false,xflip: false,yflip: false);
  }
}
