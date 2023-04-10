import 'package:flutter/material.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
      BottomNavigationBarItem(
          icon: Icon(Icons.compass_calibration), label: "Direcciones")
    ], currentIndex: 1, elevation: 0);
  }
}
