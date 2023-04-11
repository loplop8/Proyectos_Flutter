import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/providers/scan_list_provider.dart';

import 'package:qr_reader/widgets/custom_floating_action_buttom.dart';
import 'package:qr_reader/widgets/widgets.dart';
import 'package:qr_reader/pages/pages.dart';
import 'package:qr_reader/providers/ui.state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Historial")),
        actions: [
          IconButton(
              onPressed: () {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarTodos();
              },
              icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: _HomePageBody(),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const CustomFloatingActionButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<Uiprovider>(context);

    final currentIndex = uiProvider.selectedMenuOpt;
    //final tempScan = ScanModel(valor: 'http://google.com');
    //DbProvider.db.nuevoScan(tempScan);
    //DbProvider.db.getScanById(7);

    //Usar el ScanListProvider
    final scanListProvider =
        Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        {
          scanListProvider.cargarScansPorTipo('geo');
          return const HistorialMapasPage();
        }

      case 1:
        {
          scanListProvider.cargarScansPorTipo('http');
          return  const DireccionesPage();
        }

      default:
        {
          return const HistorialMapasPage();
        }
    }
  }
}
