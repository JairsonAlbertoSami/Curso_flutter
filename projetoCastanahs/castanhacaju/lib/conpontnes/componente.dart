import 'package:castanhacaju/ListaProdutor/produtor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class avaliacao extends StatelessWidget {
  final String? texto;
  Function? funcao;
  final Icon? icons;
  avaliacao({
    this.icons,
    this.texto,
    this.funcao,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [Text("$texto"), Icon(Icons.star)],
    );
  }
}
