import 'package:flutter/material.dart';
import 'package:teste_massa/cartoes.dart';
import 'constantes.dart';
import 'botaosInferiores.dart';

class TelaResultado extends StatelessWidget {
  TelaResultado(
      {required this.resultadoImc,
      required this.resultadoInterpretacao,
      required this.resultadoTexto});
  final String resultadoImc;
  final String resultadoTexto;
  final String resultadoInterpretacao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Resultado",
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "RESULTADOS",
                style: kestiloResultado,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CartaoPadarao(
                filhoCartao: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultadoTexto,
                      style: texStlieResultado,
                    ),
                    Text(resultadoImc, style: kresultadoNumeroIMC), //resultado
                    Text(
                      resultadoInterpretacao,
                      style: StyaleMensageIMC,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                cor: kcorAtivaCartaoPadrao),
          ),
          BotaoInferior(
            texto: "Recalcular",
            aoPressionar: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
