import 'dart:math';

import 'package:cajuprojectuff/componentes/item_Produtor.dart';
import 'package:cajuprojectuff/componentes/listaProdutoresCriados.dart';
import 'package:flutter/material.dart';

class Produtortela extends StatelessWidget {
  Produtortela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Produtores"),
      ),
      body: ListView.builder(
        itemCount: listaProdutores.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          var produtor = listaProdutores[index];
          return Container(
            child: itemProduto(produtor),
          );
        },
      ),
    );
  }
}
