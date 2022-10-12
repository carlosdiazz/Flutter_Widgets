import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class _MenuService {
  List<dynamic> opciones = [];

  _MenuService() {
    cargarData();
  }
//Aqui leo un json y lo transformo
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuService = _MenuService();
