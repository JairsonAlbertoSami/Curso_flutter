import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/appDroer.dart';
import 'package:shop/components/oderWidget.dart';
import 'package:shop/models/oder_list.dart';

class OdersPages extends StatelessWidget {
  const OdersPages({super.key});

  @override
  Widget build(BuildContext context) {
    final order = Provider.of<OrederList>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Meus pedidos",
        ),
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: order.itemsCount,
        itemBuilder: (context, index) => OderWidget(order: order.items[index]),
      ),
    );
  }
}
