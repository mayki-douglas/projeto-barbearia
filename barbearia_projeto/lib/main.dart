// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'views/views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbearia Fulano',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home('Barbearia Fulano de tal'),
    );
  }
}