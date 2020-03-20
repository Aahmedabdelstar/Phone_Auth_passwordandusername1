import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Motor'),
            centerTitle: true,
            automaticallyImplyLeading: false,
          ),

          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout',
              style: TextStyle(
              fontSize: 20.0,
            ),),
            onTap: (){
              Navigator.of(context).pop();
              Provider.of<Auth>(context,listen:false).logout();}
          ),

        ],
      ),
    );
  }
}
