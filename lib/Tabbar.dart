import 'package:flutter/material.dart';



class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          // centerTitle: true,
          backgroundColor: Colors.teal,
          bottom: TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white70,
          tabs:[
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
           Tab(
             text: "CHATS",
           ),
           Tab(
              text: "STATUS",
           ),
           Tab(
              text: "CALLS",
           ),
          ]),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Camera")),
            Center(child: Text("Chats")),
            Center(child: Text("Status")),
            Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }
}