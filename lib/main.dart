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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  print('Button left on pressed');
                },
                padding: EdgeInsets.all(16.0),
                child: Image.asset('images/dice1.png')),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
                onPressed: (){
                  print('Button right on press');
                },
                padding: EdgeInsets.all(16.0),
                child: Image.asset('images/dice1.png')),
          ),
        ],
      ),);
  }
}
