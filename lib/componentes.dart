import 'package:flutter/material.dart';

// Bibliotequinha de componentes úteis;

// Estilo do preço:
class Preco extends StatelessWidget {
  final String txt;

  const Preco({Key key, this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
          fontSize: 20, color: Color(0xFF00AF00), fontWeight: FontWeight.bold),
    );
  }
}

// Estilo do Titulo:
class Titulo extends StatelessWidget {
  final String txt;

  const Titulo({Key key, this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        txt,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
