import 'package:audio_session/audio_session.dart';
import 'package:contes_etoiles/model/stories_model.dart';
import 'package:contes_etoiles/utils/custom_snackbar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart' as rx;

import '../../../../model/audio_metadata_model.dart';
import '../../../../views/custom_widget/custom_aduio_widge.dart' as common;

class StoryScreenController extends GetxController with WidgetsBindingObserver {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  RxList<StoriesModel> storyTileList = RxList();

  RxBool isPlaying = false.obs;
  RxInt storyIndex = 0.obs;

  AudioPlayer player = AudioPlayer();
  RxDouble? dragValue;
  /*final _playlist = ConcatenatingAudioSource(children: [
    for(int i = 0; i<storyTileList.length; i++)
    AudioSource.uri(
      Uri.parse("https://s3.amazonaws.com/scifri-episodes/scifri20181123-episode.mp3"),
      tag: AudioMetadata(
        album: "Science Friday",
        title: "A Salute To Head-Scratching Science",
        artwork: "https://media.wnyc.org/i/1400/1400/l/80/1/ScienceFriday_WNYCStudios_1400.jpg",
      ),
    ),

  ]);*/

  ConcatenatingAudioSource concatenatingAudioSource = ConcatenatingAudioSource(children: []);

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    common.ambiguate(WidgetsBinding.instance)!.addObserver(this);
    player = AudioPlayer();
    storyTileList.value = Get.arguments["storiesList"];
    storyIndex.value = Get.arguments["storyIndex"];
    initStory();
  }

  Future<void> initStory() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.speech());
    player.playbackEventStream.listen((event) {}, onError: (Object e, StackTrace stackTrace) {
      print('A stream error occurred: $e');
    });
    try {
      // Use resolve() if you want to obtain a UriAudioSource pointing directly
      // to the cache file.
      // await player.setAudioSource(await _audioSource.resolve());
      await player.setAudioSource(
          ConcatenatingAudioSource(children: [
            //for (int i = 0; i < storyTileList.length; i++)
            AudioSource.uri(
              Uri.parse(storyTileList[storyIndex.value].storyAudioUrl),
              tag: AudioMetadata(
                album: "Science Friday",
                title: storyTileList[storyIndex.value].storyName,
                artwork: storyTileList[storyIndex.value].storyThumbnail,
              ),
            ),
          ]),
          preload: kIsWeb || defaultTargetPlatform != TargetPlatform.linux);
    } catch (e) {
      print("Error loading audio source: $e");
    }
    // Show a snackbar whenever reaching the end of an item in the playlist.
    player.positionDiscontinuityStream.listen((discontinuity) {
      if (discontinuity.reason == PositionDiscontinuityReason.autoAdvance) {
        _showItemFinished(discontinuity.previousEvent.currentIndex);
      }
    });
    player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        _showItemFinished(player.currentIndex);
      }
    });
  }

  void _showItemFinished(int? index) {
    if (index == null) return;
    final sequence = player.sequence;
    if (sequence == null) return;
    final source = sequence[index];
    final metadata = source.tag as AudioMetadata;
    showCustomSnackBar(content: "Finished playing ${metadata.title}");
  }

  @override
  void onClose() {
    super.onClose();
    print('===============Hi from close');
    player.dispose();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    common.ambiguate(WidgetsBinding.instance)!.removeObserver(this);
    print('===============Hi from dispose');
    player.pause();
    player.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Release the player's resources when not in use. We use "stop" so that
      // if the app resumes later, it will still remember what position to
      // resume from.
      player.stop();
    }
  }

  Stream<common.PositionData> get positionDataStream => rx.Rx.combineLatest3<Duration, Duration, Duration?, common.PositionData>(
      player.positionStream,
      player.bufferedPositionStream,
      player.durationStream,
      (position, bufferedPosition, duration) => common.PositionData(position, bufferedPosition, duration ?? Duration.zero));
}
