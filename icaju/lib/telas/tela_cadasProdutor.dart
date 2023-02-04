import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/componentes/CadastroProdutorItem.dart';
import 'package:icaju/modelos/produto.dart';

class TelaCadastroProdutor extends StatelessWidget {
  TelaCadastroProdutor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar Produtor"),
      ),
      body: Container(
        child: CadastroProdutorItem(),
      ),
    );
  }
}
