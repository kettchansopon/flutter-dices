import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white30,
        appBar: AppBar(
          title: Text('Dices'),
          backgroundColor: Colors.black54,
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
  int firstDiceNumber = 6;
  int secondDiceNumber = 6;
  int thirdDiceNumber = 6;
  int forthDiceNumber = 6;
  //int fifthDiceNumber = 1;
  //int sixthDiceNumber = 1;

  void changeDiceFace() {
    setState(() {
      firstDiceNumber = Random().nextInt(6) + 1;
      secondDiceNumber = Random().nextInt(6) + 1;
      thirdDiceNumber = Random().nextInt(6) + 1;
      forthDiceNumber = Random().nextInt(6) + 1;
      //fifthDiceNumber = Random().nextInt(6) + 1;
      //sixthDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      'images/dice$firstDiceNumber.png',
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
                //Get students to create the second die as a challenge
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      'images/dice$secondDiceNumber.png',
                      color: Colors.amberAccent,
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      'images/dice$thirdDiceNumber.png',
                      color: Colors.green,
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
                //Get students to create the second die as a challenge
                Expanded(
                  child: FlatButton(
                    child: Image.asset(
                      'images/dice$forthDiceNumber.png',
                      color: Colors.blueAccent,
                    ),
                    onPressed: () {
                      changeDiceFace();
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    '${firstDiceNumber+secondDiceNumber+thirdDiceNumber+forthDiceNumber}',
                    textAlign: TextAlign.center,
                    textScaleFactor: 7,
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}