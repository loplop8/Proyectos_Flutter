import 'package:flutter/material.dart';
import 'package:peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Peliculas en cine "),
            elevation: 0,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ]),
        body: SingleChildScrollView(
          child: Column(children: const [
            //Tarjetas Principales
            CardSwipper(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),

            //Slider de peliculas
          ]),
        ));
  }
}
