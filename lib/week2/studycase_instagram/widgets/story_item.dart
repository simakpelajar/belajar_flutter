import 'package:flutter/material.dart';


class StoryItem extends StatelessWidget {
  const StoryItem({super.key, required this.title, this.index = 0});
  final String title;
  final int index;
  
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
                  image: DecorationImage(
                    image: NetworkImage("https://picsum.photos/536/354?random=$index"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(title, style: TextStyle(fontSize: 14, color: Colors.grey[700])),
        ],
      ),
    );
  }
}
