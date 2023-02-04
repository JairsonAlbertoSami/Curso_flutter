import 'package:flutter/material.dart';
import 'cartoes.dart';
import 'telaPrincipal.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'conteudoIcones.dart';
import 'constantes.dart';

void main(List<String> args) {
  runApp(MasaCorporal());
}

class MasaCorporal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: kcorPrimartiTema,
        scaffoldBackgroundColor: kcorscaffoldBackgroundColor,
      ),
      home: TelePadarao(),
    );
  }
}
