// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class EButtonsSummary extends StatelessWidget {
  const EButtonsSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///
    /// in the MaterialApp constructor we add a general buttons style
    /// for all the app
    ///
    /// Play with design as you wants

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Buttons", style: TextStyle(fontSize: 40)),
            const SizedBox(height: 10),
            FlatButton(onPressed: () {}, child: const Text("FlatButton")),
            const SizedBox(height: 10),
            OutlineButton(onPressed: () {}, child: const Text("OutlineButton")),
            const SizedBox(height: 10),
            RaisedButton(onPressed: () {}, child: const Text("RaisedButton")),
            const SizedBox(height: 20),
            const Divider(height: 20,color: Colors.green,thickness: 2,endIndent: 20,indent: 20,),
            const SizedBox(height: 20),
            TextButton(onPressed: () {}, child: const Text("TextButton")),
            const SizedBox(height: 10),
            OutlinedButton(
                onPressed: () {}, child: const Text("OutlinedButton")),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(Colors.green),
              // ),
            ),
            const SizedBox(height: 20),
            const Divider(height: 20,color: Colors.green,thickness: 2,endIndent: 20,indent: 20,),
            const SizedBox(height: 20),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_reaction_outlined),
              label: const Text('Funny'),
              autofocus: true,
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_wallet_sharp),
              label: const Text("account_balance_wallet_sharp"),
            ),
            const SizedBox(height: 15),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.nineteen_mp_rounded,
                color: Colors.white,
              ),
              label: const Text("nineteen_mp_rounded"),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(Colors.red.shade200),
              //   foregroundColor: MaterialStateProperty.all(Colors.black),
              //   // padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
              //   padding: MaterialStateProperty.all(
              //       const EdgeInsets.fromLTRB(20, 15, 20, 15)),
              //   elevation: MaterialStateProperty.all(20),
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
