import 'package:walid_s_application3/presentation/android_mthree_container_screen/android_mthree_container_screen.dart';
import 'package:walid_s_application3/presentation/android_mthree_container_screen/binding/android_mthree_container_binding.dart';
import 'package:walid_s_application3/presentation/log_in_screen/log_in_screen.dart';
import 'package:walid_s_application3/presentation/log_in_screen/binding/log_in_binding.dart';
import 'package:walid_s_application3/presentation/k3_screen/k3_screen.dart';
import 'package:walid_s_application3/presentation/k3_screen/binding/k3_binding.dart';
import 'package:walid_s_application3/presentation/k4_screen/k4_screen.dart';
import 'package:walid_s_application3/presentation/k4_screen/binding/k4_binding.dart';
import 'package:walid_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:walid_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String androidMthreePage = '/android_mthree_page';

  static const String androidMthreeContainerScreen =
      '/android_mthree_container_screen';

  static const String logInScreen = '/log_in_screen';

  static const String k3Screen = '/k3_screen';

  static const String k4Screen = '/k4_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: androidMthreeContainerScreen,
      page: () => AndroidMthreeContainerScreen(),
      bindings: [
        AndroidMthreeContainerBinding(),
      ],
    ),
    GetPage(
      name: logInScreen,
      page: () => LogInScreen(),
      bindings: [
        LogInBinding(),
      ],
    ),
    GetPage(
      name: k3Screen,
      page: () => K3Screen(),
      bindings: [
        K3Binding(),
      ],
    ),
    GetPage(
      name: k4Screen,
      page: () => K4Screen(),
      bindings: [
        K4Binding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => AndroidMthreeContainerScreen(),
      bindings: [
        AndroidMthreeContainerBinding(),
      ],
    )
  ];
}
