// ignore_for_file: avoid_print

import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AnotherScreen extends StatefulWidget {
  const AnotherScreen({Key? key}) : super(key: key);

  @override
  _AnotherScreenState createState() => _AnotherScreenState();
}

String _name = "";
int _age = 0;
double _height = 0;
bool _developer = false;
List<String> _skills = ["", ""];

class _AnotherScreenState extends State<AnotherScreen> {
  // to delete the data when we exit the screen
  @override
  void dispose() {
    // ignore: todo
    // TODO: implement dispose
    super.dispose();

    print('Remove data');

    deleteData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Another Screen'),
      body: Center(
        // style for all texts
        child: DefaultTextStyle(
          style: const TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Name: " + _name),
              Text("Age: $_age"),
              Text("Height: $_height"),
              Text("Developer: $_developer"),
              Text("Skills #1: " + _skills[0]),
              Text("Skills #2:" + _skills[1]),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text("Get data"),
                onPressed: () async {
                  await getData();
                },
              ),
              const SizedBox(height: 10),
              // ElevatedButton(
              //   child: const Text("Delete data"),
              //   onPressed: () async {
              //     await deleteData();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  // we set the data , now we need to receive data to another screen
  // here we get the data from the set method

  getData() async {
    // create object from SharedPreferences
    SharedPreferences _pref = await SharedPreferences.getInstance();

    setState(() {
      // _name = _pref.getString('name')!;
      _name = _pref.getString('name') == null ? "" : _pref.getString('name')!;
      _age = _pref.getInt('age') == null ? 0 : _pref.getInt('age')!;
      _height =
          _pref.getDouble('height') == null ? 0.0 : _pref.getDouble('height')!;
      _developer = _pref.getBool('developer') == null
          ? false
          : _pref.getBool('developer')!;
      _skills = _pref.getStringList('skills') == null
          ? ["", ""]
          : _pref.getStringList('skills')!;
    });


  }

  // to delete the data
  deleteData() async {
    SharedPreferences _pref = await SharedPreferences.getInstance();

    _pref.remove('name');
    _pref.remove('age');
    _pref.remove('height');
    _pref.remove('developer');
    _pref.remove('skills');
  }
}
