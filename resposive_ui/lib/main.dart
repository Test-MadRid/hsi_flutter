import 'package:flutter/material.dart';
import 'package:resposive_ui/desktop_Scaffold.dart';
import 'package:resposive_ui/mobile_Scaffold.dart';
import 'package:resposive_ui/responsive_layout.dart';
import 'package:resposive_ui/tablet_Scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: const mobile_Scaffold(),
          tabletScaffold: const tablet_Scaffold(),
          dekstopScaffold: const dekstop_Scaffold()),
    );
  }
}
