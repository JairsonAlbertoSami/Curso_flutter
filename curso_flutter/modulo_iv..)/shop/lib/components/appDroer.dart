import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        AppBar(
          title: Text("BENVINDO USUARIO"),
          automaticallyImplyLeading:
              false, // TIRA O DRAWER, PORQUE SAO DOIS NAO FAZ SENTIDO PARA O LAYOUT
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.shop),
          title: Text("Loja"),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(
              AppRoutes.Khome,
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.payment),
          title: Text("Pedidos"),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(
              AppRoutes.KOder,
            );
          },
        ),
        Divider(),
        ListTile(
          leading: Icon(Icons.edit),
          title: Text("Gerenciar Produtos"),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(
              AppRoutes.KproductsPage,
            );
          },
        ),
      ]),
    );
  }
}
