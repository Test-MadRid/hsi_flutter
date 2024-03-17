import 'package:flutter/material.dart';
import 'package:resposive_ui/constants.dart';
import 'package:resposive_ui/my_box.dart';
import 'package:resposive_ui/my_tile.dart';

class tablet_Scaffold extends StatefulWidget {
  const tablet_Scaffold({super.key});

  @override
  State<tablet_Scaffold> createState() => _tablet_ScaffoldState();
}

class _tablet_ScaffoldState extends State<tablet_Scaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return my_box();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: ((context, index) {
                    return my_tile();
                  })))
        ],
      ),
    );
  }
}
