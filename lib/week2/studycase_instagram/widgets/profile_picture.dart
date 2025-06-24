
import 'package:flutter/material.dart';
class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.red, Colors.amber],
            ),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 110,
          height: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://avatars.githubusercontent.com/u/102196626?v=4",
              ),
              fit: BoxFit.cover,
            ),
            border: Border.all(color: Colors.white, width: 4),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
