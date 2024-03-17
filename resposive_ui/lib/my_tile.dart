import 'package:flutter/material.dart';

class my_tile extends StatelessWidget {
  const my_tile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        color: Colors.green,
        height: 80,
      ),
    );
  }
}
