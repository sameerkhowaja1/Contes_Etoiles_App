import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/views/screens/story_screen/controller/story_player_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../custom_widget/custom_aduio_widge.dart';
import '../../custom_widget/custom_scaffold.dart';

class StoryPlayerScreen extends GetView<StoryScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: "Tu écoutes...",
      scaffoldKey: controller.scaffoldKey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 140.h,
          ),
          Center(
            child: Obx(
              () => Image.network(
                width: 300.w,
                height: 300.h,
                controller.storyTileList[controller.storyIndex.value].storyThumbnail,
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
            ),
          ),
          SizedBox(
            height: 90.h,
          ),
          Container(
              width: Get.width * 0.50,
              child: Obx(
                () => Text(
                  textAlign: TextAlign.center,
                  controller.storyTileList[controller.storyIndex.value].storyName,
                  style: TextStyle(fontSize: 23.sp, fontFamily: 'Metropolis', color: kWhiteColor, fontWeight: FontWeight.w500),
                ),
              )),
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: StreamBuilder<PositionData>(
              stream: controller.positionDataStream,
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return SeekBar(
                  controller: controller,
                  duration: positionData?.duration ?? Duration.zero,
                  position: positionData?.position ?? Duration.zero,
                  bufferedPosition: positionData?.bufferedPosition ?? Duration.zero,
                  onChangeEnd: (newPosition) {
                    print('===============new pos $newPosition');
                    controller.player.seek(newPosition);
                  },
                );
              },
            ),
          ),
          /* SliderTheme(
              data: SliderThemeData(
                  overlayShape: SliderComponentShape.noOverlay, thumbShape: RoundSliderOverlayShape(overlayRadius: 0), trackHeight: 5),
              child: Slider(
                value: 60,
                onChanged: (newPosition) {},
                activeColor: kPrimaryColor,
                inactiveColor: kWhiteColor,
                min: 0,
                max: 100,
              )),*/
          /* SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '0:36',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Metropolis',
                    color: kWhiteColor,
                  ),
                ),
                IconButton(onPressed: () {}, icon: Image.asset(width: 48, height: 48, kSkipPreviousIcon, color: kWhiteColor)),
                Obx(
                  () => Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        controller.isPlaying.value == false ? Icons.play_arrow_rounded : Icons.pause_rounded,
                        color: kWhiteColor,
                        size: 60,
                      )),
                ),
                IconButton(onPressed: () {}, icon: Image.asset(width: 48, height: 48, kSkipNextIcon, color: kWhiteColor)),
                Text(
                  '3:40',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Metropolis',
                    color: kWhiteColor,
                  ),
                ),
              ],
            ),
          )*/
        ],
      ),
    );
  }
}
