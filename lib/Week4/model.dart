import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:idcom/Week4/user.dart';

class MyModel extends StatefulWidget {
  MyModel({super.key});

  @override
  State<MyModel> createState() => _MyModelState();
}

class _MyModelState extends State<MyModel> {
  // List<UserModel> allUser = [];
  late Future<List<UserModel>> usersFuture;

  @override
  void initState() {
    super.initState();
    usersFuture = getAllUser();
  }

  Future<List<UserModel>> getAllUser() async {
    try {
      var response = await http.get(
        Uri.parse("https://reqres.in/api/users?page=1"),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> responseBody = json.decode(response.body);
        List data = responseBody["data"] ?? [];

        List<UserModel> allUser = [];
        data.forEach((json) {
          allUser.add(UserModel.fromJson(json));
        });
        return allUser;
      } else {
        throw Exception('Failed to load users: ${response.statusCode}');
      }
    } catch (e) {
      print('Terjadi kesalahan: $e');
      throw Exception('Terjadi kesalahan: $e');
    }
  }
  // Future  getAllUser() async {
  //   try {
  //     var response = await http.get(Uri.parse("https://reqres.in/api/users?page=1"));
  //     List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
  //     data.forEach((json) {
  //       allUser.add(UserModel.fromJson(json));
  //     });
  //     print(allUser);
  //   } catch (e) {
  //     print('Terjadi kesalahan');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar future builder')),
      body:  FutureBuilder<List<UserModel>>(
        future: usersFuture,

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            if (snapshot.data == null || snapshot.data!.isEmpty) {
              return Center(child: Text("tidak ada data"));
            }
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                final user = snapshot.data![index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                  title: Text(
                    ' ${user.firstName + ' ' + user.lastName}',
                  ),
                  subtitle: Text(' ${user.email} '),
                  trailing: Icon(Icons.arrow_forward),
                );
              },
            );
          }
        },
      ),
      // body: Center(
      //   child:
      //   ElevatedButton(
      //     onPressed: () async{
      //       //get data url api
      //        var respone = await http.get(Uri.parse("https://reqres.in/api/users"));
      //        List data = (jsonDecode((respone.body)) as Map<String, dynamic>) ["data"];
      //        data.forEach((element) {
      //          Map<String, dynamic> user = element;
      //          debugPrint(user.toString());
      //        });
      //        print(data);
      //     },
      //     child: Text('Tekan saya')
      //     ),
      // ),
    );
  }
}
