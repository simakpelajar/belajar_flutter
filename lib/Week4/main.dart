
import 'package:flutter/material.dart';
import 'package:idcom/Week4/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyFaker());
  }
}
