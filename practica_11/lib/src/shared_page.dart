import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPage extends StatefulWidget {
  @override
  _SharedPageState createState() => _SharedPageState();
}

class _SharedPageState extends State<SharedPage> {
  String _nombre = "";
  int _edad = 0;

  @override
  void initState() {
    super.initState();
    _grabarDatos();
  }

  _grabarDatos() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("nombre", "Francisco Fuentes");
    await prefs.setInt("edad", 23);
  }

  _leerDatos() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _nombre = prefs.getString("nombre") ?? "Sin nombre";
      _edad = prefs.getInt("edad") ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("practica 11"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Nombre: $_nombre",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Edad: $_edad años",
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _leerDatos,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
