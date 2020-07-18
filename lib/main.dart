import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({Color color, int soundNumber}) {
    return Expanded(
      child: Material(
        color: color,
        child: InkWell(
          onTap: () => playSound(soundNumber),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.green, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.blue, soundNumber: 4),
            buildKey(color: Colors.orange, soundNumber: 5),
            buildKey(color: Colors.purple, soundNumber: 6),
            buildKey(color: Colors.pink, soundNumber: 7),
          ],
        )),
      ),
    );
  }
}
