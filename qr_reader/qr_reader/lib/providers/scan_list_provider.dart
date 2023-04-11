import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];

  String tipoSeleccionado = "http";

  Future<ScanModel> nuevoScan(String valor) async {
    final nuevoScan = ScanModel(valor: valor);

    final id = await DbProvider.db.nuevoScan(nuevoScan);

    nuevoScan.id = id;
    if (tipoSeleccionado == nuevoScan.tipo) {
      scans.add(nuevoScan);
      notifyListeners();
    }

    return nuevoScan;
  }

  cargarScans() async {
    final escaneos = await DbProvider.db.getAllScans();

    scans = [...escaneos];
    notifyListeners();
  }

  cargarScansPorTipo(String tipo) async {
    final escaneos = await DbProvider.db.getScansPorTipo(tipo);
    scans = [...escaneos];
    tipoSeleccionado = tipo;
    notifyListeners();
  }

  borrarTodos() async {
    await DbProvider.db.deleteAllScan();
    scans = [];
    notifyListeners();
  }

  borrarPorId(int id) async {
    await DbProvider.db.deleteScan(id);
    cargarScansPorTipo(tipoSeleccionado);
    notifyListeners();
  }
}
