import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rotas/cliente/cliente.dart';
import 'package:rotas/cliente/dumme_dados_clientes.dart';

import '../componentes/opreacoesConta.dart';

class PaginaConteudos extends StatelessWidget {
  const PaginaConteudos({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Cliente> dadosDliente = [
      Cliente(
          email: "jairtson@idufffbr",
          foto: "url",
          apelido: "Sami",
          credito: 25,
          endereco: "São Domigos",
          id: "1",
          limite: 50,
          nome: "Ussumane"),
      Cliente(
          email: "jairtson@idufffbr",
          foto: "url",
          apelido: "Djau",
          credito: 25,
          endereco: "São Domigos",
          id: "5",
          limite: 50,
          nome: "Amadu"),
      Cliente(
          email: "jairtson@idufffbr",
          foto: "url",
          apelido: "Dau",
          credito: 25,
          endereco: "São Domigos",
          id: "3",
          limite: 50,
          nome: "Amadu"),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).pop();
            //   },
            //   child: Icon(Icons.delete, color: Colors.red),
            // )
          ],
          title: const Text("Minha conta"),
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              child: Container(
                color: Colors.amber,
                child: Row(
                  children: [
                    Text("transferencia"),
                    Text("pix"),
                    Text("credito"),
                    Text("detalhes"),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                OprecoesConta(
                  apelido: dadosDliente[0].apelido,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
