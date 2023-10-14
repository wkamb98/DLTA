import '../controller/android_mthree_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AndroidMthreeContainerScreen.
///
/// This class ensures that the AndroidMthreeContainerController is created when the
/// AndroidMthreeContainerScreen is first loaded.
class AndroidMthreeContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AndroidMthreeContainerController());
  }
}
