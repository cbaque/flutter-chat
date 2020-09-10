import 'package:chat_app/models/usuario.dart';
import 'package:flutter/material.dart';

class UsuariosPage extends StatefulWidget {
  @override
  _UsuariosPageState createState() => _UsuariosPageState();
}

class _UsuariosPageState extends State<UsuariosPage> {
  final usuarios = [
    Usuario(
      uid: '1',
      nombre: 'Maria',
      email: 'maria@gmail.com',
      online: true,
    ),
    Usuario(
      uid: '2',
      nombre: 'Pablo',
      email: 'maria@gmail.com',
      online: true,
    ),
    Usuario(
      uid: '3',
      nombre: 'Angel',
      email: 'maria@gmail.com',
      online: false,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Mi nombre',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.exit_to_app,
            color: Colors.black54,
          ),
          onPressed: () {},
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.check_circle,
              color: Colors.blue[400],
            ),
            // child: Icon(
            //   Icons.check_circle,
            //   color: Colors.red,
            // ),
          )
        ],
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) => _usuarioListTile(usuarios[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: usuarios.length,
      ),
    );
  }

  ListTile _usuarioListTile(Usuario usuarios) {
    return ListTile(
      title: Text(usuarios.nombre),
      subtitle: Text(usuarios.email),
      leading: CircleAvatar(
        child: Text(usuarios.nombre.substring(0, 2)),
      ),
      trailing: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          color: usuarios.online ? Colors.green[300] : Colors.red,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
