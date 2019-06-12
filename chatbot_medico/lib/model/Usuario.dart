import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Usuario{
  
  String login;
  String senha;
  bool resposta;

  Usuario(String login, String password){
    this.login = login;
    this.senha = password;

    
  }

    Future loginUsuario() async {
    String url = "http://179.232.28.247:10200/user/login"; 

    Map user = {'login':'$login','senha':'$senha'};
    var send = json.encode(user);

    var response = await http.post(url,
      headers:{"Content-Type":"application/json"}  ,
      body: send
    );
    
    debugPrint("Resposta com body:" + response.body);
    
    if(response.body == "contact"){
      this.resposta = true;
      return true;
    }
    else
    {
      this.resposta = false;
      return false;
    }
    
  }
  
}