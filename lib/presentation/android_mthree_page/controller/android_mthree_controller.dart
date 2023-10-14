import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/android_mthree_page/models/android_mthree_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the AndroidMthreePage.
///
/// This class manages the state of the AndroidMthreePage, including the
/// current androidMthreeModelObj
class AndroidMthreeController extends GetxController {
  AndroidMthreeController(this.androidMthreeModelObj);

  TextEditingController groupTwoController = TextEditingController();

  Rx<AndroidMthreeModel> androidMthreeModelObj;

  @override
  void onClose() {
    super.onClose();
    groupTwoController.dispose();
  }
}
