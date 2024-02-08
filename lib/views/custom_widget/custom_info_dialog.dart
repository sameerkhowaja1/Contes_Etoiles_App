import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';

class CustomInfoDialog extends StatelessWidget {
  const CustomInfoDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      padding: EdgeInsets.only(left: 40.w, right: 40.w, top: 60.h),
      decoration: BoxDecoration(color: Colors.transparent),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topRight,
              child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    kCancelIcon,
                    width: 28.w,
                    height: 28.h,
                  ))),
          SizedBox(
            height: 60.h,
          ),
          Center(
            child: SizedBox(
                width: Get.width * 0.90,
                child: Text(
                    'L\'application "Contes Étoilés" offre un trésor de 25 histoires courtes pour les oreilles des enfants de 3 à 10 ans.\n\nChaque conte transporte les jeunes auditeurs dans un monde enchanté, sans distractions d\'animations, afin de favoriser leur concentration et diction.\n\nDes histoires, d’une durée étudiée pour capter l’attention sans saturer l’esprit.\n\nChaque histoire est soigneusement élaborée pour transmettre une belle morale, incitant ainsi les enfants à réfléchir tout en se divertissant.\n\n"Contes Étoilés" nourrit l\'imagination des plus jeunes, les encourageant à rêver, grandir et apprendre à travers la magie des mots et un vocabulaire riche.',
                    style: TextStyle(
                        wordSpacing: 2,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Metropolis',
                        color: kWhiteColor))),
          ),
        ],
      ),
    );
  }
}
