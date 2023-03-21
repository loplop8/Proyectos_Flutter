import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Card Widget"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          children: const [
            CustomCardType1(),
            SizedBox(height: 25),
            CustomCardType2(
                imgURL:
                    "https://previews.123rf.com/images/franckito/franckito1505/franckito150500353/40349708-representaci%C3%B3n-3d-de-cuatro-sillas-de-tama%C3%B1o-grande-y-peque%C3%B1o-en-la-playa.jpg",
                name: "PlAYITA "),
            SizedBox(height: 25),
            CustomCardType1(),
            SizedBox(height: 25),
            CustomCardType2(
              imgURL:
                  "https://as01.epimg.net/diarioas/imagenes/2022/01/27/actualidad/1643296737_378667_1643297105_noticia_normal_recorte1.jpg",
              name: "Nuestro planeta",
            ),
            SizedBox(height: 25),
            CustomCardType1(),
            SizedBox(height: 25),
            CustomCardType2(
                imgURL:
                    "https://static.nationalgeographic.es/files/styles/image_3200/public/01WAQbigeyes.jpg?w=1600&h=900",
                name: "Animales"),
            SizedBox(height: 25),
            CustomCardType1(),
            SizedBox(height: 25),
            CustomCardType2(
              imgURL:
                  "https://dam.ngenespanol.com/wp-content/uploads/2022/03/megalodon-era-mas-grande-en-aguas-frias-e1646685929185.jpg",
            ),
          ],
        ));
  }
}
