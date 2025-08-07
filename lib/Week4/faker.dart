import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

class MyFaker extends StatefulWidget {
  MyFaker({super.key});

  @override
  State<MyFaker> createState() => _MyFakerState();
}

class _MyFakerState extends State<MyFaker> {
  String tanggal = DateFormat.yMMMMEEEEd().format(DateTime.now());
  int _currentIndex = 0;
  
  late List<Widget> widgets;

  @override
  void initState(){
  super.initState();

   widgets = [
    ListView.builder(
        itemCount: 5,
        itemBuilder:
            (context, index) => ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(
                  "https://picsum.photos/id/${index}/200/300",
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(faker.internet.freeEmail()),
                  //Text("${DateFormat.yMMMMEEEEd().format(DateTime.now())}"),
                  Text("${tanggal}"),
                  // Text("${DateFormat.yMMMMEEEEd().format(DateTime.parse(tanggal))}")
                ],
              ),
            ),
      ),
      Center(child: Text("Ini halaman Tab B")),
      Center(child: Text("Ini halaman Tab C")),
  ];
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Faker Example")),
      body: widgets[_currentIndex], 
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(title: 'Tab A', icon: Icons.add),
          TabItem(title: 'Tab B', icon: Icons.near_me),
          TabItem(title: 'Tab C', icon: Icons.web),
        ],
        initialActiveIndex: 0,
        onTap: (int i) => setState(() {
          _currentIndex = i;
        }),
  
      ),
    );
  }
}
