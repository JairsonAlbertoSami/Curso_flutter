import 'package:flutter/material.dart';
import 'constantes.dart';

class BotaoInferior extends StatelessWidget {
  String? texto;
  Function()? aoPressionar;
  BotaoInferior({
    required this.texto,
    required this.aoPressionar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        // ignore: sort_child_properties_last
        child: Center(
            child: Text(
          texto!,
          style: BotaoGrande,
        )),
        color: kcorUltimaTecla,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: kAlturaContainer,
        padding: EdgeInsets.only(bottom: 20),
      ),
    );
  }
}

class BotaoArredondado extends StatelessWidget {
  final IconData? icones;
  final Function()? aoPressioanrR;
  BotaoArredondado({required this.icones, required this.aoPressioanrR});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6,
      constraints: BoxConstraints.tightFor(height: 56, width: 56),
      shape: CircleBorder(),
      fillColor: kcorDeBotaoFlutuante,
      onPressed: aoPressioanrR,
      child: Icon(icones),
    );
  }
}
