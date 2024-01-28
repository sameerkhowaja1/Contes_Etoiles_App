import 'package:contes_etoiles/firebase_services/firebase_service_helper.dart';
import 'package:contes_etoiles/model/stories_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StoriesListingController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // RxList<StoryModel> storyTileList = RxList();
  RxList<StoriesModel> storyTileList = RxList();
  RxString selectedNarrator = "".obs;
  @override
  void onInit() {
    // TODO: implement onInit
    storyTileList.clear();
    selectedNarrator.value = Get.arguments["selectedNarrator"];
/*
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
    storyTileList.add(StoryModel(storyName: 'Le dinosaure qui rêvait de voler', storyImage: kBookImg, totalTime: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34), timeRemaining: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 3, 34)));
*/

    super.onInit();
  }

  getAllStories(String selectedNarrator) async {
    storyTileList.clear();
    print('=============selected Narrator $selectedNarrator');
    storyTileList.value = await FirebaseHelper.getAllStoriesByNarrator(selectedNarrator);
    print('=================list length ${storyTileList.length}');
  }
}
