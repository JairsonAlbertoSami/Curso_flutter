import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/componentes/telaCasComprador_item.dart';

class TelaCasComprador extends StatelessWidget {
  const TelaCasComprador({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Comprador"),
      ),
      body: telaCasCompradorItem(),
    );
  }
}
