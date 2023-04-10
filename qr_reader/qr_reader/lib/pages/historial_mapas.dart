import 'package:flutter/material.dart';

class HistorialMapasPage extends StatelessWidget {
  const HistorialMapasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (_, i) => ListTile(
              leading: Icon(
                Icons.map,
                color: Theme.of(context).primaryColor,
              ),
              title: Text("lsjnlsvf"),
              subtitle: Text("subtitulo"),
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.grey),
              onTap: () => {print("Holaaa")},
            ));
  }
}
