import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80',
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 5.0),
                Text('Francisco Fuentes', style: TextStyle(fontSize: 22.0)),
                SizedBox(height: 5.0),
                Text('Estudiante', style: TextStyle(fontSize: 15.0)),
                SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.person, color: Colors.black),
          title: Text('Perfil'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.inbox, color: Colors.black),
          title: Text('Mensajería'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.assessment, color: Colors.black),
          title: Text('Dashboard'),
        ),
        ListTile(
          onTap: () {},
          leading: Icon(Icons.settings, color: Colors.black),
          title: Text('Configuración'),
        ),
      ],
    );
  }
}
