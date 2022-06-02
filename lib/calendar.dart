import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  var selectedDate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: TextFormField(
          controller: selectedDate,
          readOnly: true,
          style: TextStyle(fontSize: 20, color: Colors.black),
          decoration: InputDecoration(
              hintText: "วันเดือนปีเกิด",
              prefixIcon: const Icon(Icons.calendar_month),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.indigo, width: 1),
                borderRadius: BorderRadius.circular(15),
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  myCalendar(context);
                },
                icon: const Icon(Icons.edit_note),
                iconSize: 48,
                color: Colors.orange,
              )),
        ),
      ),
    );
  }

  Future<void> myCalendar(BuildContext context) async {
    await showDatePicker(
            context: context,
            // locale: const Locale("th", "TH"),
            initialDate: DateTime(1972),
            firstDate: DateTime(1915, 8),
            lastDate: DateTime(1980))
        .then((value) {
      selectedDate.text = value.toString();
    });
  }
}
