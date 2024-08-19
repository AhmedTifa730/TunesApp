import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  const TuneModel({
    required this.color,
    required this.sound,
  });

  Future<void> playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(sound));
  }
}
