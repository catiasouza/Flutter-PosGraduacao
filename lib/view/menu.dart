
import 'package:flutter/material.dart';
import 'package:flutter_paises_graduacao_app/view/mensagem.dart';
import 'package:flutter_paises_graduacao_app/view/paises_screen.dart';
import 'ajuda.dart';

class Menu extends StatelessWidget with Mensagem {

  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child:  Drawer(
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.orangeAccent,
                height: 100.0,
                child: Text("menu", style: TextStyle(fontSize: 20.0,
                    color:  Colors.white, fontWeight:  FontWeight.w400)),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Pesquisar"),
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                          SimpleDialog(
                            title: Text("digite o nome do pais"),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: TextField(
                                  controller: search,
                                ),
                              ),
                               Row(
                                children: [
                                  TextButton(onPressed: () {
                                    Navigator.pop(context);
                                    showTMensagem("Operacao Cancelada", context);
                                  },
                                      child: Text("Cancelar")),

                                  TextButton(onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            PaisesScreen(pais: search.text)));
                                    showTMensagem("pesquisa realizada para o pais ${search.text}", context);
                                  },
                                      child: Text("Ok", style: TextStyle(color: Colors.orangeAccent),))
                                ],
                                 mainAxisAlignment: MainAxisAlignment.end,

                              )
                            ],
                          )
                  );
                },

              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text("Ajuda"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder:
                      (BuildContext) => Ajuda()));
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}
