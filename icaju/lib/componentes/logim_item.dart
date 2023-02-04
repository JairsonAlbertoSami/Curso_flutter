import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:icaju/modelos/produto.dart';
import 'package:icaju/telas/tela_cadaComprador.dart';
import 'package:icaju/telas/tela_cadasProdutor.dart';
import 'package:icaju/telas/tela_comprarProduto.dart';
import 'package:icaju/telas/tela_produtores.dart';
import 'package:icaju/telas/tela_verMais.dart';

import '../rotasKconstante/Kconstantes.dart';

class LogimnItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textContorler = TextEditingController();
    final textConsenha = TextEditingController();

    String email;
    String senha;
    void salvar() {
      email = textContorler.text;
      senha = textConsenha.text;
      print("$email");
      print("$senha");
    }

    void _botaoQuerSeCadastrar() {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Cadastrar"),
          content: const Text('Quer se cadastrar como:'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(KRotas.KTelaCadastroProdutor,
                    arguments: TelaCadastroProdutor());
              },
              child: Text("produtor"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(KRotas.KTelaCasComprador,
                    arguments: TelaCasComprador());
              },
              child: Text("Comprador"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Não quero"),
            ),
          ],
        ),
      );
    }

    void _oataoLogim() {
      Navigator.of(context)
          .pushNamed(KRotas.kTelaProdutores, arguments: telaProdutores());
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: textContorler,
              decoration: InputDecoration(
                label: Text("E-mail"),
                prefixIcon: Icon(Icons.email),
                hintText: "jairson@gmail.com",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: textConsenha,
              obscureText: true,
              decoration: InputDecoration(
                label: Text("Senha"),
                hintText: "Jairson@34544",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Esqueceu a senha",
                      style: TextStyle(color: Colors.red),
                    )),
                TextButton(
                    onPressed: () {
                      _botaoQuerSeCadastrar();
                    },
                    child: Text("Não possui uma conta? Cadastre-se!")),
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  _oataoLogim();
                  salvar();
                },
                child: Text("NTRAR"))
          ],
        ),
      ),
    );
  }
}



// class DialogExample extends StatelessWidget {
//   const DialogExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return TextButton(
//       onPressed: () => showDialog<String>(
//         context: context,
//         builder: (BuildContext context) => AlertDialog(
//           title: const Text('AlertDialog Title'),
//           content: const Text('AlertDialog description'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'Cancel'),
//               child: const Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () => Navigator.pop(context, 'OK'),
//               child: const Text('OK'),
//             ),
//           ],
//         ),
//       ),
//       child: const Text('Show Dialog'),
//     );
//   }
// }
