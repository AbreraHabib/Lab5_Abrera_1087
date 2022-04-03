import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Color.fromARGB(255, 24, 68, 242),
      ),
      backgroundColor: Colors.blue,
      body: ImageChnge(),
    )));
  }
}

class ImageChnge extends StatefulWidget {
  const ImageChnge({Key? key}) : super(key: key);

  @override
  State<ImageChnge> createState() => _ImageChngeState();
}

class _ImageChngeState extends State<ImageChnge> {
  int imageNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: () {
            print("I got clicked");
            setState(() {
              imageNum = Random().nextInt(5) + 1;
              print(imageNum);
            });
          },
          child: Image.asset('images/ball$imageNum.png'),
        ),
      ),
    );
  }
}
