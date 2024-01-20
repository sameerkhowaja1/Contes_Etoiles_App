import 'package:contes_etoiles/views/screens/narrator_list_of_books/controller/list_of_book_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../screens/model/story_model.dart';

class CustomBookTileWidget extends StatelessWidget {
 // AmbreNarratorListOfBookController controller;
  final StoryModel storyList ;
   CustomBookTileWidget({
    super.key,
    required this.storyList
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.w, right: 10.w),
        margin: EdgeInsets.only(top: 30.h),
        width: Get.width,
        decoration: BoxDecoration(
            color: kBookTileBg, borderRadius: BorderRadius.circular(9)),
        // height: Get.height * 0.10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(storyList.storyImage, width: 80.w, height: 80.h,),
                SizedBox(width: 25.w,),
                Container(
                  width: Get.width * 0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: storyList.storyName,
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    height: 1.2,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Metropolis',
                                    color: kBlackColor)),
                            TextSpan(
                                text: '(6 min.48)',
                                //' (${storyList.totalTime.toString()})',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'Metropolis',
                                    fontStyle: FontStyle.italic,
                                    color: kGreyColor))
                          ])),
                      SizedBox(height: 25.h,),
                      SliderTheme(
                          data: SliderThemeData(
                              overlayShape: SliderComponentShape.noOverlay,
                              thumbShape: RoundSliderOverlayShape(overlayRadius: 0),
                              trackHeight: 10),
                          child: Slider(

                            value: 60,
                            onChanged: (value) {},
                            activeColor: kPrimaryColor,
                            inactiveColor: kWhiteColor,
                            min: 0,
                            max: 100,
                          ))
                    ],
                  ),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryColor,
            ),
          ],
        )
    );
  }
}
