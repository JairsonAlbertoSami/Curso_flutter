import 'package:flutter/material.dart';
import 'package:modulo_ii/componentes/cart_Appbar.dart';
import 'package:modulo_ii/transaction.dart';
import 'package:intl/intl.dart';
import '../transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentecTransactions;
  Chart(this.recentecTransactions);

  List<Map<String, Object>> get goupeTrasactions {
    return List.generate(7, (index) {
      final weekday = DateTime.now().subtract(
        Duration(days: index),
      );
      double totalSum = 0.0;

      for (var i = 0; i < recentecTransactions.length; i++) {
        bool sameDay = recentecTransactions[i].data.day == weekday.day;
        bool sameMont = recentecTransactions[i].data.month == weekday.month;
        bool sameyear = recentecTransactions[i].data.year == weekday.year;

        if (sameDay && sameyear && sameMont) {
          totalSum += recentecTransactions[i].value;
        }
      }

      return {
        "day": DateFormat.E().format(weekday)[0],
        "value": totalSum,
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
          children: goupeTrasactions.map((tr) {
        return ChartBar(
          labelLinhaBaixo: tr["day"] as String,
          value: tr["value"] as double,
          percentage: 0,
        );
      }).toList()),
    );
  }
}// Text("${tr["day"]} : ${tr["value"]}")
