import 'package:flutter/material.dart';
import 'package:resposive_ui/constants.dart';
import 'package:resposive_ui/my_box.dart';
import 'package:resposive_ui/my_tile.dart';

class mobile_Scaffold extends StatefulWidget {
  const mobile_Scaffold({super.key});

  @override
  State<mobile_Scaffold> createState() => _mobile_ScaffoldState();
}

class _mobile_ScaffoldState extends State<mobile_Scaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myBackground,
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
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
