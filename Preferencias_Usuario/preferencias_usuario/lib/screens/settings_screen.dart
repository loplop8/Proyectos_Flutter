import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/side_menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  static const String routeName = "Settings";

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;

  String gender = "Género";

  String name = "José Antonio";

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
              value: isDarkMode,
              title: const Text("DarkMode"),
              onChanged: (value) {
                isDarkMode = value;
                setState(() {});
              }),
          const Divider(),
          RadioListTile<String>(
              value: "Masculino",
              groupValue: gender,
              title: const Text("Masculino"),
              onChanged: (value) {
                gender = value ?? "Masculino";
                setState(() {});
              }),
          const Divider(),
          RadioListTile<String>(
              value: "Feminino",
              groupValue: gender,
              title: const Text("Feminino"),
              onChanged: (value) {
                gender = value ?? "Masculino";
                setState(() {});
              }),
          const Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              onChanged: (value) {
                name = value;
                setState(() {});
              },
              initialValue: "José Antonio",
              decoration: const InputDecoration(
                  labelText: "Nombre", helperText: "Nombre del Usuario"),
            ),
          )
        ]),
      ),
    );
  }
}
