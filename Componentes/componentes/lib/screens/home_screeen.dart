import 'package:componentes/router/app_routes.dart';
import 'package:componentes/router/menu_option.dart';
import 'package:componentes/themes/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<MenuOption> menuOption = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Componentes de Flutter"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: Icon(
              menuOption[index].icono,
              color: AppTheme.primario,
            ),
            title: Text(menuOption[index].nombre),
            onTap: () {
              /*
              final route = MaterialPageRoute(
                  builder: (context) => const ListView1Screen());
              Navigator.push(context, route);
              */
              //Con navigator pushNamed podemos cambiar entre pantallas definiendole el string de la ruta
              //que pusimos en el main
              Navigator.pushNamed(context, menuOption[index].route);
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: menuOption.length,
        ));
  }
}
