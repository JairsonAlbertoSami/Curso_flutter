import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/modelos/produto.dart';

import '../componentes/ComprarProduto_item.dart';

class TelaComprarProduto extends StatelessWidget {
  TelaComprarProduto({super.key});

  Widget build(BuildContext context) {
    final produtor = ModalRoute.of(context)?.settings.arguments as Produtor;

    return Scaffold(
      appBar: AppBar(
        title: Text("Relazizar a compra"),
      ),
      body: Container(
        child: ComprarProItem(produtor),
      ),
    );
  }
}
