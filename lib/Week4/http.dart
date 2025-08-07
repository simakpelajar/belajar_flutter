import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model_http.dart';
import 'dart:convert';
class MyHttp extends StatelessWidget {
  const MyHttp({super.key});

  Future<CovidSummaryModel> getSummary() async {
    var response = await http.get(Uri.parse("https://disease.sh/v3/covid-19/all"));
    print(response.body);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      return CovidSummaryModel.fromJson(data);
    } else {
      throw Exception("Failed to load data");
    }
  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Summary")),

      body: FutureBuilder<CovidSummaryModel>(
        future: getSummary(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: Text("LOADING DATA"));
          }
          final summary = snapshot.data!;
          return Column(
            children: [
              SummaryItem("Case", summary.cases.toString()),
              SummaryItem("Death", summary.deaths.toString()),
            ],
          );
        },
      ),
    );
  }
}

class SummaryItem extends StatelessWidget {
  final String title;
  final String value;
  const SummaryItem(this.title, this.value, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      elevation: 7,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        height: 300,
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
