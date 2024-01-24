import 'package:flutter_test/flutter_test.dart';
import 'package:cutter_machine/cutter_machine.dart';
import 'package:cutter_machine/cutter_machine_platform_interface.dart';
import 'package:cutter_machine/cutter_machine_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCutterMachinePlatform
    with MockPlatformInterfaceMixin
    implements CutterMachinePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> searchBluetooth() {
    // TODO: implement searchBluetooth
    throw UnimplementedError();
  }

  @override
  Future<String?> connectBluetooth(address) {
    // TODO: implement connectBluetooth
    throw UnimplementedError();
  }

  @override
  Future<String?> cutFileBluetooth(file) {
    // TODO: implement cutFileBluetooth
    throw UnimplementedError();
  }

  @override
  Future<String?> cutFileWithHeightAndWidthBluetooth(file, {required int xoffset, required int yoffset, required int width, required int height, bool xflip = false, bool yflip = false, int ang = 0, bool section = false}) {
    // TODO: implement cutFileWithHeightAndWidthBluetooth
    throw UnimplementedError();
  }

  @override
  Future<String?> setPressure(file) {
    // TODO: implement setPressure
    throw UnimplementedError();
  }

  @override
  Future<String?> setSpeed(file) {
    // TODO: implement setSpeed
    throw UnimplementedError();
  }

 
}

void main() {
  final CutterMachinePlatform initialPlatform = CutterMachinePlatform.instance;

  test('$MethodChannelCutterMachine is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCutterMachine>());
  });

  test('getPlatformVersion', () async {
    CutterMachine cutterMachinePlugin = CutterMachine();
    MockCutterMachinePlatform fakePlatform = MockCutterMachinePlatform();
    CutterMachinePlatform.instance = fakePlatform;

    expect(await cutterMachinePlugin.searchBluetooth(), '42');
  });
}
