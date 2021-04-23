import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Hospitop Freitas',
                ),
                accountEmail: Text(
                  'hospitopfreitas@hotmail.com',
                ),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.vexels.com/media/users/3/140748/isolated/preview/5b078a59390bb4666df98b49f1cdedd0-avatar-de-perfil-masculino-by-vexels.png'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                subtitle: Text('Volte para o Incio'),
              ),
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text('Agendamentos'),
                subtitle: Text('Vá para seus agendamentos'),
              ),
              ListTile(
                leading: Icon(Icons.medical_services),
                title: Text('Médicos'),
                subtitle: Text('Lista de Médicos'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Pacientes'),
                subtitle: Text('Lista de Pacientes'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Sair'),
                subtitle: Text('Sair do Aplicativo'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Página Inicial'),
        ),
        body: Container(
          child: Text('Olá'),
        ));
  }
}
