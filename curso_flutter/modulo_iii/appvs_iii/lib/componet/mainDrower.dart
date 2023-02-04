import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_routes.dart';

class MainDrawerd extends StatelessWidget {
  const MainDrawerd({super.key});

  Widget _createItem(
    IconData icon,
    String label,
    Function() onTab,
  ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        label,
        style: TextStyle(
            fontFamily: "RobotoCondensed",
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: onTab,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              "Vamos cozinhar",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SizedBox(height: 20),
          _createItem(
            Icons.restaurant,
            "Refeições",
            () => Navigator.of(context).pushReplacementNamed(Approutes.HOME),
          ),
          _createItem(
            Icons.settings,
            "Configurações",
            () =>
                Navigator.of(context).pushReplacementNamed(Approutes.SETTINGS),
          )
        ],
      ),
    );
  }
}
