import 'controller/android_mthree_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/android_mthree_page/android_mthree_page.dart';
import 'package:walid_s_application3/widgets/custom_bottom_bar.dart';

class AndroidMthreeContainerScreen
    extends GetWidget<AndroidMthreeContainerController> {
  const AndroidMthreeContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.androidMthreePage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Label:
        return AppRoutes.androidMthreePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.androidMthreePage:
        return AndroidMthreePage();
      default:
        return DefaultWidget();
    }
  }
}
