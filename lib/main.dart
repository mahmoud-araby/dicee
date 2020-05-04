import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  static int left_var = 1;
  static int right_var = 1;

  void SET_DICEE() {
    left_var = Random().nextInt(6) + 1;
    right_var = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            SET_DICEE();
          });
        },
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 20,
              child: Image.asset('images/dice$left_var.png'),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 100,
              ),
            ),
            Expanded(
              flex: 20,
              child: Image.asset('images/dice$right_var.png'),
            ),
          ],
        ),
      ),
    );
  }
}
