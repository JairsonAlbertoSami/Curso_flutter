import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class telaCasCompradorItem extends StatelessWidget {
  const telaCasCompradorItem({super.key});
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
    final mediaQuery = MediaQuery.of(context).size.width * 0.45;
    return SingleChildScrollView(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: mediaQuery,
                    height: 100,
                    child: TextField(
                      decoration: _InputDecoration(
                          "Nome da instituição Icaju", "Icaju"),
                    ),
                  ),
                  Container(
                    width: mediaQuery,
                    height: 100,
                    child: TextField(
                      decoration: _InputDecoration(
                        "Tipo de impresa",
                        "Produtor de chocolate",
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: mediaQuery,
                    height: 100,
                    child: TextField(
                      decoration: _InputDecoration("País", "Brasil"),
                    ),
                  ),
                  Container(
                    width: mediaQuery,
                    height: 100,
                    child: TextField(
                      decoration: _InputDecoration(
                        "Cidade",
                        "Rio de janeriro",
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * 90,
                height: 100,
                child: TextField(
                  decoration: _InputDecoration("E-mail ", "jairson@.com"),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 40,
                height: 100,
                child: TextField(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.star),
                    label: Text("Eu concordo com os termos de uso"),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 94,
                  height: 70,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.save),
                    label: Text("salvar"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
