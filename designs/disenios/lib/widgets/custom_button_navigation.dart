import 'package:flutter/material.dart';

class CustomNavigationButton extends StatelessWidget {
  const CustomNavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Calendario"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_line_chart), label: "Estadisticas"),
          BottomNavigationBarItem(
              icon: Icon(Icons.accessibility_rounded), label: "Perfil ")
        ],
        currentIndex: 0,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.pink,
        selectedLabelStyle: const TextStyle(color: Colors.pink),
        backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
        unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1));
  }
}
