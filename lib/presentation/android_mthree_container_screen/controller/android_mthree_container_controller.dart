import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/android_mthree_container_screen/models/android_mthree_container_model.dart';

/// A controller class for the AndroidMthreeContainerScreen.
///
/// This class manages the state of the AndroidMthreeContainerScreen, including the
/// current androidMthreeContainerModelObj
class AndroidMthreeContainerController extends GetxController {
  Rx<AndroidMthreeContainerModel> androidMthreeContainerModelObj =
      AndroidMthreeContainerModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offNamed(
        AppRoutes.logInScreen,
      );
    });
  }
}
