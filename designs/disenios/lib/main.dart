import 'package:disenios/screens/screens.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "scroll_screen",
      theme: ThemeData.dark(),
      routes: {
        "basic_design": (_) => const BasicDesignScreen(),
        "scroll_screen": (_) => const ScrollScreen(),
        "home": (_) => const HomeScreen(),
      },
    );
  }
}
