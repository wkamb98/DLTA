import '../controller/k3_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K3Screen.
///
/// This class ensures that the K3Controller is created when the
/// K3Screen is first loaded.
class K3Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K3Controller());
  }
}
