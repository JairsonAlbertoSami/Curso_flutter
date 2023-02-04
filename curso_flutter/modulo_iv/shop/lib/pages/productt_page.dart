import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/appDroer.dart';
import 'package:shop/components/product_item.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/utils/app_routes.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductList prodcut = Provider.of(context);
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.KproducFormePage,
                );
              },
              icon: Icon(Icons.add),
            ),
          ],
          title: Text("product Page"),
        ),
        drawer: AppDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView.builder(
            itemCount: prodcut.itemsCount,
            itemBuilder: (context, index) => Column(
              children: [
                ProducItem(product: prodcut.items[index]),
                Divider(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ));
  }
}
