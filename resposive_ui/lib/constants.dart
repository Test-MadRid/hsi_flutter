import 'package:flutter/material.dart';

var myBackground = Colors.grey[300];

var myAppbar = AppBar(
  backgroundColor: Colors.grey[900],
  leading: Builder(
      builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ))),
);
var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("D A S H B O A R D"),
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("M E S S A G E"),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("S E T T I N G"),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("L O G O U T"),
      ),
    ],
  ),
);
