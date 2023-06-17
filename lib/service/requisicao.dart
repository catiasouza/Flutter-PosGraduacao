

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Requisicao {
  static Future<List> requisicaoPaises() async {

    Map paises = Map();
    String apiUrl = "https://api.nobelprize.org/v1/country.json";

    http.Response response = await http.get(apiUrl as Uri);
    debugPrint("resultado:  ${response.body}");

    if (response.statusCode == 200) {
      paises = json.decode(response.body);

      return paises.values.first;
    }else {
      throw Exception("Falhou");
    }
  }
}