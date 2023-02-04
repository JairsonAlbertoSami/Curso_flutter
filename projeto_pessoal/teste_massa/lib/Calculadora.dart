import 'dart:math';

class CalculadoraIMC {
  CalculadoraIMC({this.altura, this.peso});
  final int? peso;
  final int? altura;
  late final double _IMC;

  String calculadoraIMC() {
    _IMC = peso! / pow((altura! * 0.01), 2);
    return _IMC.toStringAsFixed(1);
  }

  String ObterResultadoIMC() {
    if (_IMC >= 25.0) {
      return "Acima do peso";
    } else if (_IMC > 18) {
      return "Normal";
    } else {
      return "Abaixo do peso";
    }
  }

  String ObterDiocaIMC() {
    if (_IMC >= 25.0) {
      return "Precisa comer MENOS".toLowerCase();
    } else if (_IMC > 18) {
      return "tá na moda ".toLowerCase();
    } else {
      return "PECISA COMER MAIS".toLowerCase();
    }
  }
}
