import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';



void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNote){
    final player = AudioCache();
    player.play('note$soundNote.wav');
  }
  Expanded buildKey({Color color, int soundNote}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundNote);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNote: 1),
                buildKey(color: Colors.orange, soundNote: 2),
                buildKey(color: Colors.yellow, soundNote: 3),
                buildKey(color: Colors.green, soundNote: 4),
                buildKey(color: Colors.blue, soundNote: 5),
                buildKey(color: Colors.indigo, soundNote: 6),
                buildKey(color: Colors.purple, soundNote: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
