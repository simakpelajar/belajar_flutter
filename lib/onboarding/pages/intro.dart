import 'package:idcom/onboarding/pages/home.dart';
import 'package:idcom/onboarding/pages/login.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';
import '../main.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: Center(
            child: Image.network("https://picsum.photos/200", height: 175.0),
          ),
          decoration: const PageDecoration(pageColor: Colors.white),
        ),
        PageViewModel(
          title: "Title of blue page",
          body:
              "Welcome to the app! This is a description on a page with a blue background.",
          image: Center(
            child: Image.network("https://picsum.photos/200", height: 175.0),
          ),
          decoration: const PageDecoration(pageColor: Colors.white),
        ),
      ],

      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      next: const Icon(Icons.arrow_forward),
      showBackButton: true,
      back: const Icon(Icons.arrow_back),
    );
  }
}
