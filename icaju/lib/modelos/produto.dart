import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Produtor with ChangeNotifier {
  final String nome;
  final String? bi;
  final String? id;

  final String imagemUrl;
  final String cidade;
  final double quantidadeDisponivel;
  double vendas = 1200;
  double preco = 50;
  String descricao = "NADA INFORMAO";
  bool? isFavorito = false;

  Produtor({
    required this.nome,
    this.bi,
    this.id,
    required this.imagemUrl,
    required this.cidade,
    required this.quantidadeDisponivel,
    required this.vendas,
    required this.preco,
    required this.descricao,
    this.isFavorito,
  });
}
