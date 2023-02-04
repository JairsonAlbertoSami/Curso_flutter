import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/componentes/verMais_item.dart';
import 'package:icaju/modelos/produto.dart';

class TelaVerMais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final produtor = ModalRoute.of(context)?.settings.arguments as Produtor;
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhes do ${produtor.nome}"),
      ),
      body: Container(
        child: VerMaisItem(produtor: produtor),
      ),
    );
  }
}
