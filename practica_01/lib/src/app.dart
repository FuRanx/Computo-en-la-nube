import 'package:flutter/material.dart';
import 'package:practica_01/src/userData.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica 01',
      home: Center(
        child: DatosUsuarios(),
      ),
    );
  }
}