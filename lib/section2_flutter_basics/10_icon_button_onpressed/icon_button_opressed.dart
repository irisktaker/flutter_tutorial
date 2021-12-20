import 'package:flutter/material.dart';

class EIconButtons extends StatelessWidget {
  const EIconButtons({Key? key}) : super(key: key);

  void btnOnPressed(msg) => print("Button Clicked $msg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Buttons", style: TextStyle(fontSize: 40)),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: const Text("ElevatedButton"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
            ),
            const SizedBox(height: 10),
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
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                Icons.nineteen_mp_rounded,
                color: Colors.white,
              ),
              label: const Text("nineteen_mp_rounded"),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red.shade200),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                // padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(20, 15, 20, 15)),
                elevation: MaterialStateProperty.all(20),
              ),
            ),
            const SizedBox(height: 16),
            IconButton(
              onPressed: (){
                // print("Map Icon");
                btnOnPressed('Hello'); // or without () with () we call the function
                // btnOnPressed; // without () we pointed to the function
                // () => btnOnPressed('Hello');
              },
              // Icon is a widget , Icons class
              icon: const Icon(Icons.map),
            ),
            const SizedBox(height: 16),
            IconButton(
              onPressed: ()=> print("Map Icon"),
              // Icon is a widget , Icons class
              icon: const Icon(Icons.map),
            ),
          ],
        ),
      ),
    );
  }
}
