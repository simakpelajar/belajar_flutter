import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

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

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Map<String, dynamic>> dataList = [
    {"country": "Indonesia", "id": 1},
    {"country": "Malaysia", "id": 2},
    {"country": "Thailand", "id": 3},
    {"country": "Filipina", "id": 4},
    {"country": "Brazil", "id": 5},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropwDown")),
      body: DropdownSearch<Map<String, dynamic>>(
        items: (String filter, dynamic loadProps) => dataList,
        // TAMBAHKAN INI - compareFn wajib untuk Map
        compareFn: (item1, item2) => item1["id"] == item2["id"],
        popupProps: PopupProps.menu(
          //disabledItemFn: (item) => item == 'Item 3',
          fit: FlexFit.loose,
          showSearchBox: false,
          showSelectedItems: true,
        ),
        selectedItem: {"country": "Malaysia", "id": 2},
        onChanged: print,
        suffixProps: DropdownSuffixProps(
          // Jika ada clearButtonProps, uncomment baris di bawah
          clearButtonProps: ClearButtonProps(isVisible: true),
        ),
      ),
    );
  }
}
