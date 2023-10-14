import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/k4_screen/models/k4_model.dart';

/// A controller class for the K4Screen.
///
/// This class manages the state of the K4Screen, including the
/// current k4ModelObj
class K4Controller extends GetxController {
  Rx<K4Model> k4ModelObj = K4Model().obs;
}
