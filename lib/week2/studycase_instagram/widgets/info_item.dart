import 'package:flutter/material.dart';
class InfoItem extends StatelessWidget {
  const InfoItem(this.title, this.value, {super.key});

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(title, style: TextStyle(fontSize: 15, color: Colors.grey)),
      ],
    );
  }
}
