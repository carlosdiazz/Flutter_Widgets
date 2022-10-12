import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/services/menu_services.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuService.cargarData().then((value) => print(value));

    return FutureBuilder(
      future: menuService.cargarData(),
      initialData: const [],
      builder: ((context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);

        return ListView(
          children: _listaItems(snapshot.data ?? []),
        );
      }),
    );
  }

  List<Widget> _listaItems(List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto'] ?? ''),
        leading: Icon(Icons.zoom_out_map_sharp),
        trailing: Icon(Icons.keyboard_alt_sharp),
        onTap: () {},
      );
      opciones.add(widgetTemp);
    });
    return opciones;
  }
}
