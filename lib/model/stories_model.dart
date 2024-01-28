class StoriesModel {
  String storyId = "";
  String storyName = "";
  String storyAudioUrl = "";
  String storyThumbnail = "";
  String totalDuration = "";
  String storyNarrator = "";
  String remainingDuration = "";
  String durationPlayed = "";
  bool isActive = true;

  StoriesModel(
      {required this.storyId,
      required this.storyName,
      required this.storyAudioUrl,
      required this.storyThumbnail,
      this.totalDuration = "",
      required this.storyNarrator,
      this.remainingDuration = "",
      this.durationPlayed = "",
      this.isActive = true});

  factory StoriesModel.fromJson(Map<String, dynamic> json) => StoriesModel(
        storyId: json["storyId"],
        storyName: json["storyName"],
        storyAudioUrl: json["storyAudioUrl"],
        storyThumbnail: json["storyThumbnail"],
        totalDuration: json["totalDuration"],
        storyNarrator: json["storyNarrator"],
        remainingDuration: json["remainingDuration"],
        durationPlayed: json["durationPlayed"],
        isActive: json["isActive"],
      );

  Map<String, dynamic> toJson() => {
        "storyId": storyId,
        "storyName": storyName,
        "storyAudioUrl": storyAudioUrl,
        "storyThumbnail": storyThumbnail,
        "totalDuration": totalDuration,
        "storyNarrator": storyNarrator,
        "remainingDuration": remainingDuration,
        "durationPlayed": durationPlayed,
        "isActive": isActive,
      };

  @override
  String toString() {
    return 'StoriesModel{storyId: $storyId, storyAudioUrl: $storyAudioUrl, storyThumbnail: $storyThumbnail, totalDuration: $totalDuration, storyNarrator: $storyNarrator, remainingDuration: $remainingDuration, durationPlayed: $durationPlayed, isActive: $isActive}';
  }

  static List<StoriesModel> addDataToFirebase = [
    StoriesModel(
      storyId: "ambre_1",
      storyName: "Le dinosaure qui revait de voler.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ambre%2Faudio%2FStory_1_on_25_The_dinosaure_AMBRE.mp3?alt=media&token=3ac567d5-8fcb-4433-9f29-faf96d1b0e11",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ambre%2Fimages%2FStory_1_on_25_The_dinosaure_Thumbnail.png?alt=media&token=420da2f8-8df4-4c91-ade9-6961b9bf30c8",
      storyNarrator: "Ambre",
    ),
    StoriesModel(
      storyId: "ambre_2",
      storyName: "Les petits pois sauteurs.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ambre%2Faudio%2FStory_2_on%2025_The_jumping_peas_FINAL_AMBRE.mp3?alt=media&token=c88aef1e-5c22-4c7a-8b16-0be0fbf8c168",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ambre%2Fimages%2FStory_2_on%2025_The_jumping_peas_Thumbnail.png?alt=media&token=4d696695-df95-40f8-8ab3-0e1f939f1b72",
      storyNarrator: "Ambre",
    ),
    StoriesModel(
      storyId: "ambre_3",
      storyName: "La princesse et le chimpanzé.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ambre%2Faudio%2FStory_3_on_25_The_princess_and_the_chimpanzee_AMBRE.mp3?alt=media&token=5c184fce-1437-4788-8707-cbcfb5bb46d8",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ambre%2Fimages%2FStory_3_on_25_The_princess_and_the_chimpanzee_Thumbnail.png?alt=media&token=5768b8b7-0f07-4c30-a7b6-c483fad24534",
      storyNarrator: "Ambre",
    ),
    StoriesModel(
      storyId: "ewan_1",
      storyName: "Le dinosaure qui revait de voler.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ewan%2Faudio%2FStory_1_on_25_The_dinosaure_EWAN.mp3?alt=media&token=d02e5ab8-8d77-4a74-9145-805d6cfb3be1",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ewan%2Fimages%2FStory_1_on_25_The_dinosaure_Thumbnail.png?alt=media&token=8a28286e-3a57-45d6-821b-0f3d2c77ce90",
      storyNarrator: "Ewan",
    ),
    StoriesModel(
      storyId: "ewan_2",
      storyName: "Les petits pois sauteurs.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ewan%2Faudio%2FStory_2_on_25_The_jumping_peas_FINAL_EWAN.mp3?alt=media&token=09a5b129-86c6-41e4-bcd5-7c7a7d287b59",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ewan%2Fimages%2FStory_2_on%2025_The_jumping_peas_Thumbnail.png?alt=media&token=67245e68-f9f6-4f26-959e-274a577b1a81",
      storyNarrator: "Ewan",
    ),
    StoriesModel(
      storyId: "ewan_3",
      storyName: "La princesse et le chimpanzé.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ewan%2Faudio%2FStory_3_on_25_The_princess_and_the_chimpanzee_EWAN.mp3?alt=media&token=7d787f70-e1fd-40f4-ac42-a6a15ed3bcf3",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles.appspot.com/o/ewan%2Fimages%2FStory_3_on_25_The_princess_and_the_chimpanzee_Thumbnail.png?alt=media&token=d846a75f-c476-4f63-858d-59a912663937",
      storyNarrator: "Ewan",
    ),
  ];
}
