import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    const tableRow1 = TableRow(children: [
      SingleCard(
        colorFondoyTexto: Colors.red,
        iconoPersonalizado: Icons.ac_unit_outlined,
        textoPersonalizado: "Holaa",
      ),
      SingleCard(
        colorFondoyTexto: Colors.yellow,
        iconoPersonalizado: Icons.add_box_outlined,
        textoPersonalizado: "Holaa",
      ),
    ]);

    const tableRow2 = TableRow(children: [
      SingleCard(
        colorFondoyTexto: Colors.red,
        iconoPersonalizado: Icons.ac_unit_outlined,
        textoPersonalizado: "Holaa",
      ),
      SingleCard(
        colorFondoyTexto: Colors.yellow,
        iconoPersonalizado: Icons.add_box_outlined,
        textoPersonalizado: "Holaa",
      ),
    ]);

    const tableRow3 = TableRow(children: [
      SingleCard(
        colorFondoyTexto: Colors.purpleAccent,
        iconoPersonalizado: Icons.ac_unit_outlined,
        textoPersonalizado: "Holaa",
      ),
      SingleCard(
        colorFondoyTexto: Colors.green,
        iconoPersonalizado: Icons.add_chart_sharp,
        textoPersonalizado: "Holaa",
      ),
    ]);
    const tableRow4 = TableRow(children: [
      SingleCard(
        colorFondoyTexto: Colors.pink,
        iconoPersonalizado: Icons.access_alarm,
        textoPersonalizado: "Holaa",
      ),
      SingleCard(
        colorFondoyTexto: Colors.yellow,
        iconoPersonalizado: Icons.add_to_photos_sharp,
        textoPersonalizado: "Holaa",
      ),
    ]);

    return Table(
      children: const [
        tableRow1,
        tableRow2,
        tableRow3,
        tableRow4,
      ],
    );
  }
}

class SingleCard extends StatelessWidget {
  final Color colorFondoyTexto;

  final IconData iconoPersonalizado;

  final String textoPersonalizado;

  const SingleCard(
      {super.key,
      required this.colorFondoyTexto,
      required this.iconoPersonalizado,
      required this.textoPersonalizado});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: const Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20)),
        height: 180,
        child: ContenidoPersonalizado(
          color: colorFondoyTexto,
          iconData: iconoPersonalizado,
          text: textoPersonalizado,
        ));
  }
}

class ContenidoPersonalizado extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color color;

  const ContenidoPersonalizado({
    super.key,
    required this.iconData,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      CircleAvatar(
        backgroundColor: color,
        radius: 30,
        child: Icon(iconData),
      ),
      const SizedBox(height: 10),
      Text(text, style: TextStyle(color: color, fontSize: 18))
    ]);
  }
}
