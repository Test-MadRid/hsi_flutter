import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xffb6caff), Color(0xff6691ff), Color(0xffc6d6ff)],
          stops: [0.25, 0.5, 0.75],
          begin: Alignment(-2.0, -2.0),
          end: Alignment(2.0, 2.0),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'lib/asset/logologin.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 70),
              child: Text("Kajian Sunnah Kini Mudah.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.prozaLibre(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold))),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "Aplikasi ini hadir untuk mendukung aktifitas kaum muslimin mendapatkan agenda, artikel dan pengumuman seputar kajian sunnah",
                textAlign: TextAlign.center,
                style: GoogleFonts.openSans(color: Colors.white, fontSize: 18),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                  onPressed: () {},
                  child: Text('Create an account',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue.shade700)),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.white)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 50,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: TextButton(
                  onPressed: () {},
                  child: Text('Login',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w700, color: Colors.white)),
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Colors.blue.shade600)),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 170,
              height: 1,
              color: Colors.grey,
            ),
            TextButton(
                onPressed: () {},
                child: Text("Continue without sign in",
                    style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700, color: Colors.white)))
          ],
        ),
      ),
    );
  }
}
