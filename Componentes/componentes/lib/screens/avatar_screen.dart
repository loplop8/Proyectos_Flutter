import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
                backgroundColor: Colors.blueGrey[100],
                child: const Text("KKT")),
          )
        ],
        title: const Text("Goku SSJ Blue"),
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 125,
          backgroundImage: NetworkImage(
              "https://i.pinimg.com/originals/8c/c4/3f/8cc43fc39d38691ab7cac7d273d24e40.jpg"),
        ),
      ),
    );
  }
}
