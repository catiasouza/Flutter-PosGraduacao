import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_paises_graduacao_app/service/requisicao.dart';

class PaisesDados extends StatefulWidget {

  final String pais;
  PaisesDados({this.pais = ""});

  @override
  _PaisesDadosState createState() => _PaisesDadosState();
}

class _PaisesDadosState extends State<PaisesDados> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FutureBuilder(
              future: Requisicao.requisicaoPaises(),
              builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
                if(snapshot.hasData){
                  List? paises = snapshot.data;
                  return _listaPaises(_filtrarPaises(widget.pais, paises!, context));
                } else {
                  return Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Text(
                          "Carregando...", style: TextStyle(fontSize: 16.0)),
                    ),
                  );
                }
              })
        ],
      ),
    );
  }

  Widget _listaPaises(List? paises) {
    return paises != null ?
    Flexible(
        child: ListView.builder(
            itemCount: paises.length,
            itemBuilder: (context, index) {
              return Container(
                child: Card(
                  child: ExpansionTile(
                    title: Text("${paises[index]["name"]}", style: TextStyle(color: Colors.orangeAccent, fontWeight:
                    FontWeight.bold, fontSize: 20.0),),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text("${paises[index]["code"] ?? "--"}",
                            style: TextStyle(color: Colors.grey,
                                fontWeight:
                          FontWeight.bold, fontSize: 16.0),),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
        )

    )

        : Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Text("Carregando...", style: TextStyle(fontSize: 16.0)),
      ),
    );
  }

  List _filtrarPaises(String pais, List paises, BuildContext context) {
    List filtro = List<Int>.empty();

    String paisFormatado = "";
    if (pais != ""){
      String primeiraLetra = pais.substring(0,1);
      paisFormatado = pais.replaceFirst(primeiraLetra, primeiraLetra.toUpperCase());
    }

    paises.forEach((p) {
      if(p["name"] == paisFormatado) {
        filtro.add(p);
      }
    });
    return filtro.isEmpty ? paises : filtro;
  }
}
//executar o aplicativo e realizar