import 'package:flutter/material.dart';

class Soal7 extends StatelessWidget {
  const Soal7({super.key});

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
        leading: const FlutterLogo(),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 80, 80, 80),
        actions: [
          IconButton(
            onPressed: () {
              print('more');
            },
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildBox(),
                const SizedBox(height: 12),
                _buildBox(),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildBox(),
                const SizedBox(height: 12),
                _buildBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox() {
    return Container(
      width: 200,
      height: 200,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
