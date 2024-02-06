import 'dart:math';

import 'package:contes_etoiles/model/stories_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../database/database.dart';
import '../../utils/app_colors.dart';

class CustomBookTileWidget extends StatelessWidget {
  final StoriesModel storiesList;
  final Story storyLocal;
  CustomBookTileWidget({super.key, required this.storiesList, required this.storyLocal});

  @override
  Widget build(BuildContext context) {
    List<String> duration = storiesList.totalDuration.split(":");
    String totalDuration = duration[0] != "00" ? " (${duration[0]} hr. ${duration[1]} min. ${duration[2]})" : " (${duration[1]} min. ${duration[2]})";

    DateTime dateTime = DateFormat("hh:mm:ss").parse(storiesList.totalDuration);
    Duration totalStoryDuration =
        Duration(hours: dateTime.hour, minutes: dateTime.minute, seconds: dateTime.second, milliseconds: dateTime.millisecond);
    print('=================totalStoryDuration.inMilliseconds.toDouble() ${totalStoryDuration.inMilliseconds.toDouble()}');
    print('=================storiesList.durationPlayed ${storyLocal.durationPlayed}');

    //Get Played Duration of story
    Duration playedDuration = Duration();
    if (storyLocal.durationPlayed.isNotEmpty) {
      DateTime
          dateTime = /*storyLocal.durationPlayed.split(":")[0] != "00"
          ? DateFormat("hh:mm:ss.SSS").parse(storyLocal.durationPlayed)
          : */
          DateFormat("hh:mm:ss").parse(storyLocal.durationPlayed);
      print('===============dateTime ${dateTime.hour}');
      playedDuration = Duration(hours: dateTime.hour, minutes: dateTime.minute, seconds: dateTime.second, milliseconds: dateTime.millisecond);
    }
    return Container(
        padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.w, right: 10.w),
        margin: EdgeInsets.only(top: 30.h),
        width: Get.width,
        decoration: BoxDecoration(color: kBookTileBg, borderRadius: BorderRadius.circular(9)),
        // height: Get.height * 0.10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                /*Image.asset(
                  storiesList.storyImage,
                  width: 80.w,
                  height: 80.h,
                ),*/
                Image.network(
                  width: 50,
                  height: 50,
                  storiesList.storyThumbnail,
                  fit: BoxFit.cover,
                  frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                    return child;
                  },
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      // width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: kPrimaryColor,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (context, url, error) => SizedBox(
                    child: Center(
                      child: Text("!",
                          style: TextStyle(fontSize: 18.sp, height: 1.2, fontWeight: FontWeight.w500, fontFamily: 'Metropolis', color: kBlackColor)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25.w,
                ),
                Container(
                  width: Get.width * 0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: storiesList.storyName,
                            style:
                                TextStyle(fontSize: 18.sp, height: 1.2, fontWeight: FontWeight.w500, fontFamily: 'Metropolis', color: kBlackColor)),
                        TextSpan(
                            text: totalDuration,
                            style: TextStyle(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Metropolis',
                                fontStyle: FontStyle.italic,
                                color: kGreyColor))
                      ])),
                      SizedBox(
                        height: 25.h,
                      ),
                      SliderTheme(
                          data: SliderThemeData(
                              overlayShape: SliderComponentShape.noOverlay, thumbShape: RoundSliderOverlayShape(overlayRadius: 0), trackHeight: 10),
                          child: Slider(
                            value: min(storyLocal.durationPlayed.isNotEmpty ? playedDuration.inMilliseconds.toDouble() : 0,
                                totalStoryDuration.inMilliseconds.toDouble()),
                            //value: storyLocal.durationPlayed.isNotEmpty ? playedDuration.inMilliseconds.toDouble() : 0,
                            onChanged: (value) {},
                            activeColor: kPrimaryColor,
                            inactiveColor: kWhiteColor,
                            min: 0.0,
                            max: totalStoryDuration.inMilliseconds.toDouble(),
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
        ));
  }
}
