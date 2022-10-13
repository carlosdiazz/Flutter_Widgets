import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/pages/alert_page.dart';
import 'package:flutter_widgets/src/pages/avatar_page.dart';
import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/pages/not_found.dart';
import 'package:flutter_widgets/src/routes/routes.dart';
//import 'package:flutter_widgets/src/pages/home_page_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      //home: HomePageTemp());
      //home: HomePage());
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: ((settings) {
        return MaterialPageRoute(builder: (context) => NotFound());
      }),
    );
  }
}
