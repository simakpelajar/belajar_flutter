import 'package:flutter/material.dart';

import 'package:idcom/week2/studycase_instagram/pages/profile.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage()
    );
  }
}