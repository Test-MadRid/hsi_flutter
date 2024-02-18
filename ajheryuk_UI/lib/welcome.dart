import 'package:flutter/material.dart';
import 'login.dart';

class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  child: Image.asset('assets/logo/logo.png'),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Welcome to Ajheryuk',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Best and popular apps for live education course from home',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Color(0xFF8C8C8C)),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return login();
                          },
                        ));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFEC5F5F),
                          padding: EdgeInsets.symmetric(vertical: 20)),
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
