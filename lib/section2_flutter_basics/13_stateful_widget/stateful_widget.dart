import 'package:flutter/material.dart';

class EStateFull extends StatefulWidget {
  const EStateFull({Key? key}) : super(key: key);

  @override
  // private class    function cre...()     return class
  // _EStateFullState createState() => _EStateFullState();
  State<StatefulWidget> createState() => _EStateFullState();
}

class _EStateFullState extends State<EStateFull> {

  var bgColor = Colors.teal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColor,
      ),
      body: Center(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            bgColor = Colors.pink;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
