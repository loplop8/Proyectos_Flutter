import 'package:flutter/material.dart';

class MovieSlider extends StatelessWidget {
  const MovieSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 260,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("Populares",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, int index) => const _MoviePoster(),
            itemCount: 20,
          ),
        )
      ]),
    );
  }
}

class _MoviePoster extends StatelessWidget {
  const _MoviePoster();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 260,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(children: [
        GestureDetector(
          onTap: () => Navigator.pushNamed(context, "details",
              arguments: "movie-instance"),
          child: const ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: FadeInImage(
              placeholder: AssetImage("assets/no-image.jpg"),
              image: NetworkImage("https://via.placeholder.com/300x400"),
              width: 130,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Text(
          "Titulo PELICULA",
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ]),
    );
  }
}
