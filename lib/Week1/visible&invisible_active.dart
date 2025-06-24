import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Layout & Widget Examples'),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [
            Container(
              color: Colors.redAccent,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.lightBlueAccent,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Hello")),
            ),
            Container(
              color: Colors.green,
              child: const Center(child: Text("Hello")),
            ),
          ],
        ),
      ),
    );
  }
}
