import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'nego_design_method_channel.dart';

abstract class NegoDesignPlatform extends PlatformInterface {
  /// Constructs a NegoDesignPlatform.
  NegoDesignPlatform() : super(token: _token);

  static final Object _token = Object();

  static NegoDesignPlatform _instance = MethodChannelNegoDesign();

  /// The default instance of [NegoDesignPlatform] to use.
  ///
  /// Defaults to [MethodChannelNegoDesign].
  static NegoDesignPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [NegoDesignPlatform] when
  /// they register themselves.
  static set instance(NegoDesignPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
