import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class local extends StatefulWidget {
  const local({super.key});

  @override
  State<local> createState() => _localState();
}

class _localState extends State<local> {
  int counter = 0;
  bool isDark = false;
  Future<void> setPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('myData')) {
      jembatan.clear();
    }
    final myData = json.encode({
      'counter': counter.toString(),
      'isDark': isDark.toString(),
    });

    jembatan.setString('myData', myData);
    setState(() {});
  }

  Future<void> getPreference() async {
    final jembatan = await SharedPreferences.getInstance();

    if (jembatan.containsKey('myData')) {
      final myData = json.decode(jembatan.getString('myData')!);

      counter = int.parse(myData['counter']);
      isDark = myData['isDark'] == "true" ? true : false;
    }
  }

  void changeTheme() {
    isDark = !isDark;
    setPreference();
  }

  void min() {
    counter = counter - 1;
    setPreference();
  }

  void plus() {
    counter = counter + 1;
    setPreference();
  }

  void refresh() {
    counter = 0;
    isDark = false;
    setPreference();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getPreference(),
        builder: (context, _) => MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: isDark ? ThemeData.dark() : ThemeData.light(),
              home: Scaffold(
                appBar: AppBar(
                  actions: [
                    IconButton(onPressed: refresh, icon: Icon(Icons.refresh ))
                  ],
                  title: Container(
                    alignment: Alignment.center,
                    child: const Text('Local Storage'),
                  ),
                  backgroundColor: Colors.grey,
                ),
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Angka Saat Ini Adalah : $counter',
                        style: TextStyle(fontSize: 25),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              onPressed: min, child: Icon(Icons.remove)),
                          OutlinedButton(
                              onPressed: plus, child: Icon(Icons.add)),
                        ],
                      )
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: changeTheme,
                  child: Icon(Icons.color_lens_outlined),
                ),
              ),
            ));
  }
}
