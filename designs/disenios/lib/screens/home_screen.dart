import 'package:disenios/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: const [
            Background(),
            _HomeBody(),
          ],
        ),
        bottomNavigationBar: const CustomNavigationButton());
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: const [PageTitle(), CardTable()]));
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Clasify Transition",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(
                  height: 10,
                ),
                Text("Clasifica esta transaccion dentro de una categoria",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white))
              ]),
        ));
  }
}
