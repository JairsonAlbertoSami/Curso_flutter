import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Tela_detalhes extends StatelessWidget {
  const Tela_detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Detalhes"),
        ),
        body: Container(
            child: Center(
          child: Text("Detalhes"),
        )),
      ),
    );
  }
}
