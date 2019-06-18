import 'package:chatbot_medico/widgets/telamenu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/Usuario.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  TextEditingController login = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema Escolar'),
        centerTitle: true,
      ),
      body: Center(
          child: (SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage('assets/tiradentes.png'),
              width: 140,
              height: 140,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 100),
            ),
            Container(
                width: 250,
                child: TextField(
                  textAlign: TextAlign.center,
                  autocorrect: true,
                  controller: login,
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: "login",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 7),
            ),
            Container(
                width: 250,
                child: TextField(
                  textAlign: TextAlign.center,
                  obscureText: true,
                  autocorrect: true,
                  controller: password,
                  decoration: InputDecoration(
                    counterText: "",
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                  ),
                )),
               
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: SizedBox(
                width: 120,
                child: RaisedButton(
                  onPressed: () async {
                    Usuario user = new Usuario(login.text,password.text);
                      //await user.loginUsuario();
                      
                      //if(user.resposta == false){
                        Navigator.push(context,
                          CupertinoPageRoute(builder: (context) => telamenu()));  
                      //}
                  },
                  child: Text('OK'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
