// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyWidget());
// }

// class MyWidget extends StatefulWidget {
//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Enhance'),
//         ),
//         body:
//             Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//           Text(
//             counter.toString(),
//             style: TextStyle(fontSize: 20),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       counter--;
//                     });
//                   },
//                   child: Icon(Icons.remove)),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     counter++;
//                   });
//                 },
//                 child: Icon(Icons.add),
//               )
//             ],
//           )
//         ]),
//       ),
//     );
//   }
// }
