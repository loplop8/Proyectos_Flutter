import 'package:flutter/material.dart';

import '../themes/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

//Siempre es mejor tener widgets independientes por que es mas eficiente ya que flutter los carga en memoria y tarda menos en cargar
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
              leading: Icon(
                Icons.photo_album,
                color: AppTheme.primario,
              ),
              title: Text("Soy un titulo"),
              subtitle: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus non porta libero, et efficitur elit. Pellentesque bibendum ultrices est, ut interdum leo luctus sed.")),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text("Cancelar"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("OK"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
