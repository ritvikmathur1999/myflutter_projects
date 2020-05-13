import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Random Dice", 
            style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
            ),
            ),
          backgroundColor: Colors.grey[900],
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
  int leftButtonNum=1;
  int rightButtonNum=1;
  Widget build(BuildContext context) {
    return Center(
      child: Column(
      children: <Widget>[
        Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  leftButtonNum=Random().nextInt(6)+1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('images/dice$leftButtonNum.png'),
              ),
              ),
        ), 
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "PLAYER 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  rightButtonNum=Random().nextInt(6)+1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset('images/dice$rightButtonNum.png'),
              ),
              ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "PLAYER 2",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
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