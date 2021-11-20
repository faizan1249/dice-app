import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDice=1;
  int RightDice=1;
  void ChangeDice()
  {
    setState(() {
      RightDice = Random().nextInt(6)+1;
      LeftDice = Random().nextInt(6)+1;

    });

  }
  @override
  Widget build(BuildContext context) {
    return Center(

      child: Row(
        children: [

          Expanded(
            flex: 2,
              child:TextButton(
                onPressed: ChangeDice,
                child: Image.asset('images/dice$LeftDice.png'),
              )
          ),
          Expanded(
            flex: 2,
            child:Image.asset('images/dice$RightDice.png'),
          ),

        ],
      ),
    );
  }
}

