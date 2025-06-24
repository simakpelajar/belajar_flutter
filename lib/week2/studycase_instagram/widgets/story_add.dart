import 'package:flutter/material.dart';


class StoryAdd extends StatelessWidget {
  const StoryAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                height: 77,
                width: 77,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.white, width: 4),
                ),
                child: Icon(Icons.add_a_photo, size: 40),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            "Add Story",
            style: TextStyle(fontSize: 14, color: Colors.grey[700]),
          ),
        ],
      ),
    );
  }
}