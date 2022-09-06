import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets\note1.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.orange),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note2.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note3.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note4.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor: Colors.teal),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note5.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note6.wav');
                  },
                  child: Text(''),
                ),
              ),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 3, 37, 64)),
                  onPressed: () {
                    final player = AudioCache();
                    player.play('assets/note7.wav');
                  },
                  child: Text(''),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
