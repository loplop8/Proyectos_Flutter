import 'package:flutter/material.dart';
import 'package:peliculas/providers/movies_provider.dart';
import 'package:peliculas/search/search_delegate.dart';
import 'package:peliculas/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final moviesProvider = Provider.of<MoviesProvider>(context, listen: true);

    return Scaffold(
        appBar: AppBar(
            title: const Center(child: Text("Peliculas en cine ")),
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () => showSearch(
                      context: context, delegate: MovieSearchDelegate()),
                  icon: const Icon(Icons.search))
            ]),
        body: SingleChildScrollView(
          child: Column(children: [
            //Tarjetas Principales
            CardSwipper(movies: moviesProvider.onDisplayMovies),
            MovieSlider(
                movies: moviesProvider.popularMovies,
                onNextPage: () => {moviesProvider.getPopularMovies()}),

            //Slider de peliculas
          ]),
        ));
  }
}
