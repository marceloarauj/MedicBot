import 'package:flutter/material.dart';

class Mensagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: TelaMensagens(),
    );
  }
}

class TelaMensagens extends StatefulWidget {
  _TelaDeMensagens createState() => _TelaDeMensagens();
}

class _TelaDeMensagens extends State<TelaMensagens> {
  String usuario = "Novo Usuário";

  @override
  Widget build(BuildContext context) {
    List<String> androidVenNames = new List<String>();
    for (int i = 0; i < 30; i++) {
      androidVenNames.add("VALOR Nº $i");
    }
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(usuario),
        ),
        body: Container(
          padding: EdgeInsets.only(left: 6,right: 4,bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //envio de mensagem
              Container(
                  child: Row(children: <Widget>[
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "mensagem",
                      hintStyle: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(80.0))),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 5),child:FloatingActionButton(child: Icon(Icons.send),) ,)
              ],)),
            ],
          ),
        ));
  }
}
/*
 ListView.builder(
              itemBuilder: (context, pos) {
                return Card(
                    child: Text(androidVenNames[pos],
                        style: TextStyle(fontSize: 22)));
              },
              itemCount: androidVenNames.length)
  */
