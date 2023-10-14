import 'package:flutter/material.dart';
import 'package:walid_s_application3/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavlabel,
      activeIcon: ImageConstant.imgNavlabel,
      title: "lbl_label".tr,
      type: BottomBarEnum.Label,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavlabelGray800,
      activeIcon: ImageConstant.imgNavlabelGray800,
      title: "lbl_label".tr,
      type: BottomBarEnum.Label,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavlabelGray800,
      activeIcon: ImageConstant.imgNavlabelGray800,
      title: "lbl_label".tr,
      type: BottomBarEnum.Label,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 109.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    color: appTheme.gray800,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: appTheme.gray800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 31.v),
                    child: SizedBox(
                      width: 108.h,
                      child: Divider(),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 4.v),
                    decoration: AppDecoration.fillDeepPurple.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder16,
                    ),
                    child: CustomImageView(
                      svgPath: bottomMenuList[index].activeIcon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      color: appTheme.gray900,
                      margin: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 4.v,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: CustomTextStyles.labelLargeGray90002.copyWith(
                        color: appTheme.gray90002,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Label,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
