import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_styles.dart';
//import '../../utils/common_code.dart';

class CustomAppBar extends StatelessWidget {
  final String screenTitle;
  final String className;
  final VoidCallback? onBackButtonTap;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<Widget> actions;
  final double leadingWidth;
  final Color screenTitleColor;
  final Widget? leadingWidget;
  final Widget? title;
  final bool backIcon;

  const CustomAppBar({
    super.key,
    this.screenTitle = "",
    this.backIcon = true,
    this.className = "",
    this.actions = const [],
    this.onBackButtonTap,
    required this.scaffoldKey,
    this.leadingWidth = 56,
    this.screenTitleColor = kWhiteColor,
    this.leadingWidget,
    this.title
  });

  @override
  Widget build(BuildContext context) {
    print('=============class name$className ${leadingWidth == 0.0}');
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: Colors.transparent,

        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: actions,
      leadingWidth: leadingWidth,
      leading: leadingWidth > 0
          ? GestureDetector(
              onTap: onBackButtonTap ??
                  () {
                    print('======on tap menu $className --- $screenTitle');
                    //CommonCode().removeTextFieldFocus();
                    if ((className == "MainView" && screenTitle.isEmpty)) {
                      print('--------open drawer');
                      scaffoldKey.currentState?.openDrawer();
                    } else {
                      Get.back();
                    }
                  },
              child: leadingWidget ?? Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: backIcon ?CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  child: Icon(
                    Icons.arrow_back_sharp,
                   color: kWhiteColor,
                  ),
                ) : Container(
                  width: 0.w,
                  height: 0.w,
                ),
              ),
            )
          : SizedBox(
              width: 0,
              height: 0,
            ),
      title: title ?? Text(
        screenTitle,
        style: AppStyles.appBarHeadingTextStyle().copyWith(fontSize: 24.sp, fontWeight: FontWeight.w700, color: screenTitleColor),
      ),
      centerTitle: true,
      foregroundColor: Colors.transparent,
    );
  }
}