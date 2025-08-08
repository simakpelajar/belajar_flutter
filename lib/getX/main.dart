// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   Widget build(BuildContext context) {
//     return MaterialApp(home: HomePage());
//   }
// }

// class HomePage extends StatefulWidget {
//    HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late int data;

//   @override
//   void initState(){
//   super.initState();
//    data = 5;
//    debugPrint(data.toString());

//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Stateless")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("$data", style: TextStyle(fontSize: 40)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,

//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       data--;
//                     });

//                   },
//                   child: Text('-'),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                       const Color.fromARGB(
//                         255,
//                         152,
//                         192,
//                         225,
//                       ), // warna latar belakang
//                     ),
//                   ),
//                 ),

//                 ElevatedButton(
//                   onPressed: () {
//                      setState(() {
//                       data++;
//                     });
//                   },
//                   child: Text('+'),
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                       const Color.fromARGB(
//                         255,
//                         152,
//                         192,
//                         225,
//                       ), // warna latar belakang
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_navigation/src/root/get_material_app.dart';
// import 'package:get/state_manager.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(home: Home());
//   }
// }

// class Home extends StatelessWidget {

//   final myController = Get.put(Controller());
//   @override
//   Widget build(BuildContext context) {
//     debugPrint("render ulang");
//     return Scaffold(
//       appBar: AppBar(title: Text("Get X management")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(()=>Text('${myController.data.value}')),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     myController.decrement();
//                   },
//                   child: Text("-"),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                    myController.increment();
//                   },
//                   child: Text("+"),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Controller extends GetxController {
//   var data = 0.obs;// staet yag akan dipandau perubahanya

//   increment() => data++;
//   decrement() => data--;
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(home: HomePage());
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("SnackBar")),
//       body: Center(
//         child: ElevatedButton(onPressed: () {
//           Get.snackbar("Hai", "Jangan lupa makan ya",snackPosition: SnackPosition.BOTTOM);
//         }, child: Text("Open Snackbar")),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(home: HomePage());
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Dialog")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder:
//                   (context) => AlertDialog(
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(16),
//                     ),
//                     title: Text("Ini judul"),
//                     content: Text("iNI ADALAH ISI DARI KONTEN ALERT DIALOG"),
//                   ),
//             );

//             Get.defaultDialog(
//               title: " INI ADA ALAHA JDUL",
//               middleText: "iNI ADALAH KONETN DIALOG",
//             );
//             Get.defaultDialog(
//               title: "Peringatan",
//               middleText: "Apakah kamu yakin ingin keluar?",
//               textConfirm: "Ya",
//               textCancel: "Tidak",
//               confirmTextColor: Colors.white,
//               onConfirm: () => Get.back(),
//               onCancel: () {},

//               radius: 10,
//             );
//           },
//           child: Text("Open Dialog"),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(home: HomePage());
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Bottom Sheet')),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             showModalBottomSheet(
//               context: context,
//               builder:
//                   (context) => Container(
//                     height: 300,
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(20),
//                         topRight: Radius.circular(20),
//                       ),
//                     ),

//                     child: ListView(
//                       children: [
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Home  "),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Profile"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Settings"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Settings"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Settings"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Settings"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Settings"),
//                         ),
//                         ListTile(
//                           leading: Icon(Icons.home),
//                           title: Text("Settings"),
//                         ),
//                       ],
//                     ),
//                   ),
//             );

//             Get.bottomSheet(Container(height: 300, color: Colors.red));
//           },
//           child: Text("Open Bottom Sheet"),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(home: HomePage());
//   }
// }

// class HomePage extends StatelessWidget {
//   HomePage({super.key});

//   var homeReactive = Get.put(HomeControllerReactive());
//   var homeSimple = Get.put(HomeControllerSimple());

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("State Reactive vs Simple State")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: 200,
//                   width: 200,
//                   decoration: BoxDecoration(color: Colors.amberAccent),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,

//                     children: [
//                       Text("Ini untuk state reactive"),
//                       SizedBox(height: 50),
//                       Obx(
//                         () => Text(
//                           "${homeReactive.dataPantau}",
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),

//                       SizedBox(height: 50),
//                       ElevatedButton(
//                         onPressed: () {
//                           homeReactive.tambahData();
//                         },
//                         child: Text("Tambah Data"),
//                       ),
//                     ],
//                   ),
//                 ),

//                 Container(
//                   height: 200,
//                   width: 200,
//                   decoration: BoxDecoration(color: Colors.amberAccent),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,

//                     children: [
//                       Text("Ini untuk state Simple"),
//                       SizedBox(height: 50),
//                       GetBuilder<HomeControllerSimple>(
//                         builder:
//                             (controller) => Text("${homeSimple.dataPantau}"),
//                       ),
//                       SizedBox(height: 10),
//                       ElevatedButton(
//                         onPressed: () {
//                           homeSimple.tambahData();
//                         },
//                         child: Text("Tambah Data"),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {
//                           homeSimple.refreshData();
//                         },
//                         child: Text("Refresh Tampilan"),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeControllerReactive extends GetxController {
//   var dataPantau =
//       0.obs; //obs ini obsevre untuk peantauan ui yang ada untuk di rebuild widget nya // view wajib obx

//   void tambahData() {
//     dataPantau++;
//   }
// }

// class HomeControllerSimple extends GetxController {
//   int dataPantau = 0; // gak perlu obs soalnya dia udah getX

//   void tambahData() {
//     dataPantau++;
//   }

//   void refreshData() {
//     update();
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final HomeC = Get.put(HomeControllerReactive());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tipe Data RX")),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx((){

                return Text("${HomeC.dataString.value}", style: TextStyle(fontSize: 20));
              }),
              
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    HomeC.updateDataString();
                  }, child: Text("Update")),
                  ElevatedButton(onPressed: () {
                      HomeC.resetDataString();
                  }, child: Text("Reset")),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Obx((){

                return Text("${HomeC.dataPantau.value}", style: TextStyle(fontSize: 20));
              }),
              
              Row(
                children: [
                  ElevatedButton(onPressed: () {
                    HomeC.tambahData();
                  }, child: Text("+")),
                  ElevatedButton(onPressed: () {
                      HomeC.kurangData();
                  }, child: Text("-")),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class HomeControllerReactive extends GetxController {
  RxInt dataPantau =
      0.obs; //obs ini obsevre untuk peantauan ui yang ada untuk di rebuild widget nya // view wajib obx
   RxString dataString =
      "kiwkiw".obs; //obs ini obsevre untuk peantauan ui yang ada untuk di rebuild widget nya // view wajib obx

  void tambahData() {
    dataPantau++;
  }

  void kurangData() => dataPantau--;

  void updateDataString(){
    dataString.value = "data {udpated}";
  }
   void resetDataString(){
    dataString.value = "kiwkiw";
  }
}