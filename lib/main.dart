import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ask Me Anything'),
      ),
      backgroundColor: Colors.blue[900],
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int numOfPicture;
  int getRandomNum() => Random().nextInt(5) + 1;

  @override
  Widget build(BuildContext context) {
    numOfPicture = getRandomNum();
    return Container(
      child: Center(
          child: TextButton(
        onPressed: () {
          setState(() {
            numOfPicture = getRandomNum();
          });
        },
        child: Image.asset('images/ball$numOfPicture.png'),
      )),
    );
  }
}
