import 'package:flutter/material.dart';

class ListaPage extends StatelessWidget {
  final String imageUrl =
      "https://cdn-icons-png.flaticon.com/512/188/188918.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tipos de Pokémon"),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Normal"),
            subtitle: Text("Tipo básico de Pokémon"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Fighting"),
            subtitle: Text("Pokémon de lucha"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Flying"),
            subtitle: Text("Pokémon voladores"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Poison"),
            subtitle: Text("Pokémon venenosos"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Ground"),
            subtitle: Text("Pokémon de tierra"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Rock"),
            subtitle: Text("Pokémon de roca"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Bug"),
            subtitle: Text("Pokémon insecto"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Ghost"),
            subtitle: Text("Pokémon fantasma"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Steel"),
            subtitle: Text("Pokémon de acero"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Fire"),
            subtitle: Text("Pokémon de fuego"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Water"),
            subtitle: Text("Pokémon de agua"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Grass"),
            subtitle: Text("Pokémon de planta"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Electric"),
            subtitle: Text("Pokémon eléctricos"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Psychic"),
            subtitle: Text("Pokémon psíquicos"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Ice"),
            subtitle: Text("Pokémon de hielo"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Dragon"),
            subtitle: Text("Pokémon dragón"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Dark"),
            subtitle: Text("Pokémon siniestros"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Fairy"),
            subtitle: Text("Pokémon hada"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Unknown"),
            subtitle: Text("Pokémon desconocidos"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(imageUrl),
            ),
            title: Text("Shadow"),
            subtitle: Text("Pokémon de sombra"),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
