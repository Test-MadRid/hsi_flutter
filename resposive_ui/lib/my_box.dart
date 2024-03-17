import 'package:flutter/material.dart';

class my_box extends StatelessWidget {
  const my_box({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Container(
        color: Colors.blue,
      ),
    );
  }
}
