import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cutter_machine/cutter_machine_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelCutterMachine platform = MethodChannelCutterMachine();
  const MethodChannel channel = MethodChannel('cutter_machine');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  // test('getPlatformVersion',, () async {
  //   expect(await platform.searchBluetooth(pageName), '42');
  // });
}
