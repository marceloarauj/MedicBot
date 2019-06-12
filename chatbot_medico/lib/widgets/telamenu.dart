import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class telamenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Opções',
                style: TextStyle(color: Colors.black, fontSize: 25),
              ),
              decoration: BoxDecoration(color: Colors.grey[200]),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Perfil'),
            ),
            ListTile(
              leading: Icon(Icons.queue),
              title: Text('Tarefa'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensagens'),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Chatbot'),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Disciplinas'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('MENU PRINCIPAL'),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: Column(),
    );
  }
}
