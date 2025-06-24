import 'package:flutter/material.dart';

class Drawwer extends StatelessWidget {
  const Drawwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drawer'), backgroundColor: Colors.blue),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Container(
              alignment: Alignment.bottomLeft,
              color: Colors.blue,
              width: double.infinity,
              height: 150,
              child: Text("Dashboard",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
           Expanded(
            child:ListView(
              padding: const EdgeInsets.all(20),
              children: [
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
                  onTap: () => print("About"),
                ),
                ListTile(
                  leading: const Icon(Icons.contact_page),
                  title: const Text("Contact"),
                  onTap: () => print("Contact"),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: () => print("Logout"),
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text("Exit"),
                  onTap: () => print("Exit"),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () => print("Settings"),
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("About"),
                  onTap: () => print("About"),
                ),
                ListTile(
                  leading: const Icon(Icons.contact_page),
                  title: const Text("Contact"),
                  onTap: () => print("Contact"),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: () => print("Logout"),
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text("Exit"),
                  onTap: () => print("Exit"),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () => print("Settings"),
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("About"),
                  onTap: () => print("About"),
                ),
                ListTile(
                  leading: const Icon(Icons.contact_page),
                  title: const Text("Contact"),
                  onTap: () => print("Contact"),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  title: const Text("Logout"),
                  onTap: () => print("Logout"),
                ),
                ListTile(
                  leading: const Icon(Icons.exit_to_app),
                  title: const Text("Exit"),
                  onTap: () => print("Exit"),
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () => print("Settings"),
                ),
                ListTile(
                  leading: const Icon(Icons.info),
                  title: const Text("About"),
                  onTap: () => print("About"),
                ),
              ],
            )
           
           )
          ],
        ),
      )

    );
  }
}
