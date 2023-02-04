import 'package:flutter/foundation.dart';

class Produtor {
  final String nome;
  final String imagemUrl;
  final String sobrenome;
  final String cidade;
  final String regiao;
  final String bairo;
  final String acesso;
  final double producao;
  final double quantidadeDisponivel;
  final double vendas;
  final double preco;
  final double stok;
  Produtor({
    required this.imagemUrl,
    required this.nome,
    required this.sobrenome,
    required this.cidade,
    required this.regiao,
    required this.bairo,
    required this.acesso,
    required this.producao,
    required this.quantidadeDisponivel,
    required this.vendas,
    required this.preco,
    required this.stok,
  });
}
