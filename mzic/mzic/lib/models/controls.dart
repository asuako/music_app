import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mzic/models/icons.dart';


class PlayingControls extends StatelessWidget {
  final bool isPlaying;
  final bool isLooping;
  final bool isPlaylist;
  final Function() onPrevious;
  final Function() onPlay;
  final Function() onNext;
  final Function() toggleLoop;

  PlayingControls({
    @required this.isPlaying,
    this.isPlaylist = false,
    @required this.isLooping,
    this.toggleLoop,
    this.onPrevious,
    @required this.onPlay,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        NeumorphicRadio(
          boxShape: NeumorphicBoxShape.circle(),
          padding: EdgeInsets.all(12),
          value: true,
          groupValue: this.isLooping,
          child: Icon(
            Icons.loop,
            size: 18,
          ),
          onChanged: (newValue) {
            toggleLoop();
          },
        ),
        SizedBox(
          width: 12,
        ),
        NeumorphicButton(
          isEnabled: isPlaylist,
          boxShape: NeumorphicBoxShape.circle(),
          padding: EdgeInsets.all(18),
          onClick: this.onPrevious,
          child: Icon(AssetAudioPlayerIcons.to_start),
        ),
        SizedBox(
          width: 12,
        ),
        NeumorphicButton(
          boxShape: NeumorphicBoxShape.circle(),
          padding: EdgeInsets.all(24),
          onClick: this.onPlay,
          child: Icon(
            isPlaying
                ? AssetAudioPlayerIcons.pause
                : AssetAudioPlayerIcons.play,
            size: 32,
          ),
        ),
        SizedBox(
          width: 12,
        ),
        NeumorphicButton(
          isEnabled: isPlaylist,
          boxShape: NeumorphicBoxShape.circle(),
          padding: EdgeInsets.all(18),
          child: Icon(AssetAudioPlayerIcons.to_end),
          onClick: this.onNext,
        ),
        SizedBox(
          width: 45,
        )
      ],
    );
  }
}