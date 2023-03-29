import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final opciones = const [
    "Megaman",
    "Metal Gear",
    "Super Smash",
    "Final Fantasy"
  ];
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ListView Tipo 1"),
        ),
        body: ListView(children: [
          /* Utilizamos el operador spread para poder recorrer la listay con el cada elemento de la lista , 
          lo pasamos a mapa, le decimos que construya un mapa por 
          cada juego y que ponga un widget de titulo de lista donde el texto que va a tener va a ser el nombre del juego
            */
          ...opciones
              .map((juego) => ListTile(
                    title: Text(juego),
                    trailing: const Icon(Icons.arrow_circle_right_rounded),
                  ))
              .toList(),
          const Divider(),
        ]
        )
        );
  }
}
