import 'package:flutter/material.dart';


class TabItem extends StatelessWidget {
  const TabItem({
    super.key,
    required this.active,
    required this.icon,
    this.onTap,
  });

  final bool active;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: active ? Colors.black : Colors.white, width: 2),
          ),
        ),
        child: Icon(
        icon,
        size: 30,
      ),
      ),
      
    );
  }
}