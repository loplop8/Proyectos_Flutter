import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/ui.state.dart';

class CustomNavigatorBar extends StatelessWidget {
  const CustomNavigatorBar({super.key});

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<Uiprovider>(context);
    final currentIndex = uiProvider.selectedMenuOpt;

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.map), label: "Mapa"),
        BottomNavigationBarItem(
            icon: Icon(Icons.compass_calibration), label: "Direcciones")
      ],
      currentIndex: currentIndex,
      elevation: 0,
      onTap: (int i) => uiProvider.selectedMenuOpt = i,
    );
  }
}
