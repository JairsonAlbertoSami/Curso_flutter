// ignore_for_file: prefer_const_constructors

import 'package:intl/intl.dart';

import 'package:flutter/material.dart';
import '../transaction.dart';

class Trasaction_List extends StatelessWidget {
  final List<Transaction> transaction;

  Trasaction_List(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transaction.isEmpty
          ? Column(
              children: [
                const SizedBox(width: 10),
                Center(
                  child: Text(
                    "Nenhuma Transação cadastrada!!",
                    style: Theme.of(context).appBarTheme.titleTextStyle,
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  child: Image.asset(
                    "asserts/images/lula.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: transaction.length,
              itemBuilder: (context, index) {
                final tr = transaction[index];
                return Card(
                  child: Row(
                    children: [
                      Container(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        // ignore: prefer_const_constructors
                        padding: EdgeInsets.all(10),
                        child: Container(
                          child: Text(
                            "R\$: ${tr.value.toStringAsFixed(2)}",
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                                fontSize: 10,
                                color: Color.fromARGB(255, 13, 32, 201),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr.title,

                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat('EEE, M/d/y').format(tr.data),
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
