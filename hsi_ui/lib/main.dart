import 'package:flutter/material.dart';
import 'slide.dart';
import 'profil.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedTabIndex = 0;

  void onNavBarTapped(int index) {
    setState(() {
      selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final listPage = <Widget>[
      home(),
      slide(),
      const Text('Segera Hadir'),
      profil()
    ];
    final buttonNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
          icon: Icon(Icons.home_filled), label: 'Beranda'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.school_rounded), label: 'Akademi'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.audio_file_rounded), label: 'Reguler'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person_4_outlined), label: 'Profil'),
    ];
    final buttonNavBar = BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: buttonNavBarItems,
      currentIndex: selectedTabIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue[900],
      onTap: onNavBarTapped,
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: listPage[selectedTabIndex],
        ),
        bottomNavigationBar: buttonNavBar,
      ),
    );
  }
}
