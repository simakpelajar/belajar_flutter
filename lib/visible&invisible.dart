// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Bebas App'),
//           centerTitle: true,
//           backgroundColor: Colors.lightBlueAccent,
//         ),
//         body: GridView(
//           // padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
//           gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 200,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           children: [
//             Container(
//               color: Colors.redAccent,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.lightBlueAccent,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.green,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.green,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.green,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.green,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.green,
//               child: const Center(child: Text("Hello")),
//             ),
//             Container(
//               color: Colors.green,
//               child: const Center(child: Text("Hello")),
//             ),
//           ],
//         ),
//         // body: Column(
//         //   mainAxisAlignment: MainAxisAlignment.start,
//         //   crossAxisAlignment: CrossAxisAlignment.start,
//         //   children: [
//         //     Container(
//         //       width: 100,
//         //       height: 100,
//         //       color: Colors.redAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //     Container(
//         //       width: 50,
//         //       height: 50,
//         //       color: Colors.redAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //     Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.redAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),

//         //   ],
//         // ),
//         //  ListView(
//         //   scrollDirection: Axis.horizontal,
//         //   children: [
//         //     Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.redAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //     Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.lightBlueAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //     Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.green,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //      Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.lightBlueAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //      Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.blueGrey,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //      Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.deepPurple,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //      Container(
//         //       width: 200,
//         //       height: 200,
//         //       color: Colors.lightBlueAccent,
//         //       child: const Center(child: Text("Hello")),
//         //     ),
//         //   ],
//         // ),
//       ),
//       // body: SingleChildScrollView(
//       //   scrollDirection: Axis.horizontal,
//       //   child: Row(
//       //     children: [
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //       Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.lightBlueAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       // body: Stack(
//       //   children: [
//       //     Container(
//       //       width: 200,
//       //       height: 200,
//       //       color: Colors.lightBlueAccent,
//       //       child: const Center(child: Text("Hello")),
//       //     ),
//       //     Positioned(
//       //       top: 100,
//       //       left: 100,
//       //       child: Container(
//       //         width: 200,
//       //         height: 200,
//       //         color: Colors.redAccent,
//       //         child: const Center(child: Text("Hello")),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//       // body: Column(
//       //   children: [
//       //     Container(
//       //       width: 200,
//       //       height: 200,
//       //       color: Colors.lightBlueAccent,
//       //       child: Center(child: Text("Hello")),
//       //     ),
//       //     Container(
//       //       width: 200,
//       //       height: 200,
//       //       color: Colors.lightBlueAccent,
//       //       child: Center(child: Text("Hello")),
//       //     ),
//       //     Container(
//       //       width: 200,
//       //       height: 200,
//       //       color: Colors.lightBlueAccent,
//       //       child: Center(child: Text("Hello")),
//       //     ),
//       //   ],
//       // ),
//       // body: Center(
//       //   child: Container(
//       //     width: 200,
//       //     height: 200,
//       //     color: Colors.lightBlueAccent,
//       //     child: Center(child: Text("Hello")),
//       //   ),
//       // ),
//     );
//   }
// }
