import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TelaProdutors extends StatelessWidget {
  const TelaProdutors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Produtores"),
      ),
      body: ListView.builder(itemBuilder: ),
    );
  }
}
