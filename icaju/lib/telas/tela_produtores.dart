import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/modelos/produto.dart';
import 'package:icaju/componentes/produtores_item.dart';

import '../dados/listaProdutores.dart';

class telaProdutores extends StatelessWidget {
  addicionarProduto(Produtor produto) {
    ListaProdutores.add(produto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("iCaju"),
      ),
      body: ListView.builder(
        itemCount: ListaProdutores.length,
        itemBuilder: (context, index) {
          var produtor = ListaProdutores[index];
          return Container(
            child: produtorItem(produtor),
          );
        },
      ),
    );
  }
}
