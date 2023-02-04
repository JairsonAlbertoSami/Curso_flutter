import 'package:flutter/material.dart';

class CartaoPadarao extends StatelessWidget {
  final Color? cor;
  final filhoCartao;
  final Function()? aoPressionar;
  CartaoPadarao({
    required this.cor,
    this.filhoCartao,
    this.aoPressionar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: aoPressionar,
      child: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cor,
        ),
        child: filhoCartao,
      ),
    );
  }
}
