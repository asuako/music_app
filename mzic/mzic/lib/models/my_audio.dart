import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/foundation.dart';

class MyAudio {
  final Audio audio;
  final String name;
  final String imageUrl;

  const MyAudio({
    @required this.audio,
    @required this.name,
    @required this.imageUrl,
});
}
