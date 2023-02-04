import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:rotas/approtas/app_rotas.dart';
import 'package:rotas/cliente/cliente.dart';
import 'package:rotas/paginas/ppaginaConteudo.dart';

class EntradaIdEmail extends StatelessWidget {
  String texto;
  Icon? icon;
  EntradaIdEmail({required this.texto, this.icon});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(
        vertical: 3,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.amber),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: TextField(
        cursorRadius: const Radius.circular(10),
        onChanged: (_) {},
        decoration: InputDecoration(
          icon: icon,
          label: Text(texto),
        ),
      ),
    ));
  }
}
