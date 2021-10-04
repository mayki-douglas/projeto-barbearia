// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, u

import 'package:barbearia_projeto/menu/menu_drawer.dart';

import 'screen_1.dart';
import 'package:flutter/material.dart';

import 'screen_2.dart';

class Home extends StatefulWidget {

  final String title;

  Home(this.title);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(widget.title, textAlign: TextAlign.center,),),
      drawer: MenuDrawer(),
      body: Column(
        children:[
          Image.asset('images/barbe.jpeg', width: 500, height: 300,),
          Center(
            child: Text("A Barbearia que vc entra feio e sai horroroso"),
          ),
          TextButton.icon(
              icon: Icon(Icons.add),
              label: Text('Clique para agendar seu horário'),
          onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1()));
            },
          ),
          TextButton.icon(
            icon: Icon(Icons.add),
            label: Text('Clique para ver os horários disponíveis'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
            },
          ),
        ],
      ),
    );
  }
}
