import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class itemDetalhes extends StatefulWidget {
  Function() clicar;
  String texto;
  itemDetalhes(this.clicar, this.texto);

  @override
  State<itemDetalhes> createState() => _itemDetalhesState();
}

class _itemDetalhesState extends State<itemDetalhes> {
  verMais() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
