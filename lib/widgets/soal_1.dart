
import 'package:flutter/material.dart';
class Soal1 extends StatelessWidget {
  const Soal1({
    super.key,
  });

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
        child:  Text(
              "Hello world",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.yellow,
              ),
            ),
          ),
        );
  }
}
