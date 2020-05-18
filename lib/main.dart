import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({color,soundNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.amber, soundNumber: 7),
              buildKey(color: Colors.red, soundNumber: 6),
              buildKey(color: Colors.blue, soundNumber: 5),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.purple, soundNumber: 3),
              buildKey(color: Colors.yellow, soundNumber: 2),
              buildKey(color: Colors.deepOrange, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
