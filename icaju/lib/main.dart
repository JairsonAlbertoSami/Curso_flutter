import 'package:flutter/material.dart';
import 'package:icaju/componentes/produtores_item.dart';
import 'package:icaju/componentes/verMais_item.dart';
import 'package:icaju/rotasKconstante/Kconstantes.dart';
import 'package:icaju/telas/tela_cadaComprador.dart';
import 'package:icaju/telas/tela_cadasProdutor.dart';
import 'package:icaju/telas/tela_comprarProduto.dart';
import 'package:icaju/telas/tela_login.dart';
import 'package:icaju/telas/tela_verMais.dart';

import 'telas/tela_produtores.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.amber,
          selectedRowColor: Color.fromARGB(217, 217, 217, 217)),
      routes: {
        KRotas.KTelaCasComprador: (context) => TelaCasComprador(),
        KRotas.KTelaCadastroProdutor: (context) => TelaCadastroProdutor(),
        KRotas.kHOME: (context) => TelaLogin(),
        KRotas.kTelaProdutores: (context) => telaProdutores(),
        KRotas.KteleVerMais: (context) => TelaVerMais(),
        KRotas.kTelaComprarProduto: (context) => TelaComprarProduto()
      },
    );
  }
}
