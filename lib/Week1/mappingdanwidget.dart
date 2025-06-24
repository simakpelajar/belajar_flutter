import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  List<KotakWarna> alltems = List.generate(
    10,
    (index) => KotakWarna(text: "kotak ke $index", warna: Colors.green),
  );

  List<Map<String, dynamic>> list = [
    {"text": "kotak ke 1", "warna": Colors.red},
    {"text": "kotak ke 2", "warna": Colors.blue},
    {"text": "kotak ke 3", "warna": Colors.yellow},
    {"text": "kotak ke 4", "warna": Colors.purple},
    {"text": "kotak ke 5", "warna": Colors.orange},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Extract Widget'),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: list.map((e) {
            return KotakWarna(
              text: e["text"],
              warna: e["warna"],
            );
          }).toList()),
        ),
      ),
    );
  }
}

class KotakWarna extends StatelessWidget {
  const KotakWarna({super.key, required this.text, required this.warna});

  final String text;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(child: Text(text)),
    );
  }
}
