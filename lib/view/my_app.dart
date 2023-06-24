import 'package:flutter/material.dart';

import 'paises_screen.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sigla dos Paises',
      home: PaisesScreen(),
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,

      ),
    );
  }
}