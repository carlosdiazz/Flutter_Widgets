import 'package:flutter/material.dart';
//import 'package:flutter_widgets/src/pages/home_page.dart';
import 'package:flutter_widgets/src/pages/not_found.dart';
import 'package:flutter_widgets/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
//import 'package:flutter_widgets/src/pages/home_page_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],
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
