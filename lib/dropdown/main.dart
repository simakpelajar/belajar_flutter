import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//   List<Map<String, dynamic>> dataList = [
//     {"country": "Indonesia", "id": 1},
//     {"country": "Malaysia", "id": 2},
//     {"country": "Thailand", "id": 3},
//     {"country": "Filipina", "id": 4},
//     {"country": "Brazil", "id": 5},
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("DropwDown")),
//       body: DropdownSearch<Map<String, dynamic>>(
//         items: (String filter, dynamic loadProps) => dataList,
//         // TAMBAHKAN INI - compareFn wajib untuk Map
//         compareFn: (item1, item2) => item1["id"] == item2["id"],
//         popupProps: PopupProps.menu(
//           //disabledItemFn: (item) => item == 'Item 3',
//           fit: FlexFit.loose,
//           showSearchBox: false,
//           showSelectedItems: true,
//         ),
//         selectedItem: {"country": "Malaysia", "id": 2},
//         onChanged: print,
//         suffixProps: DropdownSuffixProps(
//           // Jika ada clearButtonProps, uncomment baris di bawah
//           clearButtonProps: ClearButtonProps(isVisible: true),
//         ),
//       ),
//     );
//   }
// }
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WILAYAH INDONESIA"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<Map<String, dynamic>>(
            compareFn: (item1, item2) => item1["id"] == item2["id"],
            items: (String filter, LoadProps? loadProps) async {
              try {
                var response = await http.get(
                  Uri.parse("https://wilayah.id/api/provinces.json")
                );
                
                if (response.statusCode == 200) {
                  // Decode JSON response
                  var jsonData = json.decode(response.body);
                  
                  // Handle different possible response structures
                  List<dynamic> rawData;
                  
                  if (jsonData is Map && jsonData.containsKey('data')) {
                    // If response is wrapped in 'data' key
                    rawData = jsonData['data'] as List<dynamic>;
                  } else if (jsonData is List) {
                    // If response is directly a list
                    rawData = jsonData;
                  } else {
                    // Unexpected format
                    print("Unexpected API response format: $jsonData");
                    return [{"name": "Unexpected data format", "id": "error"}];
                  }
                  
                  // Convert to List<Map<String, dynamic>> and filter
                  List<Map<String, dynamic>> provinces = rawData
                      .where((item) => item is Map<String, dynamic>)
                      .cast<Map<String, dynamic>>()
                      .where((item) {
                        String name = item['name']?.toString() ?? '';
                        return name.toLowerCase().contains(filter.toLowerCase());
                      })
                      .toList();
                      
                  return provinces;
                } else {
                  print("HTTP Error: ${response.statusCode}");
                  return [{"name": "Error loading data (${response.statusCode})", "id": "error"}];
                }
              } catch (e) {
                print("Exception: $e");
                return [{"name": "Error: $e", "id": "error"}];
              }
            },
            
            // Add proper display configuration
            itemAsString: (Map<String, dynamic> item) {
              return item['name']?.toString() ?? 'Unknown';
            },
            
            // Add popup configuration
            popupProps: PopupProps.menu(
              showSearchBox: true,
              searchFieldProps: TextFieldProps(
                decoration: InputDecoration(
                  hintText: "Cari provinsi...",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            
          
            
            onChanged: (value) {
              print("Selected province: $value");
            },
          ),
        ],
      ),
    );
  }
}