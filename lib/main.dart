import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(home: MagicBallPage()),
    );

class MagicBallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Ask Me Anything'),
        ),
        body: MagicBall());
  }
}

class MagicBall extends StatefulWidget {
  const MagicBall({Key? key}) : super(key: key);

  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 0;
  void randomball() {
    setState(() {
      ballNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          onPressed: () {
            print('MagicBallPressed');
            randomball();
          },
          child: Image(image: AssetImage('images/ball$ballNumber.png')),
        ),
      )),
    );
  }
}
