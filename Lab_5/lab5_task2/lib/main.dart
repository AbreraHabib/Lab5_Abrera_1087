import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(AbreraHabib());
}

class AbreraHabib extends StatelessWidget {
  const AbreraHabib({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone App',
      home: SafeArea(
        child: Scaffold(
          body: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              XylophoneMethod(1, Colors.yellow),
              XylophoneMethod(2, Colors.black),
              XylophoneMethod(3, Colors.purple),
              XylophoneMethod(4, Colors.blue),
              XylophoneMethod(5, Colors.orange),
              XylophoneMethod(6, Colors.red),
              XylophoneMethod(7, Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  Expanded XylophoneMethod(int audioNum, Color clr) {
    return Expanded(
      child: Container(
        color: clr,
        child: TextButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play('assets/note$audioNum.wav');
          },
          child: Text(""),
        ),
      ),
    );
  }
}
