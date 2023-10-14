import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/k3_screen/models/k3_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the K3Screen.
///
/// This class manages the state of the K3Screen, including the
/// current k3ModelObj
class K3Controller extends GetxController {
  TextEditingController reportnumberController = TextEditingController();

  TextEditingController dateoneController = TextEditingController();

  TextEditingController addressoneController = TextEditingController();

  TextEditingController numberofdamagedController = TextEditingController();

  Rx<K3Model> k3ModelObj = K3Model().obs;

  @override
  void onClose() {
    super.onClose();
    reportnumberController.dispose();
    dateoneController.dispose();
    addressoneController.dispose();
    numberofdamagedController.dispose();
  }
}
