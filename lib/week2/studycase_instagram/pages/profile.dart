import 'package:flutter/material.dart';
import 'package:idcom/week2/studycase_instagram/widgets/info_item.dart';
import 'package:idcom/week2/studycase_instagram/widgets/profile_picture.dart';
import 'package:idcom/week2/studycase_instagram/widgets/story_add.dart';
import 'package:idcom/week2/studycase_instagram/widgets/story_item.dart';
import 'package:idcom/week2/studycase_instagram/widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final List<String> _storyTitle = [
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
    "Story 6",
    "Story 7",
    "Story 8",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Zhafran",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.keyboard_arrow_down, size: 20),
          ],
        ),
        actions: [
          IconButton(icon: Icon(Icons.add_box_outlined), onPressed: () {}),
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "999"),
                      InfoItem("Followers", "999K"),
                      InfoItem("Following", "999"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Zhafran',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: "Zhafran is a Flutter developer and UI/UX designer.  ",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                children: [
                  TextSpan(
                    text: " #Learn more",
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text("Link in Bio", style: TextStyle(color: Colors.blue)),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey[300]!, width: 2),
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 110,

              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _storyTitle.length + 1,
                itemBuilder: (context, index) {
                  if (index == _storyTitle.length) {
                    return StoryAdd();
                  }
                  return StoryItem(title: _storyTitle[index], index: index);
                },
              ),
            ),
          ),

          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(icon: Icons.grid_on_outlined, active: true),
              TabItem(icon: Icons.person_pin_outlined, active: false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 20,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder:
                (context, index) => Container(
                  margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://picsum.photos/200/300?random=$index",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: 4,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_outlined),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Likes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
