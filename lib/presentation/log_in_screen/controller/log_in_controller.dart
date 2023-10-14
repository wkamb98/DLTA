import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the LogInScreen.
///
/// This class manages the state of the LogInScreen, including the
/// current logInModelObj
class LogInController extends GetxController {
  TextEditingController usernameoneController = TextEditingController();

  TextEditingController passwordoneController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  @override
  void onClose() {
    super.onClose();
    usernameoneController.dispose();
    passwordoneController.dispose();
  }
}
