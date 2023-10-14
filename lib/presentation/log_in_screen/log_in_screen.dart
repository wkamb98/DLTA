import 'controller/log_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';
import 'package:walid_s_application3/widgets/custom_elevated_button.dart';
import 'package:walid_s_application3/widgets/custom_outlined_button.dart';
import 'package:walid_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  const LogInScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.indigo800,
        body: SizedBox(
          width: 412.h,
          child: Column(
            children: [
              SizedBox(height: 70.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 32.h,
                      right: 32.h,
                      bottom: 10.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgLayer1,
                          height: 124.v,
                          width: 256.h,
                        ),
                        SizedBox(height: 61.v),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 13.h,
                            vertical: 20.v,
                          ),
                          decoration: AppDecoration.outlineBlack.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder5,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "msg3".tr,
                                style: theme.textTheme.titleLarge,
                              ),
                              SizedBox(height: 21.v),
                              CustomTextFormField(
                                controller: controller.usernameoneController,
                                hintText: "lbl6".tr,
                                hintStyle: CustomTextStyles.bodyLargeGray800,
                                contentPadding: EdgeInsets.all(13.h),
                              ),
                              SizedBox(height: 34.v),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderTL4,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    CustomTextFormField(
                                      controller:
                                          controller.passwordoneController,
                                      hintText: "lbl7".tr,
                                      hintStyle:
                                          CustomTextStyles.bodyLargeGray800,
                                      textInputAction: TextInputAction.done,
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 15.h,
                                        vertical: 13.v,
                                      ),
                                    ),
                                    Container(
                                      width: 84.h,
                                      margin: EdgeInsets.only(
                                        top: 1.v,
                                        right: 16.h,
                                      ),
                                      child: Text(
                                        "lbl8".tr,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          height: 1.33,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 9.v),
                              CustomElevatedButton(
                                width: 138.h,
                                text: "lbl9".tr,
                              ),
                              SizedBox(height: 5.v),
                            ],
                          ),
                        ),
                        SizedBox(height: 113.v),
                        Text(
                          "msg4".tr,
                          style: CustomTextStyles.bodySmallWhiteA700,
                        ),
                        SizedBox(height: 8.v),
                        CustomOutlinedButton(
                          width: 123.h,
                          text: "lbl10".tr,
                        ),
                        SizedBox(height: 70.v),
                        SizedBox(
                          width: 108.h,
                          child: Divider(
                            color: appTheme.whiteA700,
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
      ),
    );
  }
}
