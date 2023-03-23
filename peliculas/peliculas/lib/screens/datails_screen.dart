import 'package:flutter/material.dart';
import 'package:peliculas/widgets/casting_cards.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? "no-movie";

    return Scaffold(
        body: CustomScrollView(slivers: [
      _CustomAppBar(),
      SliverList(
          delegate: SliverChildListDelegate([
        _PosterAndTitle(),
        _OverView(),
        _OverView(),
        _OverView(),
        const CastingCards()
      ]))
    ]));
  }
}

class _CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.green,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            child: const Text(
              "movie.title",
              style: TextStyle(fontSize: 16, color: Colors.black12),
            )),
        background: const FadeInImage(
          placeholder: AssetImage("assets/loading.gif"),
          image: NetworkImage("https://via.placeholder.com/500x300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: const FadeInImage(
            image: NetworkImage("https://via.placeholder.com/300x400"),
            placeholder: AssetImage("assets/no-image.jpg"),
            height: 150,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "movie.title",
              style: Theme.of(context).textTheme.headlineSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
            Text(
              "movie.originalTitle",
              style: textTheme.labelSmall,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            Row(
              children: [
                const Icon(Icons.star_outline, size: 15, color: Colors.grey),
                const SizedBox(
                  width: 5,
                ),
                Text("movie.voteAverage", style: textTheme.labelSmall)
              ],
            )
          ],
        )
      ]),
    );
  }
}

class _OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        "Nisi duis do labore velit nisi officia est velit non. Pariatur officia amet amet cillum qui tempor. Ea in ea irure consectetur nisi magna adipisicing labore nisi laborum. Excepteur culpa cupidatat nisi sint id proident. Sint quis officia Lorem exercitation nulla aute fugiat reprehenderit laborum. Quis cillum qui enim eu et excepteur anim labore consequat quis. Nulla consectetur qui est eiusmod id laborum labore elit ut est veniam in ut.",
        textAlign: TextAlign.justify,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

