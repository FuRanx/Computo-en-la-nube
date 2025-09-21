import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/imc_data.dart';

class ResultPage extends StatelessWidget {
  final ImcData datos;

  ResultPage({required this.datos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado IMC'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hola ${datos.nombre}',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.asset(datos.imagen, height: 200, width: 200),
            SizedBox(height: 30),
            Text(
              'Tu IMC es: ${datos.imc.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(height: 10),
            Text(
              'Clasificación: ${datos.clasificacion}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Volver a Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
