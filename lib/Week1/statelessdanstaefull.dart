import 'package:flutter/material.dart';
import 'package:idcom/Week1/widgets/soal_2.dart';
import 'widgets/soal_1.dart';
import 'widgets/soal_2.dart';
import 'widgets/soal_3.dart';
import 'widgets/soal_4.dart';
import 'widgets/soal_5.dart';
import 'widgets/soal_7.dart';
// import '../widgets/soal_8.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Increment Apps',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$nilai',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      nilai--;
                      // Decrement action

                      setState(() {
                        nilai--;
                      });
                      print('$nilai');
                    },
                    child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nilai++;
                      setState(() {
                        nilai++;
                      });
                      // Increment action
                      print('$nilai');
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
