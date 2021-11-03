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
      title: 'Barbearia Projeto',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: Home('Barbearia Projeto'),
    );
  }
}
