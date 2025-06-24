import 'package:flutter/material.dart';

// Week 1 Imports - Your actual work
import 'Week1/Dialog.dart';
import 'Week1/BottomNavigation.dart';
import 'Week1/mappingdanwidget.dart' as MappingWidget;
import 'Week1/statelessdanstaefull.dart' as StatefulWidget;
import 'Week1/visible&invisible_active.dart' as LayoutWidget;
import 'Week1/visible&invisible.dart' as VisibleWidget;
import 'Week1/Tabbar.dart';
import 'Week1/Snackbar.dart';
import 'Week1/DropDown.dart';
import 'Week1/NavigationPage.dart';
import 'Week1/BottomSheet.dart';
import 'Week1/widgets/Drawwer.dart';
import 'Week1/widgets/soal_1.dart';
import 'Week1/widgets/soal_2.dart';
import 'Week1/widgets/soal_3.dart';
import 'Week1/widgets/soal_4.dart';
import 'Week1/widgets/soal_5.dart';
import 'Week1/widgets/soal_7.dart';
import 'Week1/widgets/Soal_8.dart';

// Week 2 Imports
import 'week2/studycase_instagram/pages/profile.dart' as InstagramUI;

void main() {
  runApp(MyLearningApp());
}

class MyLearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Roboto',
      ),
      home: MainMenuPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            floating: false,
            pinned: true,
            backgroundColor: Colors.blue[800],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Flutter Learning Hub',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.blue[800]!, Colors.blue[600]!],
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.school,
                    size: 60,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                'Week 1 - Basic Flutter Concepts',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),          SliverList(
            delegate: SliverChildListDelegate([
              ...week1Items.take(13).map((item) => buildMenuItem(context, item)).toList(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  '📝 Latihan Soal Week 1',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              ...week1Items.skip(13).map((item) => buildMenuItem(context, item)).toList(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Text(
                  'Week 2 - Advanced UI & Study Cases',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],
                  ),
                ),
              ),
              ...week2Items.map((item) => buildMenuItem(context, item)).toList(),
              SizedBox(height: 20),
            ]),
          ),
        ],
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, MenuItem item) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: item.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              item.icon,
              color: item.color,
              size: 24,
            ),
          ),
          title: Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[800],
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4),
              Text(
                item.description,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
              if (item.concepts.isNotEmpty) ...[
                SizedBox(height: 8),
                Wrap(
                  spacing: 4,
                  children: item.concepts
                      .map((concept) => Chip(
                            label: Text(
                              concept,
                              style: TextStyle(fontSize: 10),
                            ),
                            backgroundColor: item.color.withOpacity(0.1),
                            padding: EdgeInsets.zero,
                            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ))
                      .toList(),
                ),
              ],
            ],
          ),
          trailing: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: item.color.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              Icons.arrow_forward_ios,
              color: item.color,
              size: 16,
            ),
          ),
          onTap: () {
            if (item.page != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => item.page!,
                ),
              );
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${item.title} sedang dalam pengembangan'),
                  backgroundColor: Colors.orange,
                  behavior: SnackBarBehavior.floating,
                  duration: Duration(seconds: 2),
                ),
              );
            }
          },        ),
      ),
    );
  }
  // Week 1 Learning Items - Sesuai file Anda yang ada
  List<MenuItem> get week1Items => [    // Menu Dasar Flutter
    MenuItem(
      title: 'Stateless & Stateful Widget',
      description: 'Counter app dengan increment/decrement menggunakan setState',
      icon: Icons.add_circle_outline,
      color: Colors.green,
      concepts: ['StatefulWidget', 'setState', 'Counter'],
      page: StatefulWidget.MyApp(),
    ),
    MenuItem(
      title: 'Mapping & Widget List',
      description: 'Extract widget dan mapping data dengan List.generate',
      icon: Icons.view_list,
      color: Colors.orange,
      concepts: ['List.generate', 'Custom Widget', 'SingleChildScrollView'],
      page: MappingWidget.MyApp(),
    ),
    MenuItem(
      title: 'Visible & Invisible Widget',
      description: 'Widget visibility control dan positioning',
      icon: Icons.visibility,
      color: Colors.purple,
      concepts: ['Stack', 'Positioned', 'Container'],
      page: VisibleWidget.MyApp(),
    ),
    MenuItem(
      title: 'Layout & Container Active',
      description: 'GridView layout dengan berbagai container dan warna',
      icon: Icons.grid_view,
      color: Colors.deepPurple,
      concepts: ['GridView', 'Container', 'Layout'],
      page: LayoutWidget.MyApp(),
    ),
    MenuItem(
      title: 'Dialog & Alert',
      description: 'Alert dialog, confirmation dialog, dan custom popup',
      icon: Icons.message,
      color: Colors.red,
      concepts: ['AlertDialog', 'showDialog', 'Navigator.pop'],
      page: DialogPage(),
    ),
    MenuItem(
      title: 'Bottom Navigation',
      description: 'Bottom navigation bar dengan multiple pages',
      icon: Icons.navigation,
      color: Colors.pink,
      concepts: ['BottomNavigationBar', 'IndexedStack', 'setState'],
      page: Bottomnavigation(),
    ),
    MenuItem(
      title: 'Tab Bar Navigation',
      description: 'Tab navigation dengan TabController dan multiple tabs',
      icon: Icons.tab,
      color: Colors.brown,
      concepts: ['TabBar', 'TabBarView', 'TabController'],
      page: MyTabBar(),
    ),
    MenuItem(
      title: 'Navigation & Routing',
      description: 'Page navigation dengan Navigator.push dan routing',
      icon: Icons.arrow_forward,
      color: Colors.cyan,
      concepts: ['Navigator.push', 'MaterialPageRoute', 'Routes'],
      page: Navigationpage(),
    ),
    MenuItem(
      title: 'Bottom Sheet Modal',
      description: 'Modal bottom sheet dan sheet interactions',
      icon: Icons.vertical_align_bottom,
      color: Colors.teal,
      concepts: ['BottomSheet', 'showModalBottomSheet'],
      page: MyBottomSheet(),
    ),
    MenuItem(
      title: 'Dropdown Selection',
      description: 'Dropdown button dan form selection',
      icon: Icons.arrow_drop_down,
      color: Colors.indigo,
      concepts: ['DropdownButton', 'DropdownMenuItem'],
      page: DropDown(),
    ),
    MenuItem(
      title: 'Snackbar Notification',
      description: 'Toast message dan notifikasi sementara',
      icon: Icons.info,
      color: Colors.amber,
      concepts: ['SnackBar', 'ScaffoldMessenger'],
      page: Snackbar(),
    ),
    MenuItem(
      title: 'Drawer Navigation',
      description: 'Side drawer navigation menu',
      icon: Icons.menu,
      color: Colors.blueGrey,
      concepts: ['Drawer', 'DrawerHeader', 'ListTile'],
      page: Drawwer(),
    ),
    
    // Latihan Soal Section
    MenuItem(
      title: 'Soal Latihan 1',
      description: 'Latihan membuat layout dasar dengan AppBar dan body',
      icon: Icons.quiz,
      color: Colors.green[700]!,
      concepts: ['AppBar', 'Body Layout', 'FlutterLogo'],
      page: Soal1(),
    ),
    MenuItem(
      title: 'Soal Latihan 2',
      description: 'Latihan container dan text styling',
      icon: Icons.quiz,
      color: Colors.orange[700]!,
      concepts: ['Container', 'Text Style', 'Colors'],
      page: Soal2(),
    ),
    MenuItem(
      title: 'Soal Latihan 3',
      description: 'Latihan widget composition dan layout',
      icon: Icons.quiz,
      color: Colors.purple[700]!,
      concepts: ['Widget Composition', 'Layout'],
      page: Soal3(),
    ),
    MenuItem(
      title: 'Soal Latihan 4',
      description: 'Latihan advanced layout dan styling',
      icon: Icons.quiz,
      color: Colors.red[700]!,
      concepts: ['Advanced Layout', 'Styling'],
      page: Soal4(),
    ),
    MenuItem(
      title: 'Soal Latihan 5',
      description: 'Latihan interactive widgets',
      icon: Icons.quiz,
      color: Colors.teal[700]!,
      concepts: ['Interactive Widgets', 'User Input'],
      page: Soal5(),
    ),
    MenuItem(
      title: 'Soal Latihan 7',
      description: 'Latihan complex layout dan navigation',
      icon: Icons.quiz,
      color: Colors.indigo[700]!,
      concepts: ['Complex Layout', 'Navigation'],
      page: Soal7(),
    ),
    MenuItem(
      title: 'Soal Latihan 8',
      description: 'Latihan comprehensive flutter concepts',
      icon: Icons.quiz,
      color: Colors.pink[700]!,
      concepts: ['Comprehensive', 'Flutter Concepts'],
      page: Soal8(),
    ),
  ];
  // Week 2 Learning Items
  List<MenuItem> get week2Items => [
    MenuItem(
      title: 'Instagram UI Clone',
      description: 'Studi kasus membuat UI mirip Instagram dengan profile page',
      icon: Icons.camera_alt,
      color: Colors.purple[600]!,
      concepts: ['ListView.builder', 'GridView', 'Story UI', 'Profile Layout'],
      page: InstagramUI.ProfilePage(),
    ),
  ];
}

// Model for menu items
class MenuItem {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final List<String> concepts;
  final Widget? page;

  MenuItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    this.concepts = const [],
    this.page,
  });
}
