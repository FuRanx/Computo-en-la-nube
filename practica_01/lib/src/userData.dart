import 'package:flutter/material.dart';
import 'package:practica_01/src/myAlertDialog.dart';

class DatosUsuarios extends StatefulWidget {
  @override
  _DatosUsuariosState createState() => _DatosUsuariosState();
}

class _DatosUsuariosState extends State<DatosUsuarios> {
  var _name = 'Hola';
  var _phone = 'Mundo';

  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica 01'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/image/image1.jpg'),
          SizedBox(height: 10.0),
          TextField(
            controller: nameCtrl,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Ingresa tu nombre',
            ),
          ),
          TextField(
            controller: phoneCtrl,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Ingresa tu número de teléfono',
            ),
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              foregroundColor: Colors.black,
            ),
            child: Text('enviar'),
            onPressed: () {
              _name = nameCtrl.text;
              _phone = phoneCtrl.text;
              setState(() {
                showAlertDialog(
                  context,
                  'El usuario: $_name, tiene el teléfono: $_phone',
                  'My App :)',
                  'OK',
                  ':(',
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
