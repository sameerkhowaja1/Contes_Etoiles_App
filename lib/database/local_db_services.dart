import 'package:drift/drift.dart';

import '../main.dart';
import '../model/stories_model.dart';
import 'database.dart';

class LocalDbServices {
  static addDataToLocalStorage(StoriesModel storiesModel) async {
    // Story sModel = await ((database.select(database.stories)..where((t) => t.storyId.equals(storiesModel.storyId))).getSingle());
    try {
      await database.into(database.stories).insert(StoriesCompanion.insert(
          storyId: storiesModel.storyId,
          storyName: storiesModel.storyName,
          storyAudioUrl: storiesModel.storyAudioUrl,
          storyNarrator: storiesModel.storyNarrator,
          storyThumbnail: storiesModel.storyThumbnail,
          durationPlayed: "",
          totalDuration: storiesModel.totalDuration,
          remainingDuration: ""));
    } catch (e) {
      print(e);
    }
  }

  static Future updateStoriesTime(String storyId, String durationPlayed, String remainingDuration) {
    // (database.update(database.stories).where((tbl) => tbl.storyId.equals(storiesModel.storyId)))
    /* (database.update(database.stories)
      .where((t) => t.storyId.equals(storiesModel.storyId)
      )).write(EmployeeCompanion(
        post: Value("Assistant Manager"),
      )*/
    print('==========updating time $storyId $durationPlayed');
    return ((database.update(database.stories)..where((t) => t.storyId.equals(storyId)))
        .write(StoriesCompanion(durationPlayed: Value(durationPlayed), remainingDuration: Value(remainingDuration))));
  }

  Stream<List<Story>> watchEntriesInStories(String storyId) {
    return (database.select(database.stories)..where((t) => t.storyId.equals(storyId))).watch();
  }

  static Future<Story> storyById(String storyId) {
    return (database.select(database.stories)..where((t) => t.storyId.equals(storyId))).getSingle();
  }

  static Future<List<Story>> get allStoriesData => ((database.select(database.stories)..where((t) => t.isActive.equals(true))).get());
  static Future<List<Story>> allStoriesDataByNarrator(String narrator) =>
      ((database.select(database.stories)..where((t) => t.isActive.equals(true) & t.storyNarrator.equals(narrator))).get());
}
