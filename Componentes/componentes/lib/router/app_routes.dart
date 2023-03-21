import 'package:componentes/router/menu_option.dart';

import 'package:flutter/material.dart';
import "package:componentes/screens/screens.dart";

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: "listview1",
        nombre: "List View 1",
        screen: const ListView1Screen(),
        icono: Icons.add_chart_rounded),
    MenuOption(
        route: "listview2",
        nombre: "List View 2",
        screen: const ListView2Screen(),
        icono: Icons.airplanemode_inactive_rounded),
    MenuOption(
        route: "card",
        nombre: "card",
        screen: const CardScreen(),
        icono: Icons.add_card),
    MenuOption(
        route: "alert",
        nombre: "alert",
        screen: const AlertScreen(),
        icono: Icons.signal_wifi_statusbar_connected_no_internet_4_rounded),
    MenuOption(
        route: "avatar",
        nombre: "Circle Avatar",
        screen: const AvatarScreen(),
        icono: Icons.android),
    MenuOption(
        route: "animated",
        nombre: "Animated Container",
        screen: const AnimatedScreen(),
        icono: Icons.play_circle_outline_rounded),
    MenuOption(
        route: "inputs",
        nombre: "Text Inputs",
        screen: const InputsScreen(),
        icono: Icons.settings_input_svideo_rounded),
    MenuOption(
        route: "slider",
        nombre: "Slider and Checks",
        screen: const SliderScreen(),
        icono: Icons.add_a_photo_outlined),
    MenuOption(
        route: "listviewbuilder",
        nombre: "Infinite Scrool",
        screen: const ListViewBuilderScreen(),
        icono: Icons.open_in_full_outlined),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen()
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
