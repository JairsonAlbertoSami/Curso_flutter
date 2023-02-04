import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cartoes.dart';
import 'conteudoIcones.dart';
import 'constantes.dart';
import 'TelaResultado.dart';
import 'Calculadora.dart';
import 'botaosInferiores.dart';

enum Sexos { masculino, femenino }

class TelePadarao extends StatefulWidget {
  @override
  State<TelePadarao> createState() => _TelePadaraoState();
}

class _TelePadaraoState extends State<TelePadarao> {
  Sexos? sexoSelecionado;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculadora"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: CartaoPadarao(
                  aoPressionar: () {
                    sexoSelecionado = Sexos.masculino;
                  },
                  cor: sexoSelecionado == Sexos.masculino
                      ? kcorAtivaCartaoPadrao
                      : kcorInativaCartaoParao,
                  filhoCartao: conteudoIcone(
                    icones: FontAwesomeIcons.mars,
                    descricao: "Masculino",
                  ),
                )),
                Expanded(
                  child: CartaoPadarao(
                    aoPressionar: () {
                      sexoSelecionado = Sexos.femenino;
                    },
                    cor: sexoSelecionado == Sexos.femenino
                        ? kcorAtivaCartaoPadrao
                        : kcorInativaCartaoParao,
                    filhoCartao: conteudoIcone(
                      descricao: "Femenino",
                      icones: FontAwesomeIcons.venus,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: CartaoPadarao(
              cor: kcorAtivaCartaoPadrao,
              filhoCartao: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    "Altura",
                    style: kDescricaoFontstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline
                        .alphabetic, // precisa textBaseline para funcionar
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        alturaPessoa.toString(),
                        style: kestiloDeNumero,
                      ),
                      // ignore: prefer_const_constructors
                      Text(
                        "cm",
                        style: kDescricaoFontstyle,
                      ),
                    ],
                  ),
                  Slider(
                    inactiveColor: kcorscaffoldBackgroundColor,
                    activeColor: kcorUltimaTecla,
                    value: alturaPessoa.toDouble(),
                    max: 300,
                    min: 100,
                    onChanged: (double NovoValor) {
                      print(NovoValor);
                      setState(
                        () {
                          alturaPessoa = NovoValor.toInt(); //Amanham
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: CartaoPadarao(
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ignore: prefer_const_constructors
                        Text(
                          "PESO",
                          style: kDescricaoFontstyle,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              pesoDaPessoa.toString(),
                              style: kestiloDeNumero,
                            ),
                            const Text(
                              "kg",
                              style: kDescricaoFontstyle,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArredondado(
                              aoPressioanrR: () {
                                setState(() {
                                  pesoDaPessoa--;
                                });
                              },
                              icones: FontAwesomeIcons.minus,
                            ),
                            SizedBox(height: 10),
                            BotaoArredondado(
                              aoPressioanrR: () {
                                setState(() {
                                  pesoDaPessoa++;
                                });
                              },
                              icones: FontAwesomeIcons.plus,
                            ),
                          ],
                        )
                      ],
                    ),
                    cor: kcorAtivaCartaoPadrao,
                  ),
                ),
                Expanded(
                  child: CartaoPadarao(
                    filhoCartao: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "IDADE",
                          style: kDescricaoFontstyle,
                        ),
                        Text(
                          idadeDaPeeao.toString(),
                          style: kestiloDeNumero,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BotaoArredondado(
                                aoPressioanrR: () {
                                  setState(() {
                                    idadeDaPeeao--;
                                  });
                                },
                                icones: FontAwesomeIcons.minus),
                            const SizedBox(
                              height: 10,
                            ),
                            BotaoArredondado(
                                aoPressioanrR: () {
                                  setState(
                                    () {
                                      idadeDaPeeao++;
                                    },
                                  );
                                },
                                icones: FontAwesomeIcons.plus),
                          ],
                        )
                      ],
                    ),
                    cor: kcorAtivaCartaoPadrao,
                  ),
                ),
              ],
            ),
          ),
          BotaoInferior(
            texto: "CALCULADORA",
            aoPressionar: () {
              CalculadoraIMC calc = CalculadoraIMC(
                altura: alturaPessoa,
                peso: pesoDaPessoa,
              );
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaResultado(
                    resultadoImc: calc.calculadoraIMC(),
                    resultadoInterpretacao: calc.ObterDiocaIMC(),
                    resultadoTexto: calc.ObterResultadoIMC(),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
