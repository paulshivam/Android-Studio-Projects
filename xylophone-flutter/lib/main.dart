import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int choice) {
    final player = AudioCache();
    player.play('note$choice.wav');
  }

  Expanded buildKey({Color color, int choice}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(choice);
        },
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
              buildKey(color: Colors.red, choice: 1),
              buildKey(color: Colors.orange, choice: 2),
              buildKey(color: Colors.yellow, choice: 3),
              buildKey(color: Colors.green, choice: 4),
              buildKey(color: Colors.teal, choice: 5),
              buildKey(color: Colors.blue, choice: 6),
              buildKey(color: Colors.purple, choice: 7),
            ],
          ),
        ),
      ),
    );
  }
}
