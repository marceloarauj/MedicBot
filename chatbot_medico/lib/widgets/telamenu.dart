import 'package:chatbot_medico/widgets/fragments/Mensagens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'fragments/Home.dart';
import 'fragments/Perfil.dart';

class telamenu extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tela Home',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TelaWidget(),
    );
  }

}

class TelaWidget extends StatefulWidget{
  
  @override
  _TelaPrincipal createState() => _TelaPrincipal();
}

class _TelaPrincipal extends State<TelaWidget>{

    int indice = 0;
    
   getWidget(int i) {

    switch (i) {
      case 0:
        return  Home();
      case 1:
        return Perfil();
    }
  }

  @override
  Widget build(BuildContext context) {
    
    
      _onSelectItem(int index) {
        setState(() => indice = index);
        Navigator.of(context).pop(); // close the drawer
      }

      return Scaffold(

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Opções',
                style: TextStyle(color: Colors.black, fontSize: 25,fontFamily: "Syndor ITC Book"),
              ),
              decoration: BoxDecoration(color: Colors.grey[400]),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Início'),
              onTap: () => _onSelectItem(0),
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text('Perfil'),
              onTap: () => _onSelectItem(1)
            ),
            ListTile(
              leading: Icon(Icons.queue),
              title: Text('Tarefa'),
              onTap: (){Navigator.push(context,CupertinoPageRoute(builder:(context)=> Mensagens()));}
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensagens'),
              onTap: (){}
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text('Chatbot'),
              onTap: (){}
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Disciplinas'),
              onTap: (){}
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Sair'),
              onTap: (){}
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('MENU PRINCIPAL'),
        centerTitle: true,
        //automaticallyImplyLeading: false,
      ),
      body: getWidget(indice)
    );
  }

 
}
