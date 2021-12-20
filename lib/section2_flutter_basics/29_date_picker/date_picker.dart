import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EDatePicker extends StatefulWidget {
  const EDatePicker({Key? key}) : super(key: key);

  @override
  _EDatePickerState createState() => _EDatePickerState();
}

class _EDatePickerState extends State<EDatePicker> {
  static DateTime? _selectedDate;

  DateTime? _datePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(), // must be in rang with firstDate
      firstDate: DateTime.now(),
      lastDate: DateTime(2023),
    ).then((value) {
      if (value == null) {
        return 'Pick a date';
      } else {
        setState(() {
          _selectedDate = value;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Date Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text(
                "Date Picker",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                ),
              ),
              onPressed: _datePicker,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                ),
              ),
            ),
            const SizedBox(height: 32),
            Text(
              DateFormat.yMMMd().format(_selectedDate!),
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
