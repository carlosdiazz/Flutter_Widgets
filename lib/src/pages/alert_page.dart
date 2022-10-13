import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Mostrar alerta"),
          onPressed: (() => _mostrarAlert(context)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.abc_rounded),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(
    BuildContext context,
  ) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: Text("CAMBIA DE PARADIGMA"),
            content: Column(
              mainAxisSize: MainAxisSize
                  .min, //Aqui se va adapatar al contenido que tiene interno
              children: <Widget>[
                Text("Te quedaste siendo Duro Mio!!"),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Gay")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Ok"))
            ],
          );
        });
  }
}
