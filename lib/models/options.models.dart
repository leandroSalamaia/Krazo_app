import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Options {
  Options(
      {required this.id,
      required this.nome,
      required this.icon,
      required this.callback});

  int id;
  String nome;
  IconData icon;
  AsyncCallback callback;
}
