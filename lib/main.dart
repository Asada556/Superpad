import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => {runApp(Xylophone())};

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  Flexible buildKey({required Color color, required int soundNumber, required String note}) {
    return Flexible(
                  fit: FlexFit.loose,
                  flex: 1,
                  child: SizedBox(
                    height: 110,
                    width: double.infinity,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: (color),
          ),
          onPressed: () {
            final player = AudioCache();
            player.play('note$soundNumber.wav');
          },
          child: Text(note,style: TextStyle(fontSize: 30),),
            ),
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
              mainAxisSize: MainAxisSize.max,
              children: [
                buildKey(color: Colors.red, soundNumber: 1, note: "do"),
                buildKey(color: Colors.pink, soundNumber: 2, note: "re"),
                buildKey(color: Colors.green, soundNumber: 3, note: "me"),
                buildKey(color: Colors.teal, soundNumber: 4, note: "fa"),
                buildKey(color: Colors.yellow, soundNumber: 5, note: "sol"),
                buildKey(color: Colors.grey, soundNumber: 6, note: "la"),
                buildKey(color: Colors.lightGreen, soundNumber: 7, note: "tee"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}