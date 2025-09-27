import 'package:flutter/material.dart';
import 'package:mini_proyecto_01/src/result_page.dart';
import 'package:mini_proyecto_01/src/imc_data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nombreCtrl = TextEditingController();
  double pesoValor = 60.0;
  double estaturaValor = 1.60;

  String obtenerClasificacion(double imc) {
    if (imc < 18.5) return 'Peso Bajo';
    if (imc >= 18.5 && imc < 25) return 'Normal';
    if (imc >= 25 && imc < 30) return 'Sobrepeso';
    if (imc >= 30 && imc < 35) return 'Obesidad Grado I';
    if (imc >= 35 && imc < 40) return 'Obesidad Grado II';
    return 'Obesidad Grado III';
  }

  String obtenerImagen(double imc) {
    if (imc < 18.5) return 'assets/images/bajo_peso.jpg';
    if (imc >= 18.5 && imc < 25) return 'assets/images/normal.jpg';
    if (imc >= 25 && imc < 30) return 'assets/images/sobrepeso.jpg';
    if (imc >= 30 && imc < 35) return 'assets/images/obesidad1.jpg';
    if (imc >= 35 && imc < 40) return 'assets/images/obesidad2.jpg';
    return 'assets/images/obesidad3.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: nombreCtrl,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Ingresa tu nombre',
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Peso: ${pesoValor.toStringAsFixed(1)} kg',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: pesoValor,
              min: 20,
              max: 200,
              divisions: 180,
              label: pesoValor.toStringAsFixed(1),
              onChanged: (value) {
                setState(() {
                  pesoValor = value;
                });
              },
            ),
            SizedBox(height: 30),
            Text(
              'Estatura: ${estaturaValor.toStringAsFixed(2)} m',
              style: TextStyle(fontSize: 18),
            ),
            Slider(
              value: estaturaValor,
              min: 0.50,
              max: 2.50,
              divisions: 200,
              label: estaturaValor.toStringAsFixed(2),
              onChanged: (value) {
                setState(() {
                  estaturaValor = value;
                });
              },
            ),
            SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: Text('Calcular IMC', style: TextStyle(fontSize: 18)),
              onPressed: () {
                double imc = pesoValor / (estaturaValor * estaturaValor);
                String clasificacion = obtenerClasificacion(imc);
                String imagen = obtenerImagen(imc);

                ImcData datos = ImcData(
                  nombre: nombreCtrl.text,
                  peso: pesoValor,
                  estatura: estaturaValor,
                  imc: imc,
                  clasificacion: clasificacion,
                  imagen: imagen,
                );

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(datos: datos),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
