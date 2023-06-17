import 'package:flutter/material.dart';
import 'package:flutter_paises_graduacao_app/service/requisicao.dart';
import 'package:flutter_paises_graduacao_app/view/paises_dados.dart';
import 'menu.dart';

class PaisesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sigla dos Paises"),
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: () {})
        ],

      ),
      body: PaisesDados(),
      drawer:  Menu(),
    );
  }
}