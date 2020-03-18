import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart'; // player from local asstes folder

void main() => runApp(XylophoneApp());

// ignore: non_constant_identifier_names
void PlayAudio(int i) {
  final player = AudioCache();
  player.play('note$i.wav');
}

Expanded buildKey( {Color color, int soundNumber} ){
  return Expanded(
    child: FlatButton(
      color: color,
      onPressed: () {
        PlayAudio(soundNumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
            buildKey(color: Colors.red , soundNumber : 1),
            buildKey(color: Colors.orange , soundNumber : 2),
            buildKey(color: Colors.yellow , soundNumber : 3),
            buildKey(color: Colors.green , soundNumber : 4),
            buildKey(color: Colors.teal , soundNumber : 5),
            buildKey(color: Colors.blue , soundNumber : 6),
            buildKey(color: Colors.purple , soundNumber : 7),
            ],
          ),
        ),
      ),
    );
  }
}
