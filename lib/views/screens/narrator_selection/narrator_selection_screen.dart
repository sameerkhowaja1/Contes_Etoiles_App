import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/utils/app_images.dart';
import 'package:contes_etoiles/views/screens/narrator_selection/controller/narrator_selection_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/app_strings.dart';
import '../../custom_widget/custom_scaffold.dart';

class NarratorSelectionScreen extends GetView<NarratorSelectionController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: "Qui va te lire l’histoire?",
      scaffoldKey: controller.scaffoldKey,
      body: Container(
          color: kBlackColor,
          width: Get.width,
          height: Get.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.selectedNarrator.value = 'Ambre';
                          Get.toNamed(kStoriesListingRoute, arguments: {"selectedNarrator": "Ambre"});
                        },
                        child: CircleAvatar(
                          backgroundColor: controller.selectedNarrator.value == 'Ambre' ? kWhiteColor : Colors.transparent,
                          radius: controller.selectedNarrator.value == 'Ambre' ? 112 : 110,
                          child: Image.asset(
                            kAmbreImg,
                            width: 220,
                            height: 220,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Ambre',
                        style: TextStyle(
                          fontSize: 52.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Family',
                          color: controller.selectedNarrator.value == 'Ambre' ? kWhiteColor : kPrimaryColor,
                        ),
                      ),
                      //SizedBox(height: 5.h,),
                      Text(
                        'Voix enfantine et douce.',
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: 'Metropolis', color: Color(0xffC1C1C1)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60.h,
                ),
                Obx(
                  () => Column(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.selectedNarrator.value = 'Ewan';
                          Get.toNamed(kStoriesListingRoute, arguments: {"selectedNarrator": "Ewan"});
                        },
                        child: CircleAvatar(
                          backgroundColor: controller.selectedNarrator.value == 'Ewan' ? kWhiteColor : Colors.transparent,
                          radius: controller.selectedNarrator.value == 'Ewan' ? 112 : 110,
                          child: Image.asset(
                            kEwanImg,
                            width: 220,
                            height: 220,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Ewan',
                        style: TextStyle(
                          fontSize: 52.sp,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Family',
                          color: controller.selectedNarrator.value == 'Ewan' ? kWhiteColor : kPrimaryColor,
                        ),
                      ),
                      //SizedBox(height: 5.h,),
                      Text(
                        'Voix adulte et calme.',
                        style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400, fontFamily: 'Metropolis', color: Color(0xffC1C1C1)),
                      ),
                    ],
                  ),
                ),
                //SizedBox(height: 80.h,)
              ],
            ),
          )),
    );
  }
}
