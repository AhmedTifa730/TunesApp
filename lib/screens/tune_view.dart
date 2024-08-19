import 'package:flutter/material.dart';
import 'package:tune/models/tune_model.dart';
import 'package:tune/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(color: Colors.red, sound: 'note1.wav'),
    TuneModel(color: Colors.blue, sound: 'note2.wav'),
    TuneModel(color: Colors.green, sound: 'note3.wav'),
    TuneModel(color: Colors.purple, sound: 'note4.wav'),
    TuneModel(color: Colors.yellow, sound: 'note5.wav'),
    TuneModel(color: Colors.cyan, sound: 'note6.wav'),
    TuneModel(color: Colors.brown, sound: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff243139),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'TuneApp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: tunes
            .map(
              (color) => TuneItem(tune: color),
            )
            .toList(),
      ),
    );
  }

  // List<TuneItem> getTuneItems() {
  //   List<TuneItem> items = [];

  //   for (var color in tuneColors) {
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }
}
