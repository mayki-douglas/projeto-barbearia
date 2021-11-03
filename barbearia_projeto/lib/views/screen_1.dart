// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Screen1 extends StatefulWidget {

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agende seu horário'),),
      body: Column(
        children: [
          Center(
            child: Text('Tela 1'),
          )
        ],
      )
    );
  }
}
