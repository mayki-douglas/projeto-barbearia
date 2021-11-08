// ignore_for_file: prefer_const_constructors, prefer_final_fields, use_key_in_widget_constructors, avoid_print

import 'package:barbearia_projeto/constant.dart';
import 'package:barbearia_projeto/views/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen3 extends StatefulWidget {
  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _adressController = TextEditingController();
  TextEditingController _numberController = TextEditingController();

  // ignore: non_constant_identifier_names

  _rowName(){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextFormField(
        controller: _nameController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: "Digite Seu Nome", border: OutlineInputBorder()
        ),
        maxLength: 100,
        validator: (value){
          if (value!.isEmpty){
            return "Preencha seu nome Corretamente";
          }
          return null;
        },
      ),
    );
  }

  _rowAdress(){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextFormField(
        controller: _adressController,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: "Digite seu Endereço", border: OutlineInputBorder()
        ),
        maxLength: 100,
        validator: (value){
          if (value!.isEmpty){
            return "Preencha seu Endereço Corretamente";
          }
          return null;
        }
      ),
    );
  }

  _rowNumber(){
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: TextFormField(
        controller: _numberController,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: "Digite seu Celular", border: OutlineInputBorder()
        ),
        maxLength: 12,
        validator: (value){
          if (value!.isEmpty){
            return "Preencha seu Celular";
          }
          return null;
        }
      ),
    );
  }

  _rowButton() {
    return TextButton.icon(
      onPressed: () {
        _register();
        Navigator.push(context, MaterialPageRoute(builder: (context) => Home(Constant.MENU_HOME)));
      },
      label: Text('Cadastrar'),
      icon: Icon(Icons.check),
    );
  }

  _formUI() {
    return Column(
      children: [
        _rowName(),
        _rowAdress(),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          _rowForm(),
        ]
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
