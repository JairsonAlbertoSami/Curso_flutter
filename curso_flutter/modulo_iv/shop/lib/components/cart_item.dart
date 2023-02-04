import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/models/cart.dart';
import 'package:shop/models/cart_item.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem cartItem;

  const CartItemWidget(this.cartItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        color: Theme.of(context).errorColor,
        // ignore: sort_child_properties_last
        // ignore: prefer_const_constructors
        child: Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
      ),
      confirmDismiss: (_) {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text("Tem Certeza?"),
            content: const Text("Quer Remover o item do carrinho?"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("Nao")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("Sim")),
            ],
          ),
        );
      },
      onDismissed: (_) {
        Provider.of<Cart>(
          context,
          listen: false,
        ).removeItem(
          cartItem.productId,
        );
      },
      direction: DismissDirection.endToStart,
      key: ValueKey(
        cartItem.id,
      ),
      child: Card(
        margin: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 4,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(cartItem.name),
            subtitle: Text(
              "Total: R \$ ${cartItem.price * cartItem.quantity} ",
            ),
            trailing: Text("${cartItem.quantity} X"),
            leading: CircleAvatar(
              child: Padding(
                padding: EdgeInsets.all(5),
                child: FittedBox(
                  child: Text("${cartItem.price}"),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
