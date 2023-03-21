import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double _widht = 100;
  double _height = 100;
  Color _color = Colors.red;

  final BorderRadiusGeometry _borderRadius = BorderRadius.circular(20);
  void changeShape() {
    _widht = Random().nextDouble() * 500;
    _height = Random().nextDouble() * 500;
    _color = Color.fromARGB(Random().nextInt(251), Random().nextInt(251),
        Random().nextInt(251), Random().nextInt(251));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(
            seconds: 1,
          ),
          curve: Curves.bounceIn,
          width: _widht,
          height: _height,
          decoration: BoxDecoration(color: _color, borderRadius: _borderRadius),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {changeShape()},
          child: const Icon(
            Icons.play_circle_fill_outlined,
            size: 40,
          )),
    );
  }
}
