
import 'package:flutter/material.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
    int _selectedIndex = 0;
    
   final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag),
      label: "Cart",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_2),
      label: "Profile",
    ),
  ];

   final List<Widget> pages = [
    Center(child: Text("Halaman Home")),
    Center(child: Text("Halaman Cart")),
    Center(child: Text("Halaman Profile")),
  ];

    void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          "Fluter Navigation Bar",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        items : items,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[350],
        onTap: _onItemTapped,

      ),
    );
  }
}
