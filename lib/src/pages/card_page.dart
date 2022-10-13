import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        title: Text('Cards'),
      )),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text("Soy el titulo de Aqui"),
            subtitle: Text(
                "holaaaaa hofhoiwe ffouhwlhnw efiuowehoufew iolwhfliohwf oihfiohwoiep lihwflihliwef lkfhwiohoifwe oilehfoihwefo ihfweoinfwe ilowfhoiwhe ijuohgoewu eqwiohfoewg ewlih4owih"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text("Cancelar")),
              TextButton(onPressed: () {}, child: Text("Ok"))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior:
          Clip.antiAlias, // nada de lo qeu este en al tarjerta se salga
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)), //Aqui agrego border
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                'https://i.pinimg.com/originals/70/7d/2c/707d2c00173c3f98e2af2780304680b0.jpg'),
            fadeInDuration: Duration(milliseconds: 100),
            height: 300.0,
            fit: BoxFit.cover,
          ),

          //Image(
          //    image: NetworkImage(
          //        'https://i.pinimg.com/originals/70/7d/2c/707d2c00173c3f98e2af2780304680b0.jpg')),
          Container(padding: EdgeInsets.all(10), child: Text('Hola opue'))
        ],
      ),
    );
  }
}
