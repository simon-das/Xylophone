import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  Expanded playMusic(Color color, int noteNumber) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$noteNumber.wav');
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              playMusic(Colors.red, 1),
              playMusic(Colors.orange, 2),
              playMusic(Colors.yellow, 3),
              playMusic(Colors.green, 4),
              playMusic(Colors.teal, 5),
              playMusic(Colors.blue, 6),
              playMusic(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
