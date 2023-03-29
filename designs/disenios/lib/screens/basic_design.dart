import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Image(
            image: AssetImage("assets/image.jpg"),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("Carretera hacia el infierno"),
                    Text(
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                        "Esto no te llevara a ningun buen sitio")
                  ],
                ),
                const SizedBox(
                  width: 90,
                ),
                const Icon(Icons.star_outlined, color: Colors.orange),
                const Text("41")
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              _CustomColumnButton(icon: Icons.phone, text: "CALL"),
              _CustomColumnButton(
                icon: Icons.route,
                text: "ROUTE",
              ),
              _CustomColumnButton(icon: Icons.share, text: "SHARE"),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: const ColumnWithText()),
        ]),
      ),
    );
  }
}

class ColumnWithText extends StatelessWidget {
  const ColumnWithText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
            "Ea labore nostrud Lorem ea veniam anim adipisicing ad ut. Dolore laboris consectetur adipisicing do mollit mollit aliqua non do fugiat commodo et ipsum. Sint do in consequat eu eiusmod ad dolore laboris adipisicing veniam. Exercitation duis ad officia occaecat. Ad do quis minim enim ipsum."),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}

class _CustomColumnButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const _CustomColumnButton(
      {super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), Text(text)],
    );
  }
}
