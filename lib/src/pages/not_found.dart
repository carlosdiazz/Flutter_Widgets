import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ruta no encontrada"),
      ),
      body: Center(
          child: Text(
        'Ruta no encnontrada... Samuel se queo siendo duro!!!',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
