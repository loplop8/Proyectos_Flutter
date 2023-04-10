import 'package:flutter/material.dart';

class CustomFloatingActionButtom extends StatelessWidget {
  const CustomFloatingActionButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      elevation: 0,
      child: const Icon(Icons.filter_center_focus),
    );
  }
}
