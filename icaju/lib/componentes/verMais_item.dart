import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/modelos/produto.dart';

class VerMaisItem extends StatelessWidget {
  final Produtor produtor;

  const VerMaisItem({required this.produtor});

// ignore: non_constant_identifier_names
  Widget _detalhes(String Textoinformar, String produtor) {
    return Row(
      children: [
        Text(Textoinformar, style: TextStyle(fontWeight: FontWeight.bold)),
        Text(" ${produtor}"),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              color: Colors.amber,
              height: 100,
              width: 100,
              child: ClipRRect(
                child: Image.network(
                  produtor.imagemUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              produtor.nome,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              color: Theme.of(context).primaryColor,
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomLeft,
              child: Text("Descrição: ${produtor.descricao}"),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Container(
                  decoration: BoxDecoration(),
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Estrelas avaliacaopppp"),
                        SizedBox(
                          height: 10,
                        ),
                        _detalhes("Nome: ", produtor.nome),
                        _detalhes("Cidade: ", produtor.cidade),
                        _detalhes("Preço: ", "${produtor.preco}"),
                        _detalhes(
                            "Quntidade: ", "${produtor.quantidadeDisponivel}"),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
