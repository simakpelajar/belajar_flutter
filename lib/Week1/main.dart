import 'package:flutter/material.dart';
import 'package:idcom/Week1/NavigationPage.dart';
// import 'Dialog.dart';
// import 'Snackbar.dart';
// import 'Tabbar.dart';
// import 'DropDown.dart';
// import 'BottomSheet.dart';
// import 'Drawwer.dart';
import 'BottomNavigation.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home:  Navigationpage());
  }
}
