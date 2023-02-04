import 'package:flutter/material.dart';

import 'constantes.dart';

class conteudoIcone extends StatelessWidget {
  conteudoIcone({super.key, this.icones, this.descricao});
  String? descricao;
  IconData? icones;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icones, size: 60),
        SizedBox(height: 15.0),
        Text(descricao.toString(), style: kDescricaoFontstyle)
      ],
    );
  }
}
