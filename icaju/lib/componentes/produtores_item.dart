import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/dados/listaProdutores.dart';
import 'package:icaju/modelos/produto.dart';
import 'package:icaju/rotasKconstante/Kconstantes.dart';

class produtorItem extends StatelessWidget {
  final Produtor produtor;
  produtorItem(this.produtor);

  

  void boataoVerMais(BuildContext context) {
    Navigator.of(context).pushNamed(KRotas.KteleVerMais, arguments: produtor);
  }

  void BotaoComprarProduto(BuildContext context) {
    Navigator.of(context)
        .pushNamed(KRotas.kTelaComprarProduto, arguments: produtor);
  }

  @override
  Widget build(BuildContext context) {
    var espacamentoHorizontal = SizedBox(width: 10);
    var espacamentoVerticall = SizedBox(height: 10);
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Icon(Icons.star),
              ),
              TextButton(
                onPressed: () {},
                child: Icon(Icons.star),
              ),
              TextButton(
                onPressed: () {},
                child: Icon(Icons.star),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: Colors.amber,
                ),
                height: 100,
                width: 100,
                child: InkWell(
                  onTap: () => boataoVerMais(context),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      produtor.imagemUrl,
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
              espacamentoHorizontal,
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          produtor.nome,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    espacamentoVerticall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text("XOF: ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Text("${produtor.preco}",
                              style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Cidade: ",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        Text(produtor.cidade),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Disponivel: ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.red)),
              Text("${produtor.quantidadeDisponivel} Toneladas"),
            ],
          ),
          espacamentoVerticall,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () => BotaoComprarProduto(context),
                  child: Text("Comprar"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: TextButton(
                    onPressed: () {
                      boataoVerMais(context);
                    },
                    child: Text(
                      "Ver mais",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
