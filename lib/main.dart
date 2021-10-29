import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Expanded'),
          ),
          body: Row(
            children: const <Widget>[
              Cuadrado(color: Colors.pink),
              Expanded(
                flex: 3,
                child: Cuadrado(color: Colors.green),
              ),
              Expanded(
                flex: 2,
                child: Cuadrado(color: Colors.green),
              ),
              Cuadrado(color: Colors.pink),
            ],
          )),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;

  const Cuadrado({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(color: color),
    );
  }
}
