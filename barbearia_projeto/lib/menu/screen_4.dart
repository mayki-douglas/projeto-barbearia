import 'package:flutter/material.dart';



class Screen4 extends StatefulWidget {

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tabela de Preços"),
      ),
      body: Column(
        children: const [
          Center(
            child: Text("tela 4"),
          )
        ],
      ),
    );
  }
}
