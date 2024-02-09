import 'package:contes_etoiles/utils/app_images.dart';
import 'package:contes_etoiles/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../utils/app_colors.dart';
import '../custom_widget/custom_info_dialog.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(image: DecorationImage(image: AssetImage(kSplashBg), fit: BoxFit.fill)),
        child: Stack(
          children: [
            Positioned(
                top: 50.h,
                left: 20.w,
                child: InkWell(
                    onTap: () {
                      showGeneralDialog(
                        context: context,
                        pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
                          return Dialog(
                            backgroundColor: kBlackColor.withOpacity(0.80),
                            insetPadding: EdgeInsets.zero,
                            child: CustomInfoDialog(),
                          );
                        },
                      );
                    },
                    child: Image.asset(
                      kInfoIcon,
                      width: 40.w,
                      height: 40.h,
                    ))),
            Positioned(
                top: 240.h,
                left: 160.w,
                child: InkWell(
                  onTap: () {
                    Get.toNamed(kNarratorSelectionRoute);
                  },
                  child: Image.asset(
                    kPlayButton,
                    width: 120.w,
                    height: 120.h,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
