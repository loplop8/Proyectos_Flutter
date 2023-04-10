import 'package:flutter/material.dart';
import 'package:qr_reader/pages/pages.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: HistorialMapasPage(),
      ),
    );
  }
}
