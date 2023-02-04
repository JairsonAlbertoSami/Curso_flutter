import 'package:castanhacaju/ListaProdutor/ListaProdutores.dart';
import 'package:castanhacaju/ListaProdutor/produtor.dart';
import 'package:flutter/material.dart';

import 'conpontnes/componente.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final Produtor produtor;
    return MaterialApp(
      title: 'CASTANHAS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Icon(
                  Icons.star,
                  color: Color.fromRGBO(255, 193, 7, 1),
                ),
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.amber,
              elevation: 5,
              child: Column(
                children: [
                  avaliacao(),
                  Row(
                    children: [
                      Container(
                        color: Colors.red,
                        margin: EdgeInsets.fromLTRB(6, 0, 4, 0),
                        child: const CircleAvatar(
                          maxRadius: 50,
                          child: Text("ImageURL"),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 100,
                          color: Colors.blue,
                          child: Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text("Jairson"),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: Text("Bissau"),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text("Xof 120/ kg"),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment: Alignment.bottomLeft,
                                      child: Text('Disponivel'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Container(child: Text("Ver mais"))],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
