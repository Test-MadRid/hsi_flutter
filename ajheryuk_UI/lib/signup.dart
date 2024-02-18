import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            child: Image.asset(
              'assets/logo/logo2.png',
              fit: BoxFit.contain,
            ),
            height: 140,
          ),
          TextField(
            decoration: InputDecoration(
                label: Text('Full Name'),
                border: InputBorder.none,
                fillColor: Colors.grey[100],
                filled: true),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            decoration: InputDecoration(
                label: Text('Email'),
                border: InputBorder.none,
                fillColor: Colors.grey[100],
                filled: true),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                label: Text('Password'),
                border: InputBorder.none,
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                    ))),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEC5F5F),
                    padding: EdgeInsets.symmetric(vertical: 10)),
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  height: 1,
                  color: Color(0xFF8C8C8C),
                ),
              ),
              Text(
                'or',
                style: TextStyle(color: Color(0xFF8C8C8C)),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  height: 1,
                  color: Color(0xFF8C8C8C),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
          Container(
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0082CD),
                    padding: EdgeInsets.symmetric(vertical: 10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo/facebook.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Sign Up with Facebook',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/logo/google.png'),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Sign Up with Google',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                )),
          ),
          Row(
            children: [
              Text('By signing up you accept the ',
                  style: TextStyle(color: Colors.black54)),
              TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.all(0),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Terms of Service',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('and ', style: TextStyle(color: Colors.black54)),
              TextButton(
                  style: ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                  onPressed: () {},
                  child: Text(
                    'Privacy Policy',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  )),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(color: Colors.black54),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Log in',
                      style: TextStyle(fontSize: 16, color: Colors.blue)))
            ],
          )
        ],
      )),
    );
  }
}
