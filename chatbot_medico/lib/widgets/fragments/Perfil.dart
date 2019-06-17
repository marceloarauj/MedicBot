import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.people_outline,
                    size: 100,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          'NOME DO USUÁRIO',
                          style: TextStyle(fontSize: 25),
                        ),
                        width: 300,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('TIPO DE USUÁRIOO',
                            style: TextStyle(fontSize: 25)),
                        GestureDetector(
                          child: Icon(Icons.edit),
                          onTap: () {
                            Alerta(context);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  //Exemplo de Alerta
  void Alerta(var context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alerta De Teste'),
            content: Text('Novo Conteúdo de Alerta'),
            actions: <Widget>[
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
