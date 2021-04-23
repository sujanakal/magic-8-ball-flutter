import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#111111'),
        appBar: AppBar(
          title: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontFamily: 'Pacifico',
              color: Colors.grey.shade200,
              letterSpacing: 1.5,
            ),
          ),
          centerTitle: true,
          backgroundColor: HexColor('#181818'),
        ),
        body: MagicBallApp(),
      ),
    ));

class MagicBallApp extends StatefulWidget {
  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              child: Image.asset('images/ball$ballNumber.png'),
              onPressed: () {
                setState(
                  () {
                    ballNumber = Random().nextInt(5) + 1;
                  },
                );
              },
              style: TextButton.styleFrom(
                // This will change the color of foreground and overlay color
                primary: HexColor('#111111'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
