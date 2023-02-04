import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:rotas/componentes/entrdaIdEmail.dart';

import '../approtas/app_rotas.dart';

class TelaLoging extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("MEU BANCO"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EntradaIdEmail(
                texto: "e-mail",
                icon: const Icon(
                  Icons.contact_phone,
                )),
            EntradaIdEmail(
                texto: "senha",
                // ignore: prefer_const_constructors
                icon: Icon(
                  Icons.email,
                )),
            SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 3,
                horizontal: 20,
              ),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    AppRotas.kEntradaIdEmail,
                  );
                },
                child: Text(
                  "logim",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "quer cadastrar",
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
