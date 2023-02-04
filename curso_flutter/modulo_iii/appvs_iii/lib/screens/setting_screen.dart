import 'package:appvs_iii/componet/mainDrower.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/Setting_filtros.dart';

class SettingScree extends StatefulWidget {
  final Settings? settings;
  final Function(Settings)? onSettingschanget;
  const SettingScree({this.onSettingschanget, this.settings});

  @override
  State<SettingScree> createState() => _SettingScreeState();
}

class _SettingScreeState extends State<SettingScree> {
  Settings? settings;

  void initState() {
    super.initState();
    settings = widget.settings;
  }

  Widget _createSwitch(
    String title,
    String subtitle,
    bool value,
    Function(bool) onChanged,
  ) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: value,
      onChanged: (value) {
        onChanged(value);
        widget.onSettingschanget!(settings!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Configuracoes"),
        ),
      ),
      drawer: MainDrawerd(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Configurações",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _createSwitch(
                  'Sem Glutén',
                  'Só exibe refeições sem glúten!',
                  settings!.isGlutenFree,
                  (value) => setState(
                    () => settings!.isGlutenFree = value,
                  ),
                ),
                _createSwitch(
                  'Sem Lactose',
                  'Só exibe refeições sem lactose!',
                  settings!.isLactoseFree,
                  (value) => setState(
                    () => settings!.isLactoseFree = value,
                  ),
                ),
                _createSwitch(
                  'Vegana',
                  'Só exibe refeições veganas!',
                  settings!.isVegan,
                  (value) => setState(
                    () => settings!.isVegan = value,
                  ),
                ),
                _createSwitch(
                  'Vegetariana',
                  'Só exibe refeições vegetarianas!',
                  settings!.isVegetarian,
                  (value) => setState(
                    () => settings!.isVegetarian = value,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
