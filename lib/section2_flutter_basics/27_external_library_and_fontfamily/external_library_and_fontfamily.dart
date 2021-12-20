import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import 'info.dart';

class EExternalLibrary extends StatelessWidget {
  EExternalLibrary({Key? key}) : super(key: key);

  final List<Info> listOfInfo = [
    Info(name: 'Hello World!  #1', height: 167, date: DateTime.now()),
    Info(name: 'Hello World!  #2', height: 170, date: DateTime.now()),
    Info(name: 'Hello World!  #3', height: 172, date: DateTime.now()),
    Info(name: 'Hello World!  #4', height: 177, date: DateTime.now()),
    Info(name: 'Hello World!  #5', height: 187, date: DateTime.now()),
    Info(name: 'Hello World!  #6', height: 167, date: DateTime.now()),
    Info(name: 'Hello World!  #7', height: 170, date: DateTime.now()),
    Info(name: 'Hello World!  #8', height: 172, date: DateTime.now()),
    Info(name: 'Hello World!  #9', height: 177, date: DateTime.now()),
    Info(name: 'Hello World!  #10', height: 187, date: DateTime.now()),
  ]; // map function change this list of object to list of widgets

  void showModalBottomSheetMethod(BuildContext ctx) {
    // also builder needs context but we will not use it so we can
    //add _ it measn i know we need to add a context but i will not use it
    showModalBottomSheet(
        backgroundColor: Colors.cyan,
        context: ctx,
        builder: (_) {
          return ListView.builder(
            itemCount: listOfInfo.length,
            itemBuilder: (context, index) => Card(
              color: Colors.blue,
              elevation: 10,
              margin: const EdgeInsets.all(12),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Card(
                  margin: const EdgeInsets.all(6),
                  color: Colors.yellow.shade300,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: buildText(

                        ///
                        ///     DateFormate() --> from the intl package library
                        ///       DateFormate().format(DateTime)
                        ///
                        text: '${listOfInfo[index].name} :: '
                            '${listOfInfo[index].height} :: '
                            '\n'
                            '\n${DateFormat().format(listOfInfo[index].date!)}'),
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade200,
      appBar: AppBar(
        foregroundColor: Colors.amber.shade200,
        backgroundColor: Colors.black,
        title: const Text('Map Function'),
      ),
      body: ListView.builder(
        itemCount: listOfInfo.length,
        itemBuilder: (context, index) => Card(
          color: Colors.amberAccent,
          elevation: 10,
          margin: const EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              margin: const EdgeInsets.all(6),
              color: Colors.yellow.shade300,
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: buildText(

                    ///
                    ///     DateFormate() --> from the intl package library
                    ///       DateFormate().format(DateTime)
                    ///
                    text: '${listOfInfo[index].name} :: '
                        '${listOfInfo[index].height} :: '
                        '\n'

                        /// "yy-mm-dd" || "yy/mm/dd" || "yy/MMM/dd" || and more
                        /// there is ready constructors we can use after the DateFormat. ..
                        '\n${DateFormat("yyyy-MM-dd").format(listOfInfo[index].date!)}'),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),

        /// -------------------> context of the build method
        onPressed: () => showModalBottomSheetMethod(context),
        backgroundColor: Colors.black,
        foregroundColor: Colors.amber.shade200,
        elevation: 10,
      ),
    );
  }

  Text buildText({
    required String? text,
  }) {
    return Text(
      text!,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontFamily: 'Noto_Serif',
      ),
    );
  }
}
