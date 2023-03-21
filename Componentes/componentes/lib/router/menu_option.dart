import 'package:flutter/material.dart' show IconData,Widget;

class MenuOption  {
  final String route;
  final IconData icono;
  final String nombre;
  final Widget screen;



  MenuOption(
      {required this.route,
      required this.icono,
      required this.nombre,
      required this.screen});
}
