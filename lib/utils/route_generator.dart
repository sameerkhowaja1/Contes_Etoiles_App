import 'package:contes_etoiles/utils/screen_bindings.dart';
import 'package:contes_etoiles/views/screens/narrator_selection/narrator_selection_screen.dart';
import 'package:contes_etoiles/views/screens/story_screen/story_player_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../views/screens/narrator_list_of_books/stories_listing_screen.dart';
import '../views/screens/splash_screen.dart';
import 'app_strings.dart';

class RouteGenerator {
  static List<GetPage> getPages() {
    return [
      GetPage(name: kSplashRoute, page: () => SplashScreen(), binding: ScreenBindings()),
      GetPage(name: kNarratorSelectionRoute, page: () => NarratorSelectionScreen(), binding: ScreenBindings()),
      // GetPage(name: kAmbreNarratorListOfBookRoute, page: () => AmbreNarratorListOfBookScreen(), binding: ScreenBindings()),
      GetPage(name: kStoryPlayerRoute, page: () => StoryPlayerScreen(), binding: ScreenBindings()),
      GetPage(name: kStoriesListingRoute, page: () => StoriesListingScreen(), binding: ScreenBindings()),
      // GetPage(name: kEwanNarratorListOfBookRoute, page: () => EwanNarratorListOfBookScreen(), binding: ScreenBindings()),
    ];
  }
}
