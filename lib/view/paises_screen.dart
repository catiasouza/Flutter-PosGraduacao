import 'package:flutter/material.dart';
import 'package:flutter_paises_graduacao_app/service/requisicao.dart';
import 'package:flutter_paises_graduacao_app/view/paises_dados.dart';
import 'package:flutter_paises_graduacao_app/view/menu.dart';

class PaisesScreen extends StatelessWidget {

  final String pais;

  PaisesScreen({this.pais = ""});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sigla dos Paises"),
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => PaisesScreen(pais: "")));
            debugPrint("resultado:  ${Requisicao.requisicaoPaises()}");
          })
        ],

      ),
      body: PaisesDados(pais: pais),
      drawer:  Menu(),
    );
  }
}