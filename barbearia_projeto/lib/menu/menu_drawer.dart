// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'dart:io';

import 'package:barbearia_projeto/constant.dart';
import 'package:barbearia_projeto/views/screen_1.dart';
import 'package:barbearia_projeto/views/views.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MenuDrawer extends StatelessWidget {

  Widget _createHeader(BuildContext context) {
    return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Theme.of(context).primaryColor
          ],
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
        )
      ),
      child: Stack(
        children:[
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Nome Usuário - email do usuario",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),),
          ),
          Positioned(
            top: 45.0,
            left: 16.0,
            child: Icon(Icons.person, size: 100,),
          )
        ],
      ),
    );
  }

  Widget _createDrawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: [
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _createHeader(context),
          SizedBox(height: 10.0,),
          _createDrawerItem(
            icon: Icons.home,
            text: Constant.MENU_HOME,
            onTap: () {
              Navigator.of(context).pop();
            }
          ),
          _createDrawerItem(
            icon: Icons.list,
            text: Constant.MENU_SCREEN_1,
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Screen1()));
            }
          ),
          _createDrawerItem(
            icon: Icons.list,
            text: Constant.MENU_SCREEN_2,
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Screen2()));
            }
          ),
          Divider(),
          _createDrawerItem(
            icon: Icons.info,
            text: Constant.MENU_ABOUT,
            onTap: (){
              Navigator.of(context).pop();
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => About()));
            }
          ),
          Divider(),
          _createDrawerItem(
            icon: Icons.exit_to_app,
            text: Constant.MENU_EXIT,
            onTap: (){
              if(Platform.isAndroid) {
                SystemNavigator.pop();
              } else if(Platform.isIOS) {
                exit(0);
              }
            }
          )
        ],
      ),
    );
  }
}
