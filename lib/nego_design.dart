import 'nego_design_platform_interface.dart';
export '_import.dart';

class NegoDesign {
  Future<String?> getPlatformVersion() {
    return NegoDesignPlatform.instance.getPlatformVersion();
  }
}
