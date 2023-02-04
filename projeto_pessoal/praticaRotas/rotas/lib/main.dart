import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rotas/approtas/app_rotas.dart';
import 'package:rotas/cliente/cliente.dart';
import 'package:rotas/paginas/ppaginaConteudo.dart';
import 'package:rotas/paginas/telaLoging.dart';

void main(List<String> args) {
  runApp(MyBanco());
}

class MyBanco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => new Cliente(),
        )
      ],
      child: MaterialApp(
        title: "Mwu BAnco",
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.purple,
            secondary: Colors.deepOrange,
          ),
        ),
        home: TelaLoging(),
        routes: {
          AppRotas.kEntradaIdEmail: (context) => PaginaConteudos(),
        },
      ),
    );
  }
}
