import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
//future builder ngeget data tanpa api tanpa interaksi menggunakan api fungsi future builder
//🧠 Apa itu FutureBuilder di Flutter?
//FutureBuilder adalah widget Flutter yang menunggu data dari sebuah Future, lalu secara otomatis membangun ulang UI berdasarkan status Future tersebut.


class MyFutureBuilder extends StatefulWidget {
  MyFutureBuilder({super.key});

  @override
  State<MyFutureBuilder> createState() => _MyFutureBuilderState();
}

class _MyFutureBuilderState extends State<MyFutureBuilder> {
  List<Map<String, dynamic>> allUser = [];

  Future getAllUser() async {
    try {
      var response = await http.get(Uri.parse("https://reqres.in/api/users"));
      List data = (json.decode(response.body) as Map<String, dynamic>)["data"];
      data.forEach((element) {
        allUser.add(element);
      });
      print(allUser);
    } catch (e) {
      print('Terjadi kesalahan');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Belajar future builder')),
      body: FutureBuilder(
        future: getAllUser(),

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.grey[300],
                    backgroundImage: NetworkImage( allUser[index]['avatar'] ),
                  ),
                  title: Text(' ${allUser[index]['first_name']} ${allUser[index]['last_name']}'),
                  subtitle: Text(' ${allUser[index]['email']} '),
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
