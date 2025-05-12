import 'dart:math';

import 'package:flutter/material.dart';

class Soal4 extends StatelessWidget {
  const Soal4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bebas App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: FlutterLogo(),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 80, 80, 80),
        actions: [
          IconButton(
            onPressed: () {
              print("more");
            },
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: Center(
        child: Transform.rotate(
          angle: pi, // Rotate the widget by 90 degrees
          child: FlutterLogo(
            size: 100,
            style: FlutterLogoStyle.stacked,
            textColor: Colors.red,
            curve: Curves.bounceInOut,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
