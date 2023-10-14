import '../controller/k4_controller.dart';
import 'package:get/get.dart';

/// A binding class for the K4Screen.
///
/// This class ensures that the K4Controller is created when the
/// K4Screen is first loaded.
class K4Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => K4Controller());
  }
}
