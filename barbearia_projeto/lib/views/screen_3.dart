// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_key_in_widget_constructors, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _adressController = TextEditingController();
  TextEditingController _numberController = TextEditingController();

  _rowFlare() {
    return SizedBox(
      child: RiveAnimation.asset('images/pencil.riv'),
      width: 75,
      height: 75,
    );
  }

  _rowName() {
    // ignore: unnecessary_new
    return new TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(hintText: "Digite o seu nome"),
      maxLength: 100,
    );
  }

  _rowAddress() {
    return TextFormField(
      controller: _adressController,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(hintText: "Digite seu Endereço"),
      maxLength: 100,
    );
  }

  _rowNumber() {
    return TextFormField(
      controller: _numberController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: "Digite seu Número de celular",
      ),
      maxLength: 12,
    );
  }

  _rowButton() {
    return TextButton.icon(
      onPressed: () {
        _register();
      },
      label: Text('Cadastrar'),
      icon: Icon(Icons.check),
    );
  }

  _formUI() {
    return Column(
      children: [
        _rowFlare(),
        _rowName(),
        _rowAddress(),
        _rowNumber(),
        _rowButton(),
      ],
    );
  }

  _rowForm() {
    return Form(
      key: _formKey,
      child: _formUI(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastre-se'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          _rowForm(),
        ],
      ),
    );
  }

  _register() {
    print('clicou em registrar');
    print('Seu nome é ${_nameController.text.toString()}');
    print('Seu Endereço é ${_adressController.text.toString()}');
    print('Seu telefone é ${_numberController.text.toString()}');

    _resetFields();
  }

  _resetFields() {
    _nameController.text = '';
    _adressController.text = '';
    _numberController.text = '';
  }
}
