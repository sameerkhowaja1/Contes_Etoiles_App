
import 'package:contes_etoiles/views/screens/narrator_selection/controller/narrator_selection_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';

import '../views/screens/narrator_list_of_books/controller/list_of_book_controller.dart';
import '../views/screens/story_screen/controller/story_player_screen_controller.dart';

class ScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NarratorSelectionController());
    Get.lazyPut(() => AmbreNarratorListOfBookController());
    Get.lazyPut(() => StoryScreenController());
  }
}
