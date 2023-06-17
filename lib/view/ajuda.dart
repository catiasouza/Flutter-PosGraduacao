import 'package:flutter/material.dart';

@override
class Ajuda extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: Text("Ajuda"),

      ),
      body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("o objetivo é listar e pesquisar as siglas dos paises"),
          )

      ),
    );
  }
}