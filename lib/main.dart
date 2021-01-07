import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
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
    var diceImageLeft = 1;
    var diceImageRight = 1;
  @override
  Widget build(BuildContext context) {

    return Center(

      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    diceImageLeft = Random().nextInt(6)+1;
                  });
                },
                padding: EdgeInsets.all(16.0),
                child: Image.asset('images/dice$diceImageLeft.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    diceImageRight = Random().nextInt(6)+1;
                  });
                },
                padding: EdgeInsets.all(16.0),
                child: Image.asset('images/dice$diceImageRight.png')),
          ),
        ],
      ),);
  }
}

