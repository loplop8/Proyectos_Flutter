import 'package:flutter/material.dart';
import 'package:qr_reader/widgets/custom_floating_action_buttom.dart';
import 'package:qr_reader/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Historial")),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete_forever))
        ],
      ),
      body: const Center(
        child: Text('Home Page'),
      ),
      bottomNavigationBar: const CustomNavigatorBar(),
      floatingActionButton: const CustomFloatingActionButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
