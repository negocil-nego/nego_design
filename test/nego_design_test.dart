import 'package:flutter_test/flutter_test.dart';
import 'package:nego_design/nego_design.dart';
import 'package:nego_design/nego_design_platform_interface.dart';
import 'package:nego_design/nego_design_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockNegoDesignPlatform
    with MockPlatformInterfaceMixin
    implements NegoDesignPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final NegoDesignPlatform initialPlatform = NegoDesignPlatform.instance;

  test('$MethodChannelNegoDesign is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelNegoDesign>());
  });

  test('getPlatformVersion', () async {
    NegoDesign negoDesignPlugin = NegoDesign();
    MockNegoDesignPlatform fakePlatform = MockNegoDesignPlatform();
    NegoDesignPlatform.instance = fakePlatform;

    expect(await negoDesignPlugin.getPlatformVersion(), '42');
  });
}
