import 'package:flutter/material.dart';

class Soal3 extends StatelessWidget {
  const Soal3({super.key});

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
        child: FlutterLogo(
          size: 200,
          style: FlutterLogoStyle.stacked,
          textColor: Colors.red,
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 2),
        ),
      ),
    );
  }
}
