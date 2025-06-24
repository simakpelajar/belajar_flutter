import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PostPage());
  }
}

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  String hasilResponse = "Belum ada data";

  @override
  void initState() {
    super.initState();
  
  }

  @override
  void dispose() {
    // ✅ Cleanup controller
    nameController.dispose();
    jobController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP Post'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameController,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),
          TextField(
            controller: jobController,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Job',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 15),

          ElevatedButton(
            onPressed: () async {
              var myResponse = await http.post(
                Uri.parse("https://reqres.in/api/users"),
                headers: {
                  'Content-Type': 'application/json',
                  'x-api-key': 'reqres-free-v1',
                },
               body: jsonEncode({
  "name": nameController.text,
  "job": jobController.text,
}),
              );

              if (myResponse.statusCode == 201) {
                // decode respons JSON
                Map<String, dynamic> responseData = jsonDecode(myResponse.body);

                setState(() {
                  hasilResponse =
                      "Name: ${responseData["name"]}\nJob: ${responseData["job"]}\nID: ${responseData["id"]}\nCreatedAt: ${responseData["createdAt"]}";
                });
              } else {
                setState(() {
                  hasilResponse =
                      "Gagal kirim data. Status: ${myResponse.statusCode}";
                });
              }
            },

            child: Text("Submit"),
          ),

          Divider(color: Colors.black54, thickness: 1.5),
          SizedBox(height: 10),
          Text(
            "Response: $hasilResponse",
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
        ],
      ),
    );
  }
}

// class GetPage extends StatefulWidget {
//   const GetPage({super.key});

//   @override
//   State<GetPage> createState() => _GetPageState();
// }



// class _GetPageState extends State<GetPage> {
//  late String id;
//  late String email;
//  late String name;

//  @override
//  void initState(){
//   id = 'belum ada data';
//   email = 'belum ada data';
//   name = 'belum ada data';
//   super.initState();
//  }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('HTTP Get'),
//         centerTitle: true,
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               "Id : $id",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             Text(
//               "email : $email",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//              Text(
//               "name : $name",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 15),
//             ElevatedButton(
//               onPressed: () async {
//                 var myResponse = await http.get(
//                   Uri.parse("https://reqres.in/api/users/2"),
//                 );
//                 if (myResponse.statusCode == 200) {
                 
//                   Map<String, dynamic> data =  jsonDecode(myResponse.body);
//                    setState(
//                     (){
//                       email = data["data"]["email"].toString();
//                       id = data["data"]["id"].toString();
//                       name = data["data"]["first_name"].toString();
//                     }
//                   );// If the server returns an OK response, parse the JSON
//                   debugPrint("Response data: ${myResponse.body}");
//                 } else {
//                   // If the server did not return an OK response, throw an exception
//                   debugPrint("Error: ${myResponse.statusCode}");
//                 }
//                 // Action to fetch data
//                 debugPrint("Get Data: ${myResponse.body}");
//               },
//               // onPressed: () async {
//               //   http.get(
//               //     Uri.parse("https://reqres.in/api/users/2"),
//               //   ); // lempar aja, gak dipakai
//               //   debugPrint("Request dikirim");
//               // }, // tanpa await kamu ngelmarp req tapi gak bisa akses karna gak ada future

//               child: Text("Get Data"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
