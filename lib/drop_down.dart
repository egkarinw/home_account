import 'package:flutter/material.dart';

class ShowDropdown extends StatefulWidget {
  const ShowDropdown({Key? key}) : super(key: key);

  @override
  State<ShowDropdown> createState() => _ShowDropdownState();
}

class _ShowDropdownState extends State<ShowDropdown> {
  List<String> days = ["จันทร์","อังคาร","พุธ","พฤหัสบดี","ศุกร์","เสาร์","อาทิตย์"];
  String selectedItem = "จันทร์ "; //กำหนดค่าเริ่มต้นของการเลือก

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: DropdownButton(
            value: selectedItem,
            items: days.map<DropdownMenuItem<String>>((String val) {
              return DropdownMenuItem<String>(value: val, child: Text(val));
            }).toList(),
            onChanged: (select) {
              setState(() => selectedItem = select.toString());
              //--------- แสดงข้อความใน snackBar ------------
              final snackBar = SnackBar(content: Text('วันนี้ วัน$select'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            isExpanded: true,
          ),
        ),
      ),
    );
  }
}
