import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final String imageUrl =
      "https://cdn-icons-png.flaticon.com/512/188/188918.png";

  // Lista con los tipos de Pokémon
  final List<String> _clasesPokemon = [
    "Normal",
    "Fighting",
    "Flying",
    "Poison",
    "Ground",
    "Rock",
    "Bug",
    "Ghost",
    "Steel",
    "Fire",
    "Water",
    "Grass",
    "Electric",
    "Psychic",
    "Ice",
    "Dragon",
    "Dark",
    "Fairy",
    "Unknown",
    "Shadow",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de Pokémon"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView.builder(
        itemCount: _clasesPokemon.length,
        itemBuilder: (context, index) {
          final tipo = _clasesPokemon[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text(tipo),
            trailing: Icon(Icons.keyboard_arrow_right),
          );
        },
      ),
    );
  }
}
