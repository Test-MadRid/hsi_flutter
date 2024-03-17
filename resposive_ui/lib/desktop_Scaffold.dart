import 'package:flutter/material.dart';
import 'package:resposive_ui/constants.dart';
import 'package:resposive_ui/my_box.dart';
import 'package:resposive_ui/my_tile.dart';

class dekstop_Scaffold extends StatefulWidget {
  const dekstop_Scaffold({super.key});

  @override
  State<dekstop_Scaffold> createState() => _dekstop_ScaffoldState();
}

class _dekstop_ScaffoldState extends State<dekstop_Scaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
      ),
      backgroundColor: myBackground,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
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
          ),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.pink,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
