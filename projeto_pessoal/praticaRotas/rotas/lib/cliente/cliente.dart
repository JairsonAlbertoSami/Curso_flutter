import 'package:flutter/material.dart';

class Cliente with ChangeNotifier {
  final String? id;
  final String? nome;
  final String? apelido;
  final String? endereco;
  final String? foto;
  final String? email;
  final double? saldo;
  final double? credito;
  final double? limite;

  Cliente({
    this.saldo,
    this.apelido,
    this.email,
    this.credito,
    this.endereco,
    this.foto,
    this.id,
    this.limite,
    this.nome,
  });
}
