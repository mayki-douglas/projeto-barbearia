// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class About extends StatefulWidget {

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sobre o app'),),
      body: Column(
        children: [
          Center(
            child: Text("desenvolvido por Rafael Santini e Mayki Douglas"),
          ),
        ],
      ),
    );
  }
}
