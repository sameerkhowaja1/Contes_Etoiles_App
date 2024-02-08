import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/views/screens/story_screen/controller/story_player_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../database/database.dart';
import '../../../database/local_db_services.dart';
import '../../custom_widget/custom_aduio_widge.dart';
import '../../custom_widget/custom_scaffold.dart';

class StoryPlayerScreen extends GetView<StoryScreenController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScaffold(
      className: runtimeType.toString(),
      screenName: "Tu écoutes...",
      padding: EdgeInsets.only(left: 40.w, right: 40.w),
      scaffoldKey: controller.scaffoldKey,
      onBackButtonPressed: () async {
        controller.player.stop();
        Get.back(result: true);
      },
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          print('===========swipe rigth');
        },
        child: PageView.builder(
            onPageChanged: null,
            physics: NeverScrollableScrollPhysics(),
            controller: controller.pageController,
            /*onPageChanged: (index) async {
              print('============page index ===== $index ${controller.pageController.page?.floor()}  controller.isRight ${controller.isRight}');
              controller.player.stop();
              if (controller.setPlayerDuration().inMilliseconds.toDouble() < controller.audioPlayerPosition.inMilliseconds.toDouble()) {
                await LocalDbServices.updateStoriesTime(controller.storyTileList[controller.storyIndex.value].storyId,
                    controller.audioPlayerPosition.toString(), controller.reamingAudioMinutes.toString());

                Story storyyyyy = await LocalDbServices.storyById(controller.storyLocal[controller.storyIndex.value].storyId);

                controller.storyLocal[controller.storyIndex.value] = storyyyyy;
              }
              if (controller.isRight.isTrue) {
                controller.storyIndex++;
              } else {
                controller.storyIndex--;
              }
              controller.initStory();
            },*/
            itemCount: controller.storyTileList.length,
            itemBuilder: (context, position) {
              print('=============positionpositionposition $position ');
              return Dismissible(
                key: ValueKey(position),
                confirmDismiss: (DismissDirection direction) async {
                  if (direction == DismissDirection.startToEnd &&
                      controller.storyIndex > 0) {
                    print('==================swiping left');
                    controller.player.stop();
                    if (controller
                            .setPlayerDuration()
                            .inMilliseconds
                            .toDouble() <
                        controller.audioPlayerPosition.inMilliseconds
                            .toDouble()) {
                      await LocalDbServices.updateStoriesTime(
                          controller.storyTileList[controller.storyIndex.value]
                              .storyId,
                          controller.audioPlayerPosition.toString(),
                          controller.reamingAudioMinutes.toString());

                      Story storyyyyy = await LocalDbServices.storyById(
                          controller
                              .storyLocal[controller.storyIndex.value].storyId);

                      controller.storyLocal[controller.storyIndex.value] =
                          storyyyyy;
                    }
                    controller.storyIndex--;

                    controller.initStory();
                  } else if (direction == DismissDirection.endToStart &&
                      controller.storyIndex <
                          (controller.storyTileList.length - 1)) {
                    print(
                        '==================swiping right ${controller.storyIndex}');
                    controller.player.stop();
                    if (controller
                            .setPlayerDuration()
                            .inMilliseconds
                            .toDouble() <
                        controller.audioPlayerPosition.inMilliseconds
                            .toDouble()) {
                      await LocalDbServices.updateStoriesTime(
                          controller.storyTileList[controller.storyIndex.value]
                              .storyId,
                          controller.audioPlayerPosition.toString(),
                          controller.reamingAudioMinutes.toString());

                      Story storyyyyy = await LocalDbServices.storyById(
                          controller
                              .storyLocal[controller.storyIndex.value].storyId);

                      controller.storyLocal[controller.storyIndex.value] =
                          storyyyyy;
                    }
                    controller.storyIndex++;

                    controller.initStory();
                  }

                  return false;
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 90.h,
                    ),
                    Center(
                      child: Obx(
                        () => controller.storyTileList.isNotEmpty
                            ? Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r)),
                                margin:
                                    EdgeInsets.only(left: 10.w, right: 10.w),
                                child: Image.network(
                                  controller
                                      .storyTileList[
                                          controller.storyIndex.value]
                                      .storyThumbnail,
                                  fit: BoxFit.cover,
                                  frameBuilder: (context, child, frame,
                                      wasSynchronouslyLoaded) {
                                    return child;
                                  },
                                  loadingBuilder:
                                      (context, child, loadingProgress) {
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
                                  errorBuilder: (context, url, error) =>
                                      SizedBox(
                                    child: Center(
                                      child: Text("!",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              height: 1.2,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Metropolis',
                                              color: kBlackColor)),
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ),
                    ),
                    SizedBox(
                      height: 90.h,
                    ),
                    Container(
                        width: Get.width,
                        margin: EdgeInsets.only(left: 30.w, right: 30.w),
                        child: Obx(
                          () => Text(
                            textAlign: TextAlign.center,
                            controller.storyTileList.isNotEmpty
                                ? controller
                                    .storyTileList[controller.storyIndex.value]
                                    .storyName
                                : "",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontFamily: 'Metropolis',
                                color: kWhiteColor,
                                fontWeight: FontWeight.w500),
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
                          return controller.storyTileList.isNotEmpty
                              ? SeekBar(
                                  controller: controller,
                                  duration:
                                      positionData?.duration ?? Duration.zero,
                                  position:
                                      positionData?.position ?? Duration.zero,
                                  bufferedPosition:
                                      positionData?.bufferedPosition ??
                                          Duration.zero,
                                  onChangeEnd: (newPosition) {
                                    print(
                                        '===============new pos $newPosition');
                                    controller.player.seek(newPosition);
                                  },
                                )
                              : SizedBox.shrink();
                        },
                      ),
                    ),
                    SizedBox(
                      height: 70.h,
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
