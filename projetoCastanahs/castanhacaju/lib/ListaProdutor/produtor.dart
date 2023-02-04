import 'package:flutter/foundation.dart';

class Produtor {
  final String? nome;
  final String? imagemUrl;
  final String? sobrenome;
  final String? cidade;
  final String? regiao;
  final String? bairo;
  final String? acesso;
  final double? producao;
  final double? quantidadeDisponivel;
  final double? vendas;
  final double? preco;
  final double? stok;
  Produtor({
    this.imagemUrl,
    required this.nome,
    this.sobrenome,
    required this.cidade,
    this.regiao,
    this.bairo,
    this.acesso,
    this.producao,
    required this.quantidadeDisponivel,
    this.vendas,
    required this.preco,
    this.stok,
  });
}
