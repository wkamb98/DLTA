import 'controller/k3_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/presentation/android_mthree_page/android_mthree_page.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:walid_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:walid_s_application3/widgets/custom_bottom_bar.dart';
import 'package:walid_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K3Screen extends GetWidget<K3Controller> {
  const K3Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
            text: "lbl3".tr,
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
        ),
        body: SizedBox(
          width: 412.h,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 29.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        DottedBorder(
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
                        SizedBox(height: 26.v),
                        Text(
                          "lbl11".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                          controller: controller.reportnumberController,
                          hintText: "lbl12".tr,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgIcon,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Text(
                          "msg6".tr,
                          style: CustomTextStyles.labelLargeCairoGray500,
                        ),
                        SizedBox(height: 4.v),
                        Text(
                          "lbl13".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 6.v),
                        CustomTextFormField(
                          controller: controller.dateoneController,
                          hintText: "lbl14".tr,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgIcon,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        CustomTextFormField(
                          controller: controller.addressoneController,
                          hintText: "lbl15".tr,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgIcon,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgIcon,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 10.v),
                              ),
                              Container(
                                width: 92.h,
                                margin: EdgeInsets.only(top: 5.v),
                                child: Text(
                                  "lbl16".tr,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        CustomTextFormField(
                          controller: controller.numberofdamagedController,
                          hintText: "msg7".tr,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 15.v, 30.h, 15.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgIcon,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 48.v,
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgIcon,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 10.v),
                              ),
                              Container(
                                width: 134.h,
                                margin: EdgeInsets.only(top: 4.v),
                                child: Text(
                                  "msg8".tr,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15.h,
                            vertical: 4.v,
                          ),
                          decoration: AppDecoration.outlineIndigo.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                svgPath: ImageConstant.imgIcon,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 10.v),
                              ),
                              Container(
                                width: 168.h,
                                margin: EdgeInsets.only(top: 5.v),
                                child: Text(
                                  "msg9".tr,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
