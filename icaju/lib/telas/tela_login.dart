import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/componentes/logim_item.dart';
import 'package:icaju/componentes/produtores_item.dart';
import 'package:icaju/main.dart';
import 'package:icaju/modelos/produto.dart';
import 'package:icaju/rotasKconstante/Kconstantes.dart';
import 'package:icaju/telas/tela_produtores.dart';

class TelaLogin extends StatelessWidget {
  TelaLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Castanhas"),
        ),
        body: Container(
          child: LogimnItem(),
        ));
  }
}
