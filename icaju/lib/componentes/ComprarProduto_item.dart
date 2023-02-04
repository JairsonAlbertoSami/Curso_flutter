import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/modelos/produto.dart';

class ComprarProItem extends StatefulWidget {
  final Produtor produtor;
  ComprarProItem(this.produtor);

  @override
  State<ComprarProItem> createState() => _ComprarProItemState();
}

class _ComprarProItemState extends State<ComprarProItem> {
  final controler = TextEditingController();
  late double quantidadeCompraada = double.parse(controler.text);
  double _prcoPagar() {
    final total = quantidadeCompraada * widget.produtor.preco;
    return total;
  }

  double _stokDisponivel() {
    if (quantidadeCompraada <= 0 &&
        quantidadeCompraada >= widget.produtor.quantidadeDisponivel) {
      return 1;
    }
    double stokDisponivel =
        quantidadeCompraada - widget.produtor.quantidadeDisponivel;
    return stokDisponivel;
  }

  _compontes(String variavel, String texto) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text("${variavel}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        Text("${texto}",
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.red)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _compontes("Disponivel:  ", "4"),
            _compontes("preço       : ", "${widget.produtor.preco}"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  width: 200,
                  height: 50,
                  child: TextField(
                    controller: controler,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        icon: Icon(Icons.edit_note_outlined),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        hintText: "1234",
                        labelText: "Quantidade a comprar"),
                  ),
                ),
                Text("Total: ")
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _prcoPagar();
                    _stokDisponivel();
                  });
                },
                child: Text("COMPRAR")),
            ElevatedButton(
              onPressed: () {},
              child: Text("Restrear Compra"),
            ),
          ],
        ),
      ),
    );
  }
}
