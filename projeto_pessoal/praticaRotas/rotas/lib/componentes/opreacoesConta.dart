import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../cliente/cliente.dart';
import '../cliente/dumme_dados_clientes.dart';
import '../cliente/dumme_dados_clientes.dart';

class OprecoesConta extends StatelessWidget {
  final String? nome;
  final String? email;
  final String? image;
  final String? apelido;
  OprecoesConta({this.nome, this.email, this.image, this.apelido});
  @override
  Widget build(BuildContext context) {
    final cliente = Provider.of<Cliente>(context);

    return Container(
        child: Row(
      children: [
        CircleAvatar(
          child: Image.network("${image}"),
          radius: 40,
          backgroundColor: Colors.amber,
        ),
        Text(apelido!),
        Text(email!),
        Text(apelido!),
        Text(nome!),
      ],
    ));
  }
}
