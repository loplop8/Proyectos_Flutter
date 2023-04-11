import 'package:flutter/material.dart';
import 'package:preferencias_usuario/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
      ),
      drawer: const SideMenu(),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Text("isDarkMode"),
        Divider(),
        Text("Genero"),
        Divider(),
        Text("Nombre de Usuario"),
        Divider()
      ]),
    );
  }
}
