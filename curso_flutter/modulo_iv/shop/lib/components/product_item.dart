import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/product.dart';
import 'package:shop/models/product_list.dart';
import 'package:shop/utils/app_routes.dart';

class ProducItem extends StatelessWidget {
  final Product product;
  ProducItem({required this.product});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(product.imageUrl),
      ),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.KproducFormePage,
                  arguments: product,
                );
              },
              icon: Icon(Icons.edit),
              color: Theme.of(context).colorScheme.primary,
            ),
            IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: ((context) => AlertDialog(
                        title: Text("Excluir item"),
                        content: Text("tam certeza"),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(
                              context,
                            ).pop(),
                            child: Text("Não"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                              Provider.of<ProductList>(context, listen: false)
                                  .removeProduct(product);
                            },
                            child: Text("Sim"),
                          ),
                        ],
                      )),
                );
              },
              icon: Icon(Icons.delete),
              color: Theme.of(context).errorColor,
            ),
          ],
        ),
      ),
    );
  }
}
