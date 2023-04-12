import 'package:flutter/material.dart';
import 'package:preferencias_usuario/share_preferences/share_preferences.dart';
import 'package:preferencias_usuario/widgets/side_menu.dart';
import 'package:provider/provider.dart';

import '../providers/theme_provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = "Settings";

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  //bool isDarkMode = false;

  // String gender = "Género";

  //String name = "José Antonio";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Preferencias"),
      ),
      drawer: const SideMenu(),
      body: SingleChildScrollView(
        child: Column(children: [
          const Text(
            "Ajustes",
            style: TextStyle(
              fontSize: 45,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Divider(),
          SwitchListTile.adaptive(
              value: SharePreferences.isDarkMode,
              title: const Text("DarkMode"),
              onChanged: (value) {
                final themeProvider =
                    Provider.of<ThemeProvider>(context, listen: false);
                SharePreferences.isDarkMode = value;
                value
                    ? themeProvider.setDarkMode()
                    : themeProvider.setLightMode();

                setState(() {});
              }),
          const Divider(),
          RadioListTile<String>(
              value: "Masculino",
              groupValue: SharePreferences.gender,
              title: const Text("Masculino"),
              onChanged: (value) {
                SharePreferences.gender = value ?? "Masculino";
                setState(() {});
              }),
          const Divider(),
          RadioListTile<String>(
              value: "Femenino",
              groupValue: SharePreferences.gender,
              title: const Text("Femenino"),
              onChanged: (value) {
                SharePreferences.gender = value ?? "Femenino";
                setState(() {});
              }),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onChanged: (value) {
                SharePreferences.name = value;
                setState(() {});
              },
              initialValue: "",
              decoration: const InputDecoration(
                  labelText: "Nombre", helperText: "Nombre del Usuario"),
            ),
          )
        ]),
      ),
    );
  }
}
