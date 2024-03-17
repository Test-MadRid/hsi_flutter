import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScaffold;
  final Widget tabletScaffold;
  final Widget dekstopScaffold;

  ResponsiveLayout({
    required this.mobileScaffold,
    required this.tabletScaffold,
    required this.dekstopScaffold,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 550) {
        return mobileScaffold;
      } else if (constraints.maxWidth < 1100) {
        return tabletScaffold;
      } else {
        return dekstopScaffold;
      }
    });
  }
}
