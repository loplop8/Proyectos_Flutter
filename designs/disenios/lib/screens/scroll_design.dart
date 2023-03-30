import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration =  BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.5, 0.5],
                colors: [Color(0xff7aeccb), Color(0xff50c2dd)])
                );
                
    return Scaffold(
      backgroundColor: const Color(0xff50c2dd),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [Page1(), Page2()],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        SingleChildScrollView(),
        BackGround(),
        MainContent(),
      ],
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff50c2dd),
      child: Center(
          child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.greenAccent, shape: const StadiumBorder()),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: Text(
            "Bienvenido",
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),
        onPressed: () => {},
      )),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text("11º", style: textStyle),
          const Text("Miércoles", style: textStyle),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_double_arrow_down,
            size: 150,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class BackGround extends StatelessWidget {
  const BackGround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff50c2dd),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage("assets/scroll-1.png")));
  }
}
