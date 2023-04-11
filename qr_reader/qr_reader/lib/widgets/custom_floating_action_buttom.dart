// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:provider/provider.dart';

import 'package:qr_reader/providers/scan_list_provider.dart';
import 'package:qr_reader/utils/utils.dart';


class CustomFloatingActionButtom extends StatelessWidget {
  const CustomFloatingActionButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#3D8BEF', 'Cancelar', false, ScanMode.QR);

        if (barcodeScanRes == "-1") {
          return;
        }

        final scanListProvider =
            Provider.of<ScanListProvider>(context, listen: false);

        scanListProvider.nuevoScan(barcodeScanRes);

        final newScan = await scanListProvider.nuevoScan(barcodeScanRes);

        lanzarUrl(context, newScan);
      },
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
