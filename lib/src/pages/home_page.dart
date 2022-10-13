import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/services/menu_services.dart';
import 'package:flutter_widgets/utils/icono_string_util.dart';

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
          children: _listaItems(snapshot.data ?? [], context),
        );
      }),
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto'] ?? ''),
        leading: getIcon(element['icon'] ?? ''),
        trailing: Icon(Icons.keyboard_alt_sharp),
        onTap: () {
          //final route = MaterialPageRoute(builder: (context) {
          //  return AlertPage();
          //});
          //Navigator.push(context, route);
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      opciones.add(widgetTemp);
    });
    return opciones;
  }
}
