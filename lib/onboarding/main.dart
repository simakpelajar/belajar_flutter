import 'package:flutter/material.dart';
import 'pages/intro.dart';
void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IntroductionPage());
  }
}


