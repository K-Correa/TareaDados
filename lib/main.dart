

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Dados'),
          ),
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
  int dadoIzquiedo = 1;
  int dadoDerecho = 1;

  void dicee() {
    setState(
      () {
        dadoDerecho = Random().nextInt(6) + 1;
        dadoIzquiedo = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicee();
              },
              child: Image.asset('images/dice$dadoIzquiedo.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                dicee();
              },
              child: Image.asset('images/dice$dadoDerecho.png'),
            ),
          ),
        ],
      ),
    );
  }
}
