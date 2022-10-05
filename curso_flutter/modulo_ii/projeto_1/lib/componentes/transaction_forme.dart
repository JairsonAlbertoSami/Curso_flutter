import 'package:flutter/material.dart';

class TransactionForme extends StatefulWidget {
  Function(String, double) onSubmit;

  TransactionForme(this.onSubmit);

  @override
  State<TransactionForme> createState() => _TransactionFormeState();
}

class _TransactionFormeState extends State<TransactionForme> {
  final titlecontroller = TextEditingController();

  final valueControoler = TextEditingController();

  _submiteForme() {
    final title = titlecontroller.text;
    final value = double.tryParse(valueControoler.text) ?? 0.0;
    if (title.isEmpty || value <= 0) {
      return;
    }
    widget.onSubmit(title.toLowerCase(), value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          TextField(
            controller: titlecontroller,
            keyboardType: TextInputType.name,
            onSubmitted: (_) => _submiteForme(),
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              labelText: "Titulo",
            ),
          ),
          TextField(
            controller: valueControoler,
            // ignore: prefer_const_constructors
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (_) => _submiteForme(),
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
              labelText: "Valor em R\$:",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _submiteForme,
                // ignore: prefer_const_constructors
                child: Text(
                  "adicionar trasacoes",
                  style: TextStyle(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
