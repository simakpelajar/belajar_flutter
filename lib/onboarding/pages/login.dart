import 'package:flutter/material.dart';
import 'package:idcom/onboarding/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
    final passwordController = TextEditingController();

    
  bool isButtonEnabled = false;

  @override
  void initState(){
    super.initState();
    emailController.addListener(_checkInput);
        passwordController.addListener(_checkInput);
  }

  void _checkInput(){
    final email = emailController.text.trim();
      final password = passwordController.text.trim();
      setState(() {
        isButtonEnabled =email.isNotEmpty && password.isNotEmpty;
      });
  }

    void _login() {
    // Lakukan proses post login ke server (API) di sini
    // Untuk contoh, langsung ke Homepage
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Homepage()),
    );
  }
    @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
             controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
                 controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),

          ElevatedButton(
            onPressed: isButtonEnabled ? _login : null,

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // warna latar
              foregroundColor: Colors.white, // warna teks
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4, // efek bayangan
            ),
            child: Text("Login "),
          ),
        ],
      ),
    );
  }
}
