import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/dados/listaProdutores.dart';
import 'package:icaju/modelos/produto.dart';

class CadastroProdutorItem extends StatefulWidget {
  @override
  State<CadastroProdutorItem> createState() => _CadastroProdutorItemState();
}

class _CadastroProdutorItemState extends State<CadastroProdutorItem> {
  final _formKey = GlobalKey<FormState>();
  final _dadosFormulario = <String, Object>{};

  InputDecoration _InputDecoration(String descricao, String exemplo) {
    return InputDecoration(
      label: Text(descricao),
      hintText: "${exemplo}",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    addProdutor(Produtor produtor) {
      ListaProdutores.add(produtor);
    }

    salvarProduto() {
      _formKey.currentState!.save();
      //  final produ = ModalRoute.of(context)?.settings.arguments;
      final produtor = Produtor(
          nome: _dadosFormulario["nome"] as String,
          imagemUrl: _dadosFormulario["imagemUrl"] as String,
          cidade: _dadosFormulario["cidade"] as String,
          quantidadeDisponivel:
              _dadosFormulario["quantidadeDisponivel"] as double,
          vendas: _dadosFormulario["vendas"] as double,
          preco: 5,
          descricao: "");
      addProdutor(produtor);
    }

    final mediaQuery = MediaQuery.of(context).size.width * 0.45;
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .99,
                    height: 100,
                    child: TextFormField(
                      onSaved: (nome) {
                        _dadosFormulario["nome"] = nome!;
                      },
                      decoration: _InputDecoration("Nome", "Jairson"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .99,
                    height: 100,
                    child: TextFormField(
                      onSaved: (bi) => _dadosFormulario["bi"] = bi!,
                      decoration: _InputDecoration(
                          "Bilhete de indentidade", "A1A000016444"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.99,
                    height: 100,
                    child: TextFormField(
                      onSaved: (cidade) => _dadosFormulario["cidade"] = cidade!,
                      decoration: _InputDecoration(
                        "cidade",
                        "Bula",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 100,
                    child: TextFormField(
                      onSaved: ((newValue) => Null),
                      decoration:
                          _InputDecoration("Área de plantacao", "14564334"),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 100,
                    child: TextFormField(
                      onSaved: (newValue) => Null,
                      decoration: _InputDecoration(
                        "Produção Anula",
                        "56756 toneladas",
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 100,
                    child: TextFormField(
                      onSaved: ((newValue) =>
                          _dadosFormulario["quantidadeDisponivel"] = newValue!),
                      decoration: _InputDecoration(
                        "Stok",
                        "12345453",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * .99,
                height: 100,
                child: TextFormField(
                  onSaved: (imagemUrl) =>
                      _dadosFormulario["imagemUrl"] = imagemUrl!,
                  decoration: _InputDecoration("Link imgaem", "wwwwww.br.pjb"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: TextFormField(
                  onSaved: (newValue) => Null,
                  decoration: _InputDecoration("E-mail ", "jairson@.com"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: TextFormField(
                  onSaved: (newValue) => Null,
                  obscureText: true,
                  decoration: InputDecoration(
                    label: Text("Senha"),
                    hintText: "jjjjj",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.star),
                label: Text("Eu concordo com os termos de uso"),
              ),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    salvarProduto();
                  },
                  icon: Icon(Icons.save),
                  label: Text("salvar"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
