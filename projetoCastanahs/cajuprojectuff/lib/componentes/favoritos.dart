import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Favoritos extends StatelessWidget {
  final Icon icones;
  Function() clicar;
  Favoritos({required this.clicar, required this.icones});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(onPressed: clicar, child: icones),
    );
  }
}
