import 'controller/k4_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/android_mthree_page/android_mthree_page.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:walid_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:walid_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class K4Screen extends GetWidget<K4Controller> {
  const K4Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          leadingWidth: 40.h,
          leading: AppbarImage(
            svgPath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 20.v,
              bottom: 20.v,
            ),
          ),
          centerTitle: true,
          title: AppbarTitle(
            text: "lbl4".tr,
          ),
          actions: [
            AppbarImage1(
              svgPath: ImageConstant.imgUser,
              margin: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 20.v,
              ),
            ),
          ],
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: 412.h,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 29.h,
                      right: 29.h,
                      bottom: 5.v,
                    ),
                    child: DottedBorder(
                      color: appTheme.gray40001,
                      padding: EdgeInsets.only(
                        left: 1.h,
                        top: 1.v,
                        right: 1.h,
                        bottom: 1.v,
                      ),
                      strokeWidth: 1.h,
                      radius: Radius.circular(5),
                      borderType: BorderType.RRect,
                      dashPattern: [
                        9,
                        9,
                      ],
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 77.h,
                          vertical: 14.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 16.v),
                            CustomImageView(
                              svgPath: ImageConstant.imgMap,
                              height: 58.adaptSize,
                              width: 58.adaptSize,
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "msg5".tr,
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
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
