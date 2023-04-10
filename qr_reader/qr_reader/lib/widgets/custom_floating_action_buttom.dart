import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CustomFloatingActionButtom extends StatelessWidget {
  const CustomFloatingActionButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        String barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
            '#3D8BEF', 'Cancelar', false, ScanMode.QR);
      },
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
