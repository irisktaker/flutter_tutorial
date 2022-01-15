// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class EButtons extends StatelessWidget {
  const EButtons({Key? key}) : super(key: key);

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
            FlatButton(onPressed: (){}, child: const Text("FlatButton")),
            const SizedBox(height: 10),
            OutlineButton(onPressed: (){},child: const Text("OutlineButton")),
            const SizedBox(height: 10),
            RaisedButton(onPressed: (){}, child: const Text("RaisedButton")),
            const SizedBox(height: 10),
            TextButton(onPressed: (){}, child: const Text("TextButton")),
            const SizedBox(height: 10),
            OutlinedButton(onPressed: (){},child: const Text("OutlinedButton")),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: (){}, child: const Text("ElevatedButton")),
            const SizedBox(height: 10),
            TextButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.add_reaction_outlined),
              label: const Text('Funny'),
              autofocus: true,
            ),
            const SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.account_balance_wallet_sharp),
              label: const Text("account_balance_wallet_sharp"),
            ),
            const SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: (){},
              icon: const Icon(Icons.nineteen_mp_rounded),
              label: const Text("nineteen_mp_rounded"),
            ),
          ],
        ),
      ),
    );
  }
}
