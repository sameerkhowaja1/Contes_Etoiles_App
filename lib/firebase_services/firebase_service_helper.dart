import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contes_etoiles/model/stories_model.dart';

import '../utils/app_strings.dart';
import '../utils/common_code.dart';
import '../utils/custom_snackbar.dart';

class FirebaseHelper {
  static addStoriesData(List<StoriesModel> storyModel) async {
    for (int i = 0; i < storyModel.length; i++) {
      await FirebaseFirestore.instance.collection("stories").doc(storyModel[i].storyId).set(storyModel[i].toJson());
    }
  }

  static Future<List<StoriesModel>> getAllStoriesByNarrator(String selectedNarrator) async {
    List<StoriesModel> storiesModelList = [];
    try {
      if (await CommonCode().isNetworkAvailable()) {
        QuerySnapshot snapshot = await FirebaseFirestore.instance
            .collection("stories")
            .where(Filter.and(Filter("isActive", isEqualTo: true), Filter("storyNarrator", isEqualTo: selectedNarrator)))
            .orderBy("storyId", descending: false)
            .get();
        for (var d in snapshot.docs) {
          StoriesModel storiesModel = StoriesModel.fromJson(d.data() as Map<String, dynamic>);
          storiesModelList.add(storiesModel);
        }
      } else {
        // Get.back();
        showCustomSnackBar(content: kInternetNotAvailable);
      }
    } catch (e) {
      print(e);
      //Get.back();
      showCustomSnackBar(content: "Service is not responding, please try again");
    }
    return storiesModelList;
  }
}
