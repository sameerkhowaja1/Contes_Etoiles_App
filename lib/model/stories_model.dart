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
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_1_on_25_The_dinosaure_AMBRE.mp3?alt=media&token=b6966d87-321f-4661-8b86-234dc138d5f4",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_1_on_25_The_dinosaure_Thumbnail.png?alt=media&token=951104eb-262e-41bd-a3e6-82cfa5807b3b",
      storyNarrator: "Ambre",
      totalDuration: "00:06:47",
    ),
    StoriesModel(
      storyId: "ambre_2",
      storyName: "Les petits pois sauteurs.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_2_on%2025_The_jumping_peas_FINAL_AMBRE.mp3?alt=media&token=003f7297-1c89-47cf-99d6-b4f790028b8a",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_2_on%2025_The_jumping_peas_Thumbnail.png?alt=media&token=fd3b7ca8-31e1-437f-bd9a-40cca86f9aaa",
      storyNarrator: "Ambre",
      totalDuration: "00:05:47",
    ),
    StoriesModel(
      storyId: "ambre_3",
      storyName: "La princesse et le chimpanzé.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_3_on_25_The_princess_and_the_chimpanzee_AMBRE.mp3?alt=media&token=61ee70ac-ab08-41cf-8f80-83bc7292e3ee",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_3_on_25_The_princess_and_the_chimpanzee_Thumbnail.png?alt=media&token=221f39a5-70e4-4f29-8837-d81df8e08053",
      storyNarrator: "Ambre",
      totalDuration: "00:07:17",
    ),
    StoriesModel(
      storyId: "ambre_4",
      storyName: "Pikoti veut un câlin.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_4_on%2025_Pikoti_wants_a_hug_AMBRE.mp3?alt=media&token=387ab018-a2c2-4693-a3d6-3aa2363a11ca",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_4_on_25_Pikoti_wants_a_hug_Thumbnail.png?alt=media&token=85aa59d7-8319-48a4-be44-54a6f7ce8379",
      storyNarrator: "Ambre",
      totalDuration: "00:06:07",
    ),
    StoriesModel(
      storyId: "ambre_5",
      storyName: "Pili-Pili et sa Tétine en bambou.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_5_on_25_Pili_pili_and_the_bamboo_pacifier_AMBRE.mp3?alt=media&token=2bd5b2ed-b9c0-44f6-9e8a-6a7ad292b5aa",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_5_on_25_Pili%20pili%20and%20the%20bamboo%20pacifier%20thumbnail.png?alt=media&token=6478411a-906d-44c4-86f1-0b845e829ec1",
      storyNarrator: "Ambre",
      totalDuration: "00:05:56",
    ),
    StoriesModel(
      storyId: "ambre_6",
      storyName: "Le voyage de Soleil.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_6_on_25_SUN_s_journey_AMBRE.mp3?alt=media&token=de823d7d-5631-4609-8370-d2d87c80e05c",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_6_on_25_SUN_s_journey_thumbnail.png?alt=media&token=7cf66ef6-6181-4bec-90d0-d54cc4fc7e24",
      storyNarrator: "Ambre",
      totalDuration: "00:05:33",
    ),
    StoriesModel(
      storyId: "ambre_7",
      storyName: "Parler, c’est important.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_7_on_25_Bongo_the_lion_AMBRE.mp3?alt=media&token=1c5a3e93-f0fc-4232-be7c-0cf75effac14",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_7_on_25_Bongo_the_lion_thumbnail.png?alt=media&token=f681629c-499b-4c3b-ac47-a4f663c82e03",
      storyNarrator: "Ambre",
      totalDuration: "00:06:37",
    ),
    StoriesModel(
      storyId: "ambre_8",
      storyName: "Carré et Rond.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_8_on_25_Square_and_round_AMBRE.mp3?alt=media&token=17f22cab-7bf9-49e2-ad6f-8a239168b269",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_8_on_25_Square_and_round_Thumbnail.png?alt=media&token=9ea1aebc-d81a-471a-91e6-aad1cfbe193f",
      storyNarrator: "Ambre",
      totalDuration: "00:04:21",
    ),
    StoriesModel(
      storyId: "ambre_9",
      storyName: "Théobald le Chevalier de bois.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_9_on_25_Theobald_wooden_Knight_AMBRE.mp3?alt=media&token=c6c4dd4b-8d2c-4380-a56b-2dfd522f0b59",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_9_on_25_Theobald_wooden_Knight_Thumbnail.png?alt=media&token=99e34474-21fc-493f-be00-95d5ac1f83e6",
      storyNarrator: "Ambre",
      totalDuration: "00:06:29",
    ),
    StoriesModel(
      storyId: "ambre_10",
      storyName: "Le loup innocent.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_10_on_25_The_innocent_Wolf_AMBRE.mp3?alt=media&token=4cb32f27-05a0-42c5-a601-4679ffefe751",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_10_on_25_The_innocent_Wolf_Thumbnail.png?alt=media&token=d8601f3d-5480-49f8-8985-3e6239f62bbc",
      storyNarrator: "Ambre",
      totalDuration: "00:05:15",
    ),
    StoriesModel(
      storyId: "ambre_11",
      storyName: "Madame Lune ne trouve pas le sommeil.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_11_on_25_Ms_Moon_cannot_sleep_AMBRE.mp3?alt=media&token=fbba7ca5-d1ab-4401-8454-363cd9053ca9",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_11_on_25_Ms_Moon_cannot_sleep_Thumbnail.png?alt=media&token=e3b1b19c-6116-480f-8caf-5489ef627bba",
      storyNarrator: "Ambre",
      totalDuration: "00:06:18",
    ),
    StoriesModel(
      storyId: "ambre_12",
      storyName: "Charlie, le cheval licorne.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_12_on_25_Charlie_the_unicorn_horse_AMBRE.mp3?alt=media&token=b519f605-811d-4ce0-8a4f-cbb7720a94aa",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_12_on_25_Charlie_the_unicorn_horse_Thumbnail.jpg?alt=media&token=df441382-aab9-4f32-a74b-034c2d44a97f",
      storyNarrator: "Ambre",
      totalDuration: "00:05:24",
    ),
    StoriesModel(
      storyId: "ambre_13",
      storyName: "Taco, super chien!",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_13_on_25_Taco_super_dog_AMBRE.mp3?alt=media&token=d26bf042-c24d-4cff-9f43-b33f9ed86619",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_13_on_25_Taco_super_dog_Thumbnail.png?alt=media&token=a2a306a6-3b6b-4071-bac1-55e1bf9bb183",
      storyNarrator: "Ambre",
      totalDuration: "00:06:09",
    ),
    StoriesModel(
      storyId: "ambre_14",
      storyName: "Le dessert de trop.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_14_on_25_one_dessert_too_many_AMBRE.mp3?alt=media&token=998d3fc4-e131-44d8-a9d0-5c090111ab69",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_14_on_25_one_dessert_too_many_Thumbnail.png?alt=media&token=0730d9ed-53b7-4b94-b2a7-f4a64a7291f9",
      storyNarrator: "Ambre",
      totalDuration: "00:06:08",
    ),
    StoriesModel(
      storyId: "ambre_15",
      storyName: "L’éléphant dans le magasin de porcelaine.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_15_on_25_The_elephant_in_the_porcelain_store_AMBRE.mp3?alt=media&token=0676a3dc-1c40-4f87-9270-1b6f5ca5354c",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_15_on_25_The_elephant_in_the_porcelain_store_Thumbnail.png?alt=media&token=43893a70-538c-4bbd-b875-df147bf0dd35",
      storyNarrator: "Ambre",
      totalDuration: "00:06:29",
    ),
    StoriesModel(
      storyId: "ambre_16",
      storyName: "On s’échappe des tableaux!",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_16_on_25_Escape_from_the_museum_AMBRE.mp3?alt=media&token=cb2467b5-6344-491e-ac7f-985068526ae8",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_16_on_25_Escape_from_the_museum_Thumbnail.png?alt=media&token=afc2c3aa-83a4-41b7-b159-2c71a5689a10",
      storyNarrator: "Ambre",
      totalDuration: "00:04:18",
    ),
    StoriesModel(
      storyId: "ambre_17",
      storyName: "Maman attend un bébé.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_17_on_25_Mum_will_have_a_baby_AMBRE.mp3?alt=media&token=02460043-b149-4d3c-92ea-8690fcfd0d1a",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_17_on_25_Mum_will_have_a_baby_Thumbnail.png?alt=media&token=efd120d3-8e38-4185-8b9a-546740e06376",
      storyNarrator: "Ambre",
      totalDuration: "00:05:34",
    ),
    StoriesModel(
      storyId: "ambre_18",
      storyName: "Gaston Rochon et Agnes Politesse.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_18_on_25_Gaston_ronchon_and_Agnes_Politesse_AMBRE.mp3?alt=media&token=20dd75b7-fd05-4944-8ee3-73cf323fd41d",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_18_on_25_Gaston_ronchon_and_Agnes_Politesse_Tumbnail.png?alt=media&token=3617c7d6-a570-4234-a713-eca0ce6cc8e2",
      storyNarrator: "Ambre",
      totalDuration: "00:04:46",
    ),
    StoriesModel(
      storyId: "ambre_19",
      storyName: "Une drôle de fête.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_19_on_25_a_funny_party_AMBRE.mp3?alt=media&token=30669344-f349-43a5-9098-971aae20c72a",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_19_on_25_a_funny_party_Tumbnail.png?alt=media&token=cf8b1d69-88c2-440e-9382-0acf8b505d99",
      storyNarrator: "Ambre",
      totalDuration: "00:05:38",
    ),
    StoriesModel(
      storyId: "ambre_20",
      storyName: "Le monde de Lulibelle.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_20_on_25_Lulibelle_upside_down_world_AMBRE.mp3?alt=media&token=d76ba1ed-c870-4df3-8499-ab42e3e6dab1",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_20_on_25_Lulibelle_upside_down_world_Thumbnail.png?alt=media&token=ba0b72bd-7f4c-4598-b69c-a82095a87ad7",
      storyNarrator: "Ambre",
      totalDuration: "00:06:28",
    ),
    StoriesModel(
      storyId: "ambre_21",
      storyName: "Mindy, le perroquet pirate.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_21_on_25_Mindy_the_pirate_parrot_AMBRE.mp3?alt=media&token=09fef772-e99f-4684-9509-2416d9ea5f92",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_21_on_25_Mindy_the_pirate_parrot_Thumbnail.png?alt=media&token=606e2bd6-2f56-42f5-9d72-e6a62e345326",
      storyNarrator: "Ambre",
      totalDuration: "00:05:44",
    ),
    StoriesModel(
      storyId: "ambre_22",
      storyName: "Lola et le vélo rouge magique.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_22_on_25_Lola_and_the_red_magic_bike_AMBRE.mp3?alt=media&token=ad79ffa4-0c95-4421-9fc4-904f9a9686d2",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_22_on_25_Lola_and_the_red_magic_bike_Thumbnail.png?alt=media&token=a9c09712-2da3-440d-97c9-1b239cb8e49a",
      storyNarrator: "Ambre",
      totalDuration: "00:06:02",
    ),
    StoriesModel(
      storyId: "ambre_23",
      storyName: "Yuki le petit samouraï.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_23_on_25_Yuki_the_little_Samourai_AMBRE.mp3?alt=media&token=76e3630c-1575-4b42-8418-63384d075a55",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_23_on_25_Yuki_the_little_Samourai_Thumbnail.png?alt=media&token=3b3690a9-8261-4ea5-adcb-2ab7317ece96",
      storyNarrator: "Ambre",
      totalDuration: "00:06:54",
    ),
    StoriesModel(
      storyId: "ambre_24",
      storyName: "Mes dents ont disparu!",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_24_on_25_My_theeth_disapered_AMBRE.mp3?alt=media&token=ef37ff18-b7ae-46cf-a545-711ed06a34c1",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_24_on_25_My_theeth_disapered_Thumbnail.png?alt=media&token=dd3c7a7a-494f-4a5d-98f9-ff0489f47574",
      storyNarrator: "Ambre",
      totalDuration: "00:06:10",
    ),
    StoriesModel(
      storyId: "ambre_25",
      storyName: "Une fênetre vers l’espace.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fstories%2FStory_25_on_25_A_window_to_space_AMBRE.mp3?alt=media&token=6a102351-1546-451b-9971-114c2b658f7e",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ambre%2Fthumbnails%2FStory_25_on_25_A_window_to_space_Thumbnail.png?alt=media&token=db60c715-2029-4a99-9fe5-11b9735ddfb6",
      storyNarrator: "Ambre",
      totalDuration: "00:05:54",
    ),
    StoriesModel(
      storyId: "ewan_1",
      storyName: "Le dinosaure qui revait de voler.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_1_on_25_The_dinosaure_EWAN.mp3?alt=media&token=e18d6462-a8e1-4e23-9979-3cbf80e34a68",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_1_on_25_The_dinosaure_Thumbnail.png?alt=media&token=3720d6b6-1693-4355-b0bb-b298a102795e",
      storyNarrator: "Ewan",
      totalDuration: "00:06:42",
    ),
    StoriesModel(
      storyId: "ewan_2",
      storyName: "Les petits pois sauteurs.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_2_on_25_The_jumping_peas_FINAL_EWAN.mp3?alt=media&token=85189a61-58d1-4244-88cc-075e3c5a33e4",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_2_on%2025_The_jumping_peas_Thumbnail.png?alt=media&token=7ba9f838-5724-423c-9c98-586ce47042e9",
      storyNarrator: "Ewan",
      totalDuration: "00:05:38",
    ),
    StoriesModel(
      storyId: "ewan_3",
      storyName: "La princesse et le chimpanzé.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_3_on_25_The_princess_and_the_chimpanzee_EWAN.mp3?alt=media&token=12dc537b-e65c-4128-a5de-d16c8c308ba6",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_3_on_25_The_princess_and_the_chimpanzee_Thumbnail.png?alt=media&token=db8efc44-9b49-4de1-9388-fbd6a59b8b72",
      storyNarrator: "Ewan",
      totalDuration: "00:07:16",
    ),
    StoriesModel(
      storyId: "ewan_4",
      storyName: "Pikoti veut un câlin.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_4_on_25_Pikoti_wants_a_hug_EWAN.mp3?alt=media&token=3a14e318-f7c6-4205-b975-4b7169212df2",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_4_on_25_Pikoti_wants_a_hug_Thumbnail.png?alt=media&token=52808a81-5545-40a8-87f5-f5405d1def86",
      storyNarrator: "Ewan",
      totalDuration: "00:06:01",
    ),
    StoriesModel(
      storyId: "ewan_5",
      storyName: "Pili-Pili et sa Tétine en bambou.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_5_on_25_Pili_pili_and_the_bamboo_pacifier_EWAN.mp3?alt=media&token=02e8a06d-962a-49e5-917e-891b55b1b985",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_5_on_25_Pili%20pili%20and%20the%20bamboo%20pacifier%20thumbnail.png?alt=media&token=e1ea9606-56cb-421a-8e49-a8a72ee97e90",
      storyNarrator: "Ewan",
      totalDuration: "00:05:54",
    ),
    StoriesModel(
      storyId: "ewan_6",
      storyName: "Le voyage de Soleil.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_6_on_25_SUN_s_journey_EWAN.mp3?alt=media&token=33b1efb8-ad8d-484a-ba0b-ef7da38a037a",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_6_on_25_SUN_s_journey_thumbnail.png?alt=media&token=d9bba886-b9e5-4f12-b959-a506a4d9076c",
      storyNarrator: "Ewan",
      totalDuration: "00:05:24",
    ),
    StoriesModel(
      storyId: "ewan_7",
      storyName: "Parler, c’est important.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_7_on_25_Bongo_the_lion_EWAN.mp3?alt=media&token=f704feb3-b19d-4177-98b0-b1a4bae434c9",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_7_on_25_Bongo_the_lion_thumbnail.png?alt=media&token=d474c71c-aabd-432c-9a7e-0fc18e1b314b",
      storyNarrator: "Ewan",
      totalDuration: "00:06:27",
    ),
    StoriesModel(
      storyId: "ewan_8",
      storyName: "Carré et Rond.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_8_on_25_Square_and_round_EWAN.mp3?alt=media&token=02afa839-d3a1-422b-9522-5797bbe72c3c",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_8_on_25_Square_and_round_Thumbnail.png?alt=media&token=74adccab-a21c-4638-a970-b029cbec2702",
      storyNarrator: "Ewan",
      totalDuration: "00:04:15",
    ),
    StoriesModel(
      storyId: "ewan_9",
      storyName: "Théobald le Chevalier de bois.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_9_on_25_Theobald_wooden_Knight_EWAN.mp3?alt=media&token=21a707df-5aba-46f5-b33e-e6c3f25e983b",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_9_on_25_Theobald_wooden_Knight_Thumbnail.png?alt=media&token=534dd9e1-b015-46c2-a7f5-37674fb801fb",
      storyNarrator: "Ewan",
      totalDuration: "00:06:25",
    ),
    StoriesModel(
      storyId: "ewan_10",
      storyName: "Le loup innocent.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_10_on_25_The_innocent_Wolf_EWAN.mp3?alt=media&token=a497f0c8-761a-4cdf-8149-38d6e0b41e4a",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_10_on_25_The_innocent_Wolf_Thumbnail.png?alt=media&token=be513702-dd87-4ed0-9be9-3fe3ade257e0",
      storyNarrator: "Ewan",
      totalDuration: "00:05:07",
    ),
    StoriesModel(
      storyId: "ewan_11",
      storyName: "Madame Lune ne trouve pas le sommeil.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_11_on_25_Ms_Moon_cannot_sleep_EWAN.mp3?alt=media&token=6b232c93-7617-4290-ab16-a088e52f5357",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_11_on_25_Ms_Moon_cannot_sleep_Thumbnail.png?alt=media&token=0fe26c89-eecd-4029-a842-e11ac1ad0365",
      storyNarrator: "Ewan",
      totalDuration: "00:06:16",
    ),
    StoriesModel(
      storyId: "ewan_12",
      storyName: "Charlie, le cheval licorne.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_12_on_25_Charlie_the_unicorn_horse_EWAN.mp3?alt=media&token=fa10c63f-2389-4db7-aaa2-c47c5595532a",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_12_on_25_Charlie_the_unicorn_horse_Thumbnail.jpg?alt=media&token=ec8bf508-f018-4080-84a8-9c2f112a4f5c",
      storyNarrator: "Ewan",
      totalDuration: "00:05:23",
    ),
    StoriesModel(
      storyId: "ewan_13",
      storyName: "Taco, super chien!",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_13_on_25_Taco_super_dog_EWAN.mp3?alt=media&token=7c8e7029-d553-48f3-883c-eecb98f3552d",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_13_on_25_Taco_super_dog_Thumbnail.png?alt=media&token=f6f551a4-e7f3-4d89-baf3-a25a92a8aa01",
      storyNarrator: "Ewan",
      totalDuration: "00:05:50",
    ),
    StoriesModel(
      storyId: "ewan_14",
      storyName: "Le dessert de trop.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_14_on_25_one_dessert_too_many_EWAN.mp3?alt=media&token=b28e861f-1143-47a6-9752-ab20c3515fec",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_14_on_25_one_dessert_too_many_Thumbnail.png?alt=media&token=a1488ea6-3065-4218-99fe-e4e84b85da7b",
      storyNarrator: "Ewan",
      totalDuration: "00:05:44",
    ),
    StoriesModel(
      storyId: "ewan_15",
      storyName: "L’éléphant dans le magasin de porcelaine.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_15_on_25_The_elephant_in_the_porcelain_store_EWAN.mp3?alt=media&token=c7630c00-573f-467d-bfdd-db03264c5c72",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_15_on_25_The_elephant_in_the_porcelain_store_Thumbnail.png?alt=media&token=355053ce-2b07-46cd-a820-e24439387e3d",
      storyNarrator: "Ewan",
      totalDuration: "00:06:13",
    ),
    StoriesModel(
      storyId: "ewan_16",
      storyName: "On s’échappe des tableaux!",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_16_on_25_Escape_from_the_museum_EWAN.mp3?alt=media&token=043b029b-56bc-4c29-bbb5-8f2d1c9ab4bc",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_16_on_25_Escape_from_the_museum_Thumbnail.png?alt=media&token=d81179eb-ddba-456d-8e04-83f456a7aabb",
      storyNarrator: "Ewan",
      totalDuration: "00:04:12",
    ),
    StoriesModel(
      storyId: "ewan_17",
      storyName: "Maman attend un bébé.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_17_on_25_Mum_will_have_a_baby_EWAN.mp3?alt=media&token=d044390f-1b6f-4d91-ae09-a4e06a7d53be",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_17_on_25_Mum_will_have_a_baby_Thumbnail.png?alt=media&token=473d271b-b035-4c76-a3ac-b654dad9d67d",
      storyNarrator: "Ewan",
      totalDuration: "00:05:32",
    ),
    StoriesModel(
      storyId: "ewan_18",
      storyName: "Gaston Rochon et Agnes Politesse.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_18_on_25_Gaston_ronchon_and_Agnes_Politesse_EWAN.mp3?alt=media&token=5803d166-ed04-4fee-81f9-e259a31ccc57",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_18_on_25_Gaston_ronchon_and_Agnes_Politesse_Tumbnail.png?alt=media&token=97683211-6e32-4f9c-a8fb-0b74838fb4aa",
      storyNarrator: "Ewan",
      totalDuration: "00:04:50",
    ),
    StoriesModel(
      storyId: "ewan_19",
      storyName: "Une drôle de fête.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_19_on_25_a_funny_party_EWAN.mp3?alt=media&token=80c294da-605a-4bcb-b61b-bbd20fdd6c73",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_19_on_25_a_funny_party_Tumbnail.png?alt=media&token=f3ff7376-2b6e-4c09-b694-6af9dac97947",
      storyNarrator: "Ewan",
      totalDuration: "00:05:24",
    ),
    StoriesModel(
      storyId: "ewan_20",
      storyName: "Le monde de Lulibelle.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_20_on_25_Lulibelle_upside_down_world_EWAN.mp3?alt=media&token=4addc34e-320e-42e0-965c-1676aa896e9b",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_20_on_25_Lulibelle_upside_down_world_Thumbnail.png?alt=media&token=06c81ecc-6490-4a86-9634-ab3b444653dd",
      storyNarrator: "Ewan",
      totalDuration: "00:06:15",
    ),
    StoriesModel(
      storyId: "ewan_21",
      storyName: "Mindy, le perroquet pirate.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_21_on_25_Mindy_the_pirate_parrot_EWAN.mp3?alt=media&token=0dee5dec-5b45-4bb0-bdf5-76df239cec24",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_21_on_25_Mindy_the_pirate_parrot_Thumbnail.png?alt=media&token=9563c90c-7d54-427b-b985-a46b6702b0ba",
      storyNarrator: "Ewan",
      totalDuration: "00:05:36",
    ),
    StoriesModel(
      storyId: "ewan_22",
      storyName: "Lola et le vélo rouge magique.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_22_on_25_Lola_and_the_red_magic_bike_EWAN.mp3?alt=media&token=652062a2-d12d-4275-8066-45898f2decc0",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_21_on_2Story_22_on_25_Lola_and_the_red_magic_bike_Thumbnail.png?alt=media&token=adc78e5a-cc09-4433-82d9-6630d1dbf63f",
      storyNarrator: "Ewan",
      totalDuration: "00:06:05",
    ),
    StoriesModel(
      storyId: "ewan_23",
      storyName: "Yuki le petit samouraï.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_23_on_25_Yuki_the_little_Samourai_EWAN.mp3?alt=media&token=6e192075-52ee-46ce-b27f-13a657541f90",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_23_on_25_Yuki_the_little_Samourai_Thumbnail.png?alt=media&token=7ae8361d-bda6-4e4c-b317-da0258dcae0d",
      storyNarrator: "Ewan",
      totalDuration: "00:06:42",
    ),
    StoriesModel(
      storyId: "ewan_24",
      storyName: "Mes dents ont disparu!",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_24_on_25_My_theeth_disapered_EWAN.mp3?alt=media&token=e8372311-005f-4b5d-8e91-9a0cb94f5095",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_24_on_25_My_theeth_disapered_Thumbnail.png?alt=media&token=0f4a1116-bf0c-49c6-a2ee-f9916a1d953e",
      storyNarrator: "Ewan",
      totalDuration: "00:05:59",
    ),
    StoriesModel(
      storyId: "ewan_25",
      storyName: "Une fênetre vers l’espace.",
      storyAudioUrl:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fstories%2FStory_25_on_25_A_window_to_space_EWAN.mp3?alt=media&token=c941030e-3e9d-4896-b12a-fe05e9e62cd1",
      storyThumbnail:
          "https://firebasestorage.googleapis.com/v0/b/contes-etoiles-app.appspot.com/o/ewan%2Fthumbnails%2FStory_25_on_25_A_window_to_space_Thumbnail.png?alt=media&token=1df19a8a-220c-48a1-a179-35664253f6bd",
      storyNarrator: "Ewan",
      totalDuration: "00:05:42",
    ),
  ];
}
