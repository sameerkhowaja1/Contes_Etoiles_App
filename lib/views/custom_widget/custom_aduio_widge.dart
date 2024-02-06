import 'dart:math';

import 'package:contes_etoiles/database/local_db_services.dart';
import 'package:contes_etoiles/utils/app_colors.dart';
import 'package:contes_etoiles/views/screens/story_screen/controller/story_player_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

import '../../database/database.dart';
import '../../utils/app_images.dart';

class SeekBar extends StatelessWidget {
  final Duration duration;
  final Duration position;
  final Duration bufferedPosition;
  final ValueChanged<Duration>? onChanged;
  final ValueChanged<Duration>? onChangeEnd;
  final StoryScreenController controller;

  const SeekBar(
      {Key? key,
      required this.duration,
      required this.position,
      required this.bufferedPosition,
      this.onChanged,
      this.onChangeEnd,
      required this.controller})
      : super(key: key);
/*
  @override
  SeekBarState createState() => SeekBarState();
}

class SeekBarState extends State<SeekBar> {
   double? _dragValue;
  late SliderThemeData _sliderThemeData;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _sliderThemeData = SliderTheme.of(context).copyWith(
      trackHeight: 5,
    );
  }
*/
  @override
  build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SliderTheme(
              data: SliderThemeData(
                overlayShape: SliderComponentShape.noOverlay,
                trackHeight: 5,
                thumbShape: HiddenThumbComponentShape(),
                activeTrackColor: kPrimaryLightColor,
                inactiveTrackColor: Colors.grey.shade300,
              ),
              child: ExcludeSemantics(
                child: Slider(
                  min: 0.0,
                  max: duration.inMilliseconds.toDouble(),
                  value: min(bufferedPosition.inMilliseconds.toDouble(), duration.inMilliseconds.toDouble()),
                  onChanged: (value) {
                    //setState(() {
                    controller.dragValue?.value = value;
                    //});
                    if (onChanged != null) {
                      onChanged!(Duration(milliseconds: value.round()));
                    }
                  },
                  onChangeEnd: (value) {
                    if (onChangeEnd != null) {
                      onChangeEnd!(Duration(milliseconds: value.round()));
                    }
                    controller.dragValue = null;
                  },
                ),
              ),
            ),
            SliderTheme(
              data: SliderThemeData(
                overlayShape: SliderComponentShape.noOverlay,
                thumbShape: RoundSliderOverlayShape(overlayRadius: 0),
                trackHeight: 5,
                inactiveTrackColor: Colors.transparent,
              ),
              child: Slider(
                min: 0.0,
                max: duration.inMilliseconds.toDouble(),
                value: min(
                    controller.dragValue?.value != null
                        ? controller.dragValue!.value
                        : controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble()
                            ? controller.setPlayerDuration().inMilliseconds.toDouble()
                            : position.inMilliseconds.toDouble(),
                    duration.inMilliseconds.toDouble()),
                onChanged: (value) {
                  // setState(() {
                  controller.dragValue?.value = value;
                  print('===========on change $value');
                  //});
                  if (onChanged != null) {
                    onChanged!(Duration(milliseconds: value.round()));
                  }
                },
                onChangeEnd: (value) {
                  if (onChangeEnd != null) {
                    onChangeEnd!(Duration(milliseconds: value.round()));
                  }
                  controller.dragValue = null;
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30.h,
        ),
        Expanded(
          child: Container(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$')
                            .firstMatch(
                                "${controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble() ? controller.setPlayerDuration() : position}")
                            ?.group(1) ??
                        '${controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble() ? controller.setPlayerDuration() : position}',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                      color: kWhiteColor,
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: IconButton(
                        onPressed: controller.storyIndex.value == 0
                            ? null
                            : () async {
                                print(
                                    '===============backward btn clicked${controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble()}');
                                print(
                                    '===============backward btn clicked 2 --- ${controller.setPlayerDuration().inMilliseconds.toDouble()} ==== ${position.inMilliseconds.toDouble()}');

                                if (controller.setPlayerDuration().inMilliseconds.toDouble() < position.inMilliseconds.toDouble()) {
                                  /* controller.storyLocal[controller.storyIndex.value]
                                      .copyWith(durationPlayed: position.toString(), remainingDuration: _remaining.toString());*/
                                  await LocalDbServices.updateStoriesTime(
                                      controller.storyTileList[controller.storyIndex.value].storyId, position.toString(), _remaining.toString());

                                  print('=================played duraiton ${position.inSeconds.toDouble()}');
                                  Story storyyyyy = await LocalDbServices.storyById(controller.storyLocal[controller.storyIndex.value].storyId);
                                  print('=================played duraiton get backward ${storyyyyy.durationPlayed}');
                                  controller.storyLocal[controller.storyIndex.value] = storyyyyy;
                                  print('=================played duraiton set ${controller.storyLocal[controller.storyIndex.value].durationPlayed}');
                                }
                                controller.player.stop();
                                controller.storyIndex--;
                                controller.initStory();
                              },
                        icon: Image.asset(
                            width: 48, height: 48, kSkipPreviousIcon, color: controller.storyIndex.value == 0 ? kGreyColor : kWhiteColor))),
                Flexible(
                  flex: 2,
                  child: StreamBuilder<PlayerState>(
                    stream: controller.player.playerStateStream,
                    builder: (context, snapshot) {
                      final playerState = snapshot.data;
                      final processingState = playerState?.processingState;
                      final playing = playerState?.playing;
                      /*if (processingState == ProcessingState.ready) {
                        controller.player.play();
                      }*/

                      print('===========position ${position.toString()}');
                      print('===========position ${position.inSeconds.toDouble()}');

                      //todo: add to update current status in local db on age change
                      controller.audioPlayerPosition = position;
                      controller.reamingAudioMinutes = _remaining;
                      //todo: update played time to local db
                      if (position.inMilliseconds.toDouble() > 0) {
                        if (controller.totalDuration().inSeconds == position.inSeconds) {
                          print('========hey its finisged');

                          controller.updateStoryTimeInLocalDB(
                              storyId: controller.storyTileList[controller.storyIndex.value].storyId, position: "", remaining: "");
                        } else {
                          controller.updateStoryTimeInLocalDB(
                              storyId: controller.storyTileList[controller.storyIndex.value].storyId,
                              position: position.toString(),
                              remaining: _remaining.toString());
                        }

                        /*LocalDbServices.updateStoriesTime(
                            controller.storyTileList[controller.storyIndex.value].storyId, position.toString(), _remaining.toString());*/
                      }
                      if (processingState == ProcessingState.loading || processingState == ProcessingState.buffering) {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          width: 60.0,
                          height: 60.0,
                          child: const CircularProgressIndicator(color: kPrimaryColor),
                        );
                      } else if (playing != true) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
                          child: InkWell(
                            onTap: () {
                              print(
                                  '=============controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble() ${controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble()}');
                              if (controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble()) {
                                controller.player.seek(controller.setPlayerDuration());
                              }
                              /*if (controller.setPlayerDuration().inMilliseconds.toDouble() == controller.totalDuration().inMilliseconds.toDouble()) {
                                controller.player.seek(Duration.zero);
                              }*/
                              controller.player.play();
                            },
                            child: const Icon(
                              Icons.play_arrow_rounded,
                              size: 60,
                              color: kWhiteColor,
                            ),
                          ),
                        );
                      } else if (processingState != ProcessingState.completed) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
                          child: InkWell(
                            onTap: controller.player.pause,
                            child: const Icon(
                              Icons.pause_rounded,
                              size: 60,
                              color: kWhiteColor,
                            ),
                          ),
                        );
                      } else {
                        return Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
                          child: InkWell(
                            onTap: () => controller.player.seek(Duration.zero, index: controller.player.effectiveIndices!.first),
                            child: const Icon(
                              Icons.replay_rounded,
                              size: 60,
                              color: kWhiteColor,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                /* Obx(
                () => Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(color: kPrimaryColor, borderRadius: BorderRadius.circular(50)),
                    child: Icon(
                      controller.isPlaying.value == false ? Icons.play_arrow_rounded : Icons.pause_rounded,
                      color: kWhiteColor,
                      size: 60,
                    )),
              ),*/
                Expanded(
                    flex: 1,
                    child: Obx(
                      () => IconButton(
                          onPressed: controller.storyIndex.value == controller.storyTileList.length - 1
                              ? null
                              : () async {
                                  controller.player.stop();
                                  print(
                                      '===============forward btn clicked${controller.setPlayerDuration().inMilliseconds.toDouble() < position.inMilliseconds.toDouble()}');
                                  print(
                                      '===============forward btn clicked 2 --- ${controller.setPlayerDuration().inMilliseconds.toDouble()} ==== ${position.inMilliseconds.toDouble()}');
                                  if (controller.setPlayerDuration().inMilliseconds.toDouble() < position.inMilliseconds.toDouble()) {
                                    /*controller.storyLocal[controller.storyIndex.value]
                                        .copyWith(durationPlayed: position.toString(), remainingDuration: _remaining.toString());*/

                                    await LocalDbServices.updateStoriesTime(
                                        controller.storyTileList[controller.storyIndex.value].storyId, position.toString(), _remaining.toString());

                                    print('=================played duraiton ${position.inSeconds.toDouble()}');
                                    Story storyyyyy = await LocalDbServices.storyById(controller.storyLocal[controller.storyIndex.value].storyId);
                                    print('=================played duraiton get ${storyyyyy.durationPlayed}');
                                    controller.storyLocal[controller.storyIndex.value] = storyyyyy;
                                    print(
                                        '=================played duraiton set ${controller.storyLocal[controller.storyIndex.value].durationPlayed}');
                                  }

                                  controller.storyIndex++;
                                  controller.initStory();
                                },
                          icon: Image.asset(
                              width: 48,
                              height: 48,
                              kSkipNextIcon,
                              color: controller.storyIndex.value == controller.storyTileList.length - 1 ? kGreyColor : kWhiteColor)),
                    )),
                Expanded(
                  flex: 1,
                  child: Text(
                    textAlign: TextAlign.right,
                    RegExp(r'((^0*[1-9]\d*:)?\d{2}:\d{2})\.\d+$').firstMatch("$_remaining")?.group(1) ?? '$_remaining',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                      color: kWhiteColor,
                    ),
                  ),
                )
                /*Text(
                    '3:40',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Metropolis',
                      color: kWhiteColor,
                    ),
                  ),*/
              ],
            ),
          ),
        )
      ],
    );
  }

  Duration get _remaining {
    if (controller.setPlayerDuration().inMilliseconds.toDouble() > position.inMilliseconds.toDouble()) {
      return duration - controller.setPlayerDuration();
    }
    return duration - position;
  }
}

class HiddenThumbComponentShape extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) => Size.zero;

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {}
}

class PositionData {
  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;

  PositionData(this.position, this.bufferedPosition, this.duration);
}

//todo: not in use
void showSliderDialog({
  required BuildContext context,
  required String title,
  required int divisions,
  required double min,
  required double max,
  String valueSuffix = '',
  // TODO: Replace these two by ValueStream.
  required double value,
  required Stream<double> stream,
  required ValueChanged<double> onChanged,
}) {
  showDialog<void>(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title, textAlign: TextAlign.center),
      content: StreamBuilder<double>(
        stream: stream,
        builder: (context, snapshot) => SizedBox(
          height: 100.0,
          child: Column(
            children: [
              Text('${snapshot.data?.toStringAsFixed(1)}$valueSuffix',
                  style: const TextStyle(fontFamily: 'Fixed', fontWeight: FontWeight.bold, fontSize: 24.0)),
              Slider(
                divisions: divisions,
                min: min,
                max: max,
                value: snapshot.data ?? value,
                onChanged: onChanged,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

T? ambiguate<T>(T? value) => value;
