import 'dart:async';
import 'package:contes_etoiles/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../model/story_model.dart';

class StoryScreenController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxList<StoryModel> storyTileList = RxList();

  RxBool isPlaying = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit

    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));

    super.onInit();
  }
}
