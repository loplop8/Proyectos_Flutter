import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/utils/utils.dart';

import '../providers/scan_list_provider.dart';

class ScanTiles extends StatelessWidget {
  final String tipo;

  const ScanTiles({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    final scanListProvider = Provider.of<ScanListProvider>(context);
    return ListView.builder(
        itemCount: scanListProvider.scans.length,
        itemBuilder: (_, i) => Dismissible(
              key: UniqueKey(),
              background: Container(
                color: Colors.amber,
              ),
              onDismissed: ((direction) {
                Provider.of<ScanListProvider>(context, listen: false)
                    .borrarPorId(scanListProvider.scans[i].id!);
              }),
              child: ListTile(
                leading: Icon(
                  tipo == "http" ? Icons.home_outlined : Icons.map,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(scanListProvider.scans[i].valor),
                subtitle: Text(scanListProvider.scans[i].id.toString()),
                trailing:
                    const Icon(Icons.keyboard_arrow_right, color: Colors.grey),
                onTap: () => {lanzarUrl(context, scanListProvider.scans[i])},
              ),
            ));
  }

  
}


