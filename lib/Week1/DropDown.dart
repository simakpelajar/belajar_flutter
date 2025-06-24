import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  final List<DropdownMenuItem<String>> data = [
    DropdownMenuItem(child: Text("Item satu"), value: "item1"),
    DropdownMenuItem(child: Text("Item dua"), value: "item2"),
    DropdownMenuItem(child: Text("Item tiga"), value: "item3"),
  ];

  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = data[0].value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter DropDown Button')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: DropdownButton<String>(
            value: _selectedValue,
            items: data,
            onChanged: (value) {
              setState(() {
                _selectedValue = value;
              });
              print("Selected value: $value");
            },
          ),
        ),
      ),
    );
  }
}
