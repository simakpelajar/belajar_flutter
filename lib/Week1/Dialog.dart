import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // showAboutDialog(
            //   context: context,
            //   children: [
            //     Text("Ini adalah deskripsi"),
            //     Text("Ini adalah deskripsi"),
            //     Text("Ini adalah deskripsi"),
            //   ],
            //   );
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                title: Text("Hallo"),
                content: Text("Ini adalah deskripsi"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("OK"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                ],
                ),
            );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
