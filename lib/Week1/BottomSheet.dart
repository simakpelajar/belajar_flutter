import 'package:flutter/material.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bottom Sheet')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  builder: (context) =>
                     Container(
                      padding: const EdgeInsets.all(20),
                      height: 300,
                      width: double.infinity,
                      child: ListView(
                        children: [
                          ListBody(
                            children: [
                              const Text(
                                "This is a bottom sheet",
                                style: TextStyle(fontSize: 20),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "This is a bottom sheet",
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
        
                          ListTile(
                            leading: const Icon(Icons.home),
                            title: const Text("Home"),
                            onTap: () => print("Home"),
                          ),
                          ListTile(
                            leading: const Icon(Icons.settings),
                            title: const Text("Settings"),
                            onTap: () => print("Settings"),
                          ),
                          ListTile(
                            leading: const Icon(Icons.info),
                            title: const Text("About"),
                            onTap: ()  => print("About"),
                          ),
                          ListTile(
                            leading: const Icon(Icons.exit_to_app),
                            title: const Text("Exit"),
                            onTap: () => print("Exit"),
                          ),
                          ListTile(
                            leading: const Icon(Icons.close),
                            title: const Text("Close"),
                            onTap: () => Navigator.pop(context),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "This is a bottom sheet",
                            style: TextStyle(fontSize: 20),
                          ), 
                        ],
                      )
                    ),
                );
              },
              child: const Text("Show Bottom Sheet"),
            ),
          ),
        ),
      ),
    );
  }
}
