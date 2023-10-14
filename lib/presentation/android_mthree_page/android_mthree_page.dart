import '../android_mthree_page/widgets/createreport_item_widget.dart';
import 'controller/android_mthree_controller.dart';
import 'models/android_mthree_model.dart';
import 'models/createreport_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_image.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_image_1.dart';
import 'package:walid_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:walid_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:walid_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AndroidMthreePage extends StatelessWidget {
  AndroidMthreePage({Key? key}) : super(key: key);

  AndroidMthreeController controller =
      Get.put(AndroidMthreeController(AndroidMthreeModel().obs));

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
                    margin:
                        EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v)),
                centerTitle: true,
                title: AppbarTitle(text: "lbl".tr),
                actions: [
                  AppbarImage1(
                      svgPath: ImageConstant.imgUser,
                      margin: EdgeInsets.symmetric(
                          horizontal: 16.h, vertical: 20.v))
                ],
                styleType: Style.bgFill),
            body: Container(
                width: 412.h,
                padding: EdgeInsets.symmetric(horizontal: 29.h, vertical: 14.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomTextFormField(
                          controller: controller.groupTwoController,
                          hintText: "msg".tr,
                          textInputAction: TextInputAction.done,
                          maxLines: 6,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 22.v),
                          borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                          filled: true,
                          fillColor: appTheme.whiteA700),
                      Padding(
                          padding: EdgeInsets.only(top: 16.v, right: 3.h),
                          child: Text("lbl2".tr,
                              style: theme.textTheme.titleLarge)),
                      SizedBox(height: 11.v),
                      Expanded(
                          child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 182.v,
                                      crossAxisCount: 2,
                                      mainAxisSpacing: 19.h,
                                      crossAxisSpacing: 19.h),
                              physics: BouncingScrollPhysics(),
                              itemCount: controller.androidMthreeModelObj.value
                                  .createreportItemList.value.length,
                              itemBuilder: (context, index) {
                                CreatereportItemModel model = controller
                                    .androidMthreeModelObj
                                    .value
                                    .createreportItemList
                                    .value[index];
                                return CreatereportItemWidget(model,
                                    onTapCreatereport: () {
                                  onTapCreatereport();
                                });
                              })))
                    ]))));
  }

  /// Navigates to the k3Screen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the k3Screen.
  onTapCreatereport() {
    Get.toNamed(
      AppRoutes.k3Screen,
    );
  }
}
