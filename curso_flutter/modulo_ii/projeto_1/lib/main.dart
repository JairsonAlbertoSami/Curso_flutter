// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:modulo_ii/componentes/chart.dart';
import 'package:modulo_ii/componentes/transaction_forme.dart';
import 'dart:math';
import '../transaction.dart';
import './componentes/transaction_list.dart';

void main(List<String> args) {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.green,
        ).copyWith(
          secondary: Colors.amber,
        ),
        fontFamily: "Roboto",
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _transactions = <Transaction>[
    Transaction(
      data: DateTime.now().subtract(Duration(days: 4)),
      id: "T1",
      title: "tênis de corrida",
      value: 340.77,
    ),
    Transaction(
      data: DateTime.now().subtract(Duration(days: 7)),
      id: "21",
      title: "bola",
      value: 34.77,
    )
  ];

  List<Transaction> get _recenteTransaction {
    return _transactions.where((tr) {
      return tr.data.isAfter(DateTime.now().subtract(Duration(days: 7)));
    }).toList();
  }

  _transactionAdicionar(String title, double value) {
    final newTransaction = Transaction(
      data: DateTime.now(),
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
    );
    setState(() {
      _transactions.add(newTransaction);
    });
    Navigator.of(context).pop();
  }

  _opentransactionModal(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return TransactionForme(_transactionAdicionar);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Despesas pessoais"),
        actions: [
          Container(
            child: IconButton(
              onPressed: () => _opentransactionModal(context),
              icon: Icon(
                Icons.add,
                color: Theme.of(context).primaryColor,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            // ignore: prefer_const_constructors
            child: Chart(_recenteTransaction),
          ),
          Trasaction_List(_transactions),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => _opentransactionModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
