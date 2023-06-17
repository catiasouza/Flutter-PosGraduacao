

import 'package:flutter/material.dart';

import 'ajuda.dart';

class Menu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child:  Drawer(
          child: ListView(
            children: [
              Container(
                alignment: Alignment.center,
                color: Colors.blue,
                height: 100.0,
                child: Text("menu", style: TextStyle(fontSize: 20.0,
                    color:  Colors.white, fontWeight:  FontWeight.w400),),
              ),
              ListTile(
                leading: Icon(Icons.search),
                title: Text("Pesquisar"),
                onTap: () => {},

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
