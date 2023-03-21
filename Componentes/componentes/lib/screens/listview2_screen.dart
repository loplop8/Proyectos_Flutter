import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Tipo 2"),
      ),
      body: ListView.separated(
        itemCount: opciones.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(opciones[index]),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {},
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
