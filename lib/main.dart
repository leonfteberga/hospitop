import 'package:flutter/material.dart';
import 'package:hospitop/InicioPage.dart';
import 'package:hospitop/LoginPage.dart';


import 'SobrePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/inicio': (context) => Inicio(),
        '/sobre' : (context) => Sobre(),

      },
    );
  }
}
