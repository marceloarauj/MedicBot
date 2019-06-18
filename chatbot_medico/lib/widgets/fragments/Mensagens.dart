import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
    List<Widget> conversa = gerarConversa();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(usuario),
        ),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 6, right: 4, bottom: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //conversa[0],
              //conversa[1],
              //conversa[3],
              //conversa[4],
              //conversa[4],
              Container(
                  height: 500,
                  child: ListView.builder(
                        
                      itemBuilder: (context, pos) {
                        return Card(
                            elevation: 0,
                            color: Colors.white,
                            child: conversa[pos]);
                      },
                      itemCount: conversa.length)),
              Container(
                  child: Row(
                children: <Widget>[
                  Flexible(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "mensagem",
                          hintStyle:
                              TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2)),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(80.0))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: FloatingActionButton(
                      child: Icon(Icons.send),
                    ),
                  )
                ],
              )),
            ],
          ),
        ));
  }

  // balão de recebe
  Widget recebeMesg() {
    return Container(
      constraints: BoxConstraints(maxWidth: 270),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Color.fromRGBO(120, 120, 120, 0.5),
          borderRadius: BorderRadius.circular(30.0)),
      child: Text(
          "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"),
    );
  }

  // balão de envio mensagem
  Widget enviaMsg() {
    return Container(
      constraints: BoxConstraints(maxWidth: 270),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 255, 0.3),
          borderRadius: BorderRadius.circular(30.0)),
      child: Text("BBBBBBBBBBBBBBBBBBBBBBBBBBB"),
    );
  }

  List<Widget> gerarConversa() {
    List<Widget> exp = List<Widget>();

    for (int i = 0; i < 30; i++) {
      exp.add(Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            child: enviaMsg(),
          )
        ],
      ));
      exp.add(Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: recebeMesg(),
          )
        ],
      ));
    }
    return exp;
  }
}
