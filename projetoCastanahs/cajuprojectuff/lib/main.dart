import 'package:cajuprojectuff/rotas/rotas.dart';
import 'package:cajuprojectuff/telas/detalhes.dart';
import 'package:flutter/material.dart';
import 'telas/produtor_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Produtortela(),
      routes: {Kdetalhes: ((context) => Tela_detalhes())},
    );
  }
}
