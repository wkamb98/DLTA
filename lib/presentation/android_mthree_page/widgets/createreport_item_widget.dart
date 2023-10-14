import '../controller/android_mthree_controller.dart';
import '../models/createreport_item_model.dart';
import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class CreatereportItemWidget extends StatelessWidget {
  CreatereportItemWidget(
    this.createreportItemModelObj, {
    Key? key,
    this.onTapCreatereport,
  }) : super(
          key: key,
        );

  CreatereportItemModel createreportItemModelObj;

  var controller = Get.find<AndroidMthreeController>();

  VoidCallback? onTapCreatereport;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCreatereport?.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 50.h,
          vertical: 23.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 29.v),
            CustomImageView(
              svgPath: ImageConstant.imgDownload,
              height: 47.adaptSize,
              width: 47.adaptSize,
            ),
            SizedBox(height: 28.v),
            Obx(
              () => Text(
                createreportItemModelObj.Txt!.value,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
