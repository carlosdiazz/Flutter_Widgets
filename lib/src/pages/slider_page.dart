import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorInicial = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Page"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[_crearSlider(), _crearImagen()],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      //divisions: 20,
      label: 'Tamano de la imagen',
      onChanged: (value) {
        setState(() {
          _valorInicial = value;
        });
      },
      value: _valorInicial,
      min: 0.0,
      max: 400.0,
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://mtb.shimano.com/_assets/images/homepage/homepage-image-slide1-mobile.jpg'),
      width: _valorInicial,
      fit: BoxFit.contain,
    );
  }
}
