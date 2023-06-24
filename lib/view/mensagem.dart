import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

mixin Mensagem {
  void showTMensagem(String msg, context,  {int? duration, int? gravity}) {
    Toast.show(msg, textStyle: context, duration: duration ?? Toast.lengthLong, gravity: gravity ?? Toast.bottom,
        backgroundColor: Colors.orangeAccent, webTexColor: Colors.black, backgroundRadius: 3.0);
  }
}