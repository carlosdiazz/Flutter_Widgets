import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  HomePageTemp({super.key});

  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Componetes")),
      //body: ListView(children: _crearItems()),
      body: ListView(children: _crearItemsCorta()),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista.addAll([tempWidget, const Divider()]);
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item),
            subtitle: const Text("Subtituclo"),
            leading: const Icon(Icons.ac_unit),
            trailing: const Icon(Icons.arrow_back),
            onTap: () => print(item),
          ),
          const Divider()
        ],
      );
    }).toList();
  }
}
