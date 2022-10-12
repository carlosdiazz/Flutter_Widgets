import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Componetes")),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("ListTitle"),
          ),
          Divider(),
          ListTile(
            title: Text("ListTitle"),
          ),
          Divider(),
          ListTile(
            title: Text("ListTitle"),
          )
        ],
      ),
    );
  }
}
