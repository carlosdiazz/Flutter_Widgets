import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({super.key});

  @override
  State<ListaPage> createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  ScrollController _scrollController = ScrollController();
  List<int> _listaNumeros = [];
  int _ultimoItem = 0;
  bool _isLoading = false;

  //?Aqui digo que cuando inciie ejecute el emtodoo
  @override
  void initState() {
    super.initState();
    _agregar5();
    _scrollController.addListener(() {
      //print('Se movio el scroll');
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent + 250) {
        //_agregar10();
        print('Llelgue al final');
        fetchData();
      }
    });
  }

  //? Aqui digo que cuando la pagina se destuya dejo de escuchar al scrollController
  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Stack(children: <Widget>[_crearLista(), _crearLoading()]),
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumeros.length,
          itemBuilder: ((context, index) {
            print('ENtroo');
            return FadeInImage(
                placeholder: AssetImage('assets/loading.gif'),
                image: NetworkImage('https://picsum.photos/500/300'));
          })),
    );
  }

  Future<Null> obtenerPagina() async {
    final duration = Duration(seconds: 2);
    Timer(duration, () {
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar5();
    });
    return Future.delayed(duration);
  }

  void _agregar5() {
    for (int i = 0; i < 5; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
      setState(() {});
    }
  }

  Future fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = Duration(seconds: 2);
    Timer(duration, respuestasHTTp);
  }

  void respuestasHTTp() {
    _isLoading = false;

    //Aqui hago una pequena animacion de un deslizado al cargar los elementos
    //_scrollController.animateTo(_scrollController.position.pixels + 100,
    //    curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));

    _agregar5();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      );
    } else {
      return Container();
    }
  }
}
