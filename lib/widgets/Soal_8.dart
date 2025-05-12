import 'package:flutter/material.dart';

class Soal8 extends StatelessWidget {
  const Soal8({super.key});

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
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),

            height: 120,
            // color: Colors.green,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  margin: const EdgeInsets.only(right: 20),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 50,

              itemBuilder: (context, index) {
                return _buildBox();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBox() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
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
      ),
    );
  }
}
