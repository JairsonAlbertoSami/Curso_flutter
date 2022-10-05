import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChartBar extends StatelessWidget {
  final String? labelLinhaBaixo;
  final double? value;
  final double? percentage;

  ChartBar({
    this.labelLinhaBaixo,
    this.percentage,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("R\$ ${value?.toStringAsFixed(2)}"),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 6,
          child: null,
        ),
        SizedBox(
          height: 5,
        ),
        Text(labelLinhaBaixo!),
      ],
    );
  }
}
