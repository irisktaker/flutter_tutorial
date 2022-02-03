import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';

class Ex_Expandable extends StatelessWidget {
  const Ex_Expandable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'Expandable List'),
      body: ListView(
        children: [
          ExpansionTile(
            leading: Icon(Icons.perm_identity),
            backgroundColor: Colors.green[50],
            collapsedBackgroundColor: Colors.green[200],
            title: Text("Account"),
            subtitle: Text("Account info"),
            children: [
              ListTile(
                // leading: ,

                title: Text("Sign up"),
                onTap: () {},
              ),
              ListTile(
                title: Text("Login"),
                onTap: () {},
              ),
            ],
          ),
          ExpansionTile(
            leading: Icon(Icons.info),
            title: Text("Contact us:"),
            children: [
              Card(
                color: Colors.red[50],
                child: ListTile(
                  title: Text("Phone number"),
                  subtitle: Text("00962795900291"),
                ),
              ),
              Card(
                color: Colors.orange[50],
                child: ListTile(
                  title: Text("Email address"),
                  subtitle: Text("inaser.94@gmail.com"),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
