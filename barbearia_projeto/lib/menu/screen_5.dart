import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {

  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre nosso Estabelecimento.'),
      ),
      body: Column(
        children: const [
          Center(
            child: Text('Tela 5'),
          )
        ],
      ),
    );
  }
}
