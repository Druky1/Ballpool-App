import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text('Ask Me Anything'),
        ),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Ball(),
    ),
  ));
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNum = 0;

  void ChangeBallNum(){
    setState(() {
        ballNum = Random().nextInt(5) + 1; // 1 - 5
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                ChangeBallNum();
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
