// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Horários disponíveis'),),
      body: Column(
        children: [
          Center(
            child: Text('Tela 2'),
          ),
        ],
      ),
    );
  }
}
