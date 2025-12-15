import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'nego_design_platform_interface.dart';

/// An implementation of [NegoDesignPlatform] that uses method channels.
class MethodChannelNegoDesign extends NegoDesignPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('nego_design');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
